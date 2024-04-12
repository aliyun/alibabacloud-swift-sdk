import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AcceptApproveCommandRequest : Tea.TeaModel {
    public var commandId: String?

    public var instanceId: String?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandId") && dict["CommandId"] != nil {
            self.commandId = dict["CommandId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AcceptApproveCommandResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AcceptApproveCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptApproveCommandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AcceptApproveCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AcceptOperationTicketRequest : Tea.TeaModel {
    public var effectCount: String?

    public var effectEndTime: String?

    public var effectStartTime: String?

    public var instanceId: String?

    public var operationTicketId: String?

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
        if self.effectCount != nil {
            map["EffectCount"] = self.effectCount!
        }
        if self.effectEndTime != nil {
            map["EffectEndTime"] = self.effectEndTime!
        }
        if self.effectStartTime != nil {
            map["EffectStartTime"] = self.effectStartTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.operationTicketId != nil {
            map["OperationTicketId"] = self.operationTicketId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EffectCount") && dict["EffectCount"] != nil {
            self.effectCount = dict["EffectCount"] as! String
        }
        if dict.keys.contains("EffectEndTime") && dict["EffectEndTime"] != nil {
            self.effectEndTime = dict["EffectEndTime"] as! String
        }
        if dict.keys.contains("EffectStartTime") && dict["EffectStartTime"] != nil {
            self.effectStartTime = dict["EffectStartTime"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OperationTicketId") && dict["OperationTicketId"] != nil {
            self.operationTicketId = dict["OperationTicketId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AcceptOperationTicketResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AcceptOperationTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptOperationTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AcceptOperationTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDatabasesToGroupRequest : Tea.TeaModel {
    public var databaseIds: [String]?

    public var hostGroupId: String?

    public var instanceId: String?

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
        if self.databaseIds != nil {
            map["DatabaseIds"] = self.databaseIds!
        }
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseIds") && dict["DatabaseIds"] != nil {
            self.databaseIds = dict["DatabaseIds"] as! [String]
        }
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddDatabasesToGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var databaseId: String?

        public var hostGroupId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AddDatabasesToGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AddDatabasesToGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AddDatabasesToGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AddDatabasesToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDatabasesToGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddDatabasesToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddHostsToGroupRequest : Tea.TeaModel {
    public var hostGroupId: String?

    public var hostIds: String?

    public var instanceId: String?

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
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.hostIds != nil {
            map["HostIds"] = self.hostIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("HostIds") && dict["HostIds"] != nil {
            self.hostIds = dict["HostIds"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddHostsToGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var hostGroupId: String?

        public var hostId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AddHostsToGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AddHostsToGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AddHostsToGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AddHostsToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddHostsToGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddHostsToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUsersToGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public var userIds: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! String
        }
    }
}

public class AddUsersToGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public var userGroupId: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AddUsersToGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AddUsersToGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AddUsersToGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AddUsersToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUsersToGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddUsersToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachDatabaseAccountsToUserRequest : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var databaseAccountIds: [String]?

        public var databaseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountIds != nil {
                map["DatabaseAccountIds"] = self.databaseAccountIds!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountIds") && dict["DatabaseAccountIds"] != nil {
                self.databaseAccountIds = dict["DatabaseAccountIds"] as! [String]
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
        }
    }
    public var databases: [AttachDatabaseAccountsToUserRequest.Databases]?

    public var instanceId: String?

    public var regionId: String?

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
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [AttachDatabaseAccountsToUserRequest.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = AttachDatabaseAccountsToUserRequest.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class AttachDatabaseAccountsToUserResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class DatabaseAccounts : Tea.TeaModel {
            public var code: String?

            public var databaseAccountId: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.databaseAccountId != nil {
                    map["DatabaseAccountId"] = self.databaseAccountId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                    self.databaseAccountId = dict["DatabaseAccountId"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var databaseAccounts: [AttachDatabaseAccountsToUserResponseBody.Results.DatabaseAccounts]?

        public var databaseId: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.databaseAccounts != nil {
                var tmp : [Any] = []
                for k in self.databaseAccounts! {
                    tmp.append(k.toMap())
                }
                map["DatabaseAccounts"] = tmp
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DatabaseAccounts") && dict["DatabaseAccounts"] != nil {
                var tmp : [AttachDatabaseAccountsToUserResponseBody.Results.DatabaseAccounts] = []
                for v in dict["DatabaseAccounts"] as! [Any] {
                    var model = AttachDatabaseAccountsToUserResponseBody.Results.DatabaseAccounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databaseAccounts = tmp
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AttachDatabaseAccountsToUserResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AttachDatabaseAccountsToUserResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AttachDatabaseAccountsToUserResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AttachDatabaseAccountsToUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachDatabaseAccountsToUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachDatabaseAccountsToUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachDatabaseAccountsToUserGroupRequest : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var databaseAccountIds: [String]?

        public var databaseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountIds != nil {
                map["DatabaseAccountIds"] = self.databaseAccountIds!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountIds") && dict["DatabaseAccountIds"] != nil {
                self.databaseAccountIds = dict["DatabaseAccountIds"] as! [String]
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
        }
    }
    public var databases: [AttachDatabaseAccountsToUserGroupRequest.Databases]?

    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [AttachDatabaseAccountsToUserGroupRequest.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = AttachDatabaseAccountsToUserGroupRequest.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class AttachDatabaseAccountsToUserGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class DatabaseAccounts : Tea.TeaModel {
            public var code: String?

            public var databaseAccountId: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.databaseAccountId != nil {
                    map["DatabaseAccountId"] = self.databaseAccountId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                    self.databaseAccountId = dict["DatabaseAccountId"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var databaseAccounts: [AttachDatabaseAccountsToUserGroupResponseBody.Results.DatabaseAccounts]?

        public var databaseId: String?

        public var message: String?

        public var userGroupId: String?

        public override init() {
            super.init()
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
            if self.databaseAccounts != nil {
                var tmp : [Any] = []
                for k in self.databaseAccounts! {
                    tmp.append(k.toMap())
                }
                map["DatabaseAccounts"] = tmp
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DatabaseAccounts") && dict["DatabaseAccounts"] != nil {
                var tmp : [AttachDatabaseAccountsToUserGroupResponseBody.Results.DatabaseAccounts] = []
                for v in dict["DatabaseAccounts"] as! [Any] {
                    var model = AttachDatabaseAccountsToUserGroupResponseBody.Results.DatabaseAccounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databaseAccounts = tmp
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AttachDatabaseAccountsToUserGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AttachDatabaseAccountsToUserGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AttachDatabaseAccountsToUserGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AttachDatabaseAccountsToUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachDatabaseAccountsToUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachDatabaseAccountsToUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachHostAccountsToHostShareKeyRequest : Tea.TeaModel {
    public var hostAccountIds: String?

    public var hostShareKeyId: String?

    public var instanceId: String?

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
        if self.hostAccountIds != nil {
            map["HostAccountIds"] = self.hostAccountIds!
        }
        if self.hostShareKeyId != nil {
            map["HostShareKeyId"] = self.hostShareKeyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountIds") && dict["HostAccountIds"] != nil {
            self.hostAccountIds = dict["HostAccountIds"] as! String
        }
        if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
            self.hostShareKeyId = dict["HostShareKeyId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AttachHostAccountsToHostShareKeyResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var hostAccountId: String?

        public var hostShareKeyId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.hostAccountId != nil {
                map["HostAccountId"] = self.hostAccountId!
            }
            if self.hostShareKeyId != nil {
                map["HostShareKeyId"] = self.hostShareKeyId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                self.hostAccountId = dict["HostAccountId"] as! String
            }
            if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
                self.hostShareKeyId = dict["HostShareKeyId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AttachHostAccountsToHostShareKeyResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AttachHostAccountsToHostShareKeyResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AttachHostAccountsToHostShareKeyResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AttachHostAccountsToHostShareKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachHostAccountsToHostShareKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachHostAccountsToHostShareKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachHostAccountsToUserRequest : Tea.TeaModel {
    public var hosts: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.hosts != nil {
            map["Hosts"] = self.hosts!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            self.hosts = dict["Hosts"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class AttachHostAccountsToUserResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class HostAccounts : Tea.TeaModel {
            public var code: String?

            public var hostAccountId: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.hostAccountId != nil {
                    map["HostAccountId"] = self.hostAccountId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                    self.hostAccountId = dict["HostAccountId"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var hostAccounts: [AttachHostAccountsToUserResponseBody.Results.HostAccounts]?

        public var hostId: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.hostAccounts != nil {
                var tmp : [Any] = []
                for k in self.hostAccounts! {
                    tmp.append(k.toMap())
                }
                map["HostAccounts"] = tmp
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
                var tmp : [AttachHostAccountsToUserResponseBody.Results.HostAccounts] = []
                for v in dict["HostAccounts"] as! [Any] {
                    var model = AttachHostAccountsToUserResponseBody.Results.HostAccounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostAccounts = tmp
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AttachHostAccountsToUserResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AttachHostAccountsToUserResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AttachHostAccountsToUserResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AttachHostAccountsToUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachHostAccountsToUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachHostAccountsToUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachHostAccountsToUserGroupRequest : Tea.TeaModel {
    public var hosts: String?

    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hosts != nil {
            map["Hosts"] = self.hosts!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            self.hosts = dict["Hosts"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class AttachHostAccountsToUserGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class HostAccounts : Tea.TeaModel {
            public var code: String?

            public var hostAccountId: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.hostAccountId != nil {
                    map["HostAccountId"] = self.hostAccountId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                    self.hostAccountId = dict["HostAccountId"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var hostAccounts: [AttachHostAccountsToUserGroupResponseBody.Results.HostAccounts]?

        public var hostId: String?

        public var message: String?

        public var userGroupId: String?

        public override init() {
            super.init()
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
            if self.hostAccounts != nil {
                var tmp : [Any] = []
                for k in self.hostAccounts! {
                    tmp.append(k.toMap())
                }
                map["HostAccounts"] = tmp
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
                var tmp : [AttachHostAccountsToUserGroupResponseBody.Results.HostAccounts] = []
                for v in dict["HostAccounts"] as! [Any] {
                    var model = AttachHostAccountsToUserGroupResponseBody.Results.HostAccounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostAccounts = tmp
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AttachHostAccountsToUserGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AttachHostAccountsToUserGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AttachHostAccountsToUserGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AttachHostAccountsToUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachHostAccountsToUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachHostAccountsToUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachHostGroupAccountsToUserRequest : Tea.TeaModel {
    public var hostGroups: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.hostGroups != nil {
            map["HostGroups"] = self.hostGroups!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            self.hostGroups = dict["HostGroups"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class AttachHostGroupAccountsToUserResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class HostAccountNames : Tea.TeaModel {
            public var code: String?

            public var hostAccountName: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.hostAccountName != nil {
                    map["HostAccountName"] = self.hostAccountName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                    self.hostAccountName = dict["HostAccountName"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var hostAccountNames: [AttachHostGroupAccountsToUserResponseBody.Results.HostAccountNames]?

        public var hostGroupId: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.hostAccountNames != nil {
                var tmp : [Any] = []
                for k in self.hostAccountNames! {
                    tmp.append(k.toMap())
                }
                map["HostAccountNames"] = tmp
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccountNames") && dict["HostAccountNames"] != nil {
                var tmp : [AttachHostGroupAccountsToUserResponseBody.Results.HostAccountNames] = []
                for v in dict["HostAccountNames"] as! [Any] {
                    var model = AttachHostGroupAccountsToUserResponseBody.Results.HostAccountNames()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostAccountNames = tmp
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AttachHostGroupAccountsToUserResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AttachHostGroupAccountsToUserResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AttachHostGroupAccountsToUserResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AttachHostGroupAccountsToUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachHostGroupAccountsToUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachHostGroupAccountsToUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachHostGroupAccountsToUserGroupRequest : Tea.TeaModel {
    public var hostGroups: String?

    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostGroups != nil {
            map["HostGroups"] = self.hostGroups!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            self.hostGroups = dict["HostGroups"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class AttachHostGroupAccountsToUserGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class HostAccountNames : Tea.TeaModel {
            public var code: String?

            public var hostAccountName: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.hostAccountName != nil {
                    map["HostAccountName"] = self.hostAccountName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                    self.hostAccountName = dict["HostAccountName"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var hostAccountNames: [AttachHostGroupAccountsToUserGroupResponseBody.Results.HostAccountNames]?

        public var hostGroupId: String?

        public var message: String?

        public var userGroupId: String?

        public override init() {
            super.init()
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
            if self.hostAccountNames != nil {
                var tmp : [Any] = []
                for k in self.hostAccountNames! {
                    tmp.append(k.toMap())
                }
                map["HostAccountNames"] = tmp
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccountNames") && dict["HostAccountNames"] != nil {
                var tmp : [AttachHostGroupAccountsToUserGroupResponseBody.Results.HostAccountNames] = []
                for v in dict["HostAccountNames"] as! [Any] {
                    var model = AttachHostGroupAccountsToUserGroupResponseBody.Results.HostAccountNames()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostAccountNames = tmp
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [AttachHostGroupAccountsToUserGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [AttachHostGroupAccountsToUserGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = AttachHostGroupAccountsToUserGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class AttachHostGroupAccountsToUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachHostGroupAccountsToUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachHostGroupAccountsToUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigInstanceSecurityGroupsRequest : Tea.TeaModel {
    public var authorizedSecurityGroups: [String]?

    public var instanceId: String?

    public var lang: String?

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
        if self.authorizedSecurityGroups != nil {
            map["AuthorizedSecurityGroups"] = self.authorizedSecurityGroups!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorizedSecurityGroups") && dict["AuthorizedSecurityGroups"] != nil {
            self.authorizedSecurityGroups = dict["AuthorizedSecurityGroups"] as! [String]
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ConfigInstanceSecurityGroupsResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConfigInstanceSecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigInstanceSecurityGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ConfigInstanceSecurityGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigInstanceWhiteListRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var whiteList: [String]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.whiteList != nil {
            map["WhiteList"] = self.whiteList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("WhiteList") && dict["WhiteList"] != nil {
            self.whiteList = dict["WhiteList"] as! [String]
        }
    }
}

public class ConfigInstanceWhiteListResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConfigInstanceWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigInstanceWhiteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ConfigInstanceWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDatabaseRequest : Tea.TeaModel {
    public var activeAddressType: String?

    public var comment: String?

    public var databaseName: String?

    public var databasePort: Int32?

    public var databasePrivateAddress: String?

    public var databasePublicAddress: String?

    public var databaseType: String?

    public var instanceId: String?

    public var networkDomainId: String?

    public var polarDBEndpointType: String?

    public var regionId: String?

    public var source: String?

    public var sourceInstanceId: String?

    public var sourceInstanceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activeAddressType != nil {
            map["ActiveAddressType"] = self.activeAddressType!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.databasePort != nil {
            map["DatabasePort"] = self.databasePort!
        }
        if self.databasePrivateAddress != nil {
            map["DatabasePrivateAddress"] = self.databasePrivateAddress!
        }
        if self.databasePublicAddress != nil {
            map["DatabasePublicAddress"] = self.databasePublicAddress!
        }
        if self.databaseType != nil {
            map["DatabaseType"] = self.databaseType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.polarDBEndpointType != nil {
            map["PolarDBEndpointType"] = self.polarDBEndpointType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceInstanceId != nil {
            map["SourceInstanceId"] = self.sourceInstanceId!
        }
        if self.sourceInstanceRegionId != nil {
            map["SourceInstanceRegionId"] = self.sourceInstanceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
            self.activeAddressType = dict["ActiveAddressType"] as! String
        }
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("DatabasePort") && dict["DatabasePort"] != nil {
            self.databasePort = dict["DatabasePort"] as! Int32
        }
        if dict.keys.contains("DatabasePrivateAddress") && dict["DatabasePrivateAddress"] != nil {
            self.databasePrivateAddress = dict["DatabasePrivateAddress"] as! String
        }
        if dict.keys.contains("DatabasePublicAddress") && dict["DatabasePublicAddress"] != nil {
            self.databasePublicAddress = dict["DatabasePublicAddress"] as! String
        }
        if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
            self.databaseType = dict["DatabaseType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("PolarDBEndpointType") && dict["PolarDBEndpointType"] != nil {
            self.polarDBEndpointType = dict["PolarDBEndpointType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
            self.sourceInstanceId = dict["SourceInstanceId"] as! String
        }
        if dict.keys.contains("SourceInstanceRegionId") && dict["SourceInstanceRegionId"] != nil {
            self.sourceInstanceRegionId = dict["SourceInstanceRegionId"] as! String
        }
    }
}

public class CreateDatabaseResponseBody : Tea.TeaModel {
    public var databaseId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseId != nil {
            map["DatabaseId"] = self.databaseId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
            self.databaseId = dict["DatabaseId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDatabaseAccountRequest : Tea.TeaModel {
    public var databaseAccountName: String?

    public var databaseId: String?

    public var databaseSchema: String?

    public var instanceId: String?

    public var loginAttribute: String?

    public var password: String?

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
        if self.databaseAccountName != nil {
            map["DatabaseAccountName"] = self.databaseAccountName!
        }
        if self.databaseId != nil {
            map["DatabaseId"] = self.databaseId!
        }
        if self.databaseSchema != nil {
            map["DatabaseSchema"] = self.databaseSchema!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.loginAttribute != nil {
            map["LoginAttribute"] = self.loginAttribute!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
            self.databaseAccountName = dict["DatabaseAccountName"] as! String
        }
        if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
            self.databaseId = dict["DatabaseId"] as! String
        }
        if dict.keys.contains("DatabaseSchema") && dict["DatabaseSchema"] != nil {
            self.databaseSchema = dict["DatabaseSchema"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LoginAttribute") && dict["LoginAttribute"] != nil {
            self.loginAttribute = dict["LoginAttribute"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateDatabaseAccountResponseBody : Tea.TeaModel {
    public var databaseAccountId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseAccountId != nil {
            map["DatabaseAccountId"] = self.databaseAccountId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
            self.databaseAccountId = dict["DatabaseAccountId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDatabaseAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatabaseAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDatabaseAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHostRequest : Tea.TeaModel {
    public var activeAddressType: String?

    public var comment: String?

    public var hostName: String?

    public var hostPrivateAddress: String?

    public var hostPublicAddress: String?

    public var instanceId: String?

    public var instanceRegionId: String?

    public var networkDomainId: String?

    public var OSType: String?

    public var regionId: String?

    public var source: String?

    public var sourceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activeAddressType != nil {
            map["ActiveAddressType"] = self.activeAddressType!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.hostPrivateAddress != nil {
            map["HostPrivateAddress"] = self.hostPrivateAddress!
        }
        if self.hostPublicAddress != nil {
            map["HostPublicAddress"] = self.hostPublicAddress!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceRegionId != nil {
            map["InstanceRegionId"] = self.instanceRegionId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.OSType != nil {
            map["OSType"] = self.OSType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceInstanceId != nil {
            map["SourceInstanceId"] = self.sourceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
            self.activeAddressType = dict["ActiveAddressType"] as! String
        }
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("HostName") && dict["HostName"] != nil {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("HostPrivateAddress") && dict["HostPrivateAddress"] != nil {
            self.hostPrivateAddress = dict["HostPrivateAddress"] as! String
        }
        if dict.keys.contains("HostPublicAddress") && dict["HostPublicAddress"] != nil {
            self.hostPublicAddress = dict["HostPublicAddress"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceRegionId") && dict["InstanceRegionId"] != nil {
            self.instanceRegionId = dict["InstanceRegionId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("OSType") && dict["OSType"] != nil {
            self.OSType = dict["OSType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
            self.sourceInstanceId = dict["SourceInstanceId"] as! String
        }
    }
}

public class CreateHostResponseBody : Tea.TeaModel {
    public var hostId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") && dict["HostId"] != nil {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHostAccountRequest : Tea.TeaModel {
    public var hostAccountName: String?

    public var hostId: String?

    public var hostShareKeyId: String?

    public var instanceId: String?

    public var passPhrase: String?

    public var password: String?

    public var privateKey: String?

    public var protocolName: String?

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
        if self.hostAccountName != nil {
            map["HostAccountName"] = self.hostAccountName!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.hostShareKeyId != nil {
            map["HostShareKeyId"] = self.hostShareKeyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.passPhrase != nil {
            map["PassPhrase"] = self.passPhrase!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.protocolName != nil {
            map["ProtocolName"] = self.protocolName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
            self.hostAccountName = dict["HostAccountName"] as! String
        }
        if dict.keys.contains("HostId") && dict["HostId"] != nil {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
            self.hostShareKeyId = dict["HostShareKeyId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PassPhrase") && dict["PassPhrase"] != nil {
            self.passPhrase = dict["PassPhrase"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
            self.protocolName = dict["ProtocolName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateHostAccountResponseBody : Tea.TeaModel {
    public var hostAccountId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAccountId != nil {
            map["HostAccountId"] = self.hostAccountId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
            self.hostAccountId = dict["HostAccountId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateHostAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHostAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateHostAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHostGroupRequest : Tea.TeaModel {
    public var comment: String?

    public var hostGroupName: String?

    public var instanceId: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.hostGroupName != nil {
            map["HostGroupName"] = self.hostGroupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
            self.hostGroupName = dict["HostGroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateHostGroupResponseBody : Tea.TeaModel {
    public var hostGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHostGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHostShareKeyRequest : Tea.TeaModel {
    public var hostShareKeyName: String?

    public var instanceId: String?

    public var passPhrase: String?

    public var privateKey: String?

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
        if self.hostShareKeyName != nil {
            map["HostShareKeyName"] = self.hostShareKeyName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.passPhrase != nil {
            map["PassPhrase"] = self.passPhrase!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostShareKeyName") && dict["HostShareKeyName"] != nil {
            self.hostShareKeyName = dict["HostShareKeyName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PassPhrase") && dict["PassPhrase"] != nil {
            self.passPhrase = dict["PassPhrase"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateHostShareKeyResponseBody : Tea.TeaModel {
    public var hostShareKeyId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostShareKeyId != nil {
            map["HostShareKeyId"] = self.hostShareKeyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
            self.hostShareKeyId = dict["HostShareKeyId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateHostShareKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHostShareKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateHostShareKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNetworkDomainRequest : Tea.TeaModel {
    public class Proxies : Tea.TeaModel {
        public var address: String?

        public var nodeType: String?

        public var password: String?

        public var port: Int32?

        public var proxyType: String?

        public var user: String?

        public override init() {
            super.init()
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
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.proxyType != nil {
                map["ProxyType"] = self.proxyType!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("NodeType") && dict["NodeType"] != nil {
                self.nodeType = dict["NodeType"] as! String
            }
            if dict.keys.contains("Password") && dict["Password"] != nil {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ProxyType") && dict["ProxyType"] != nil {
                self.proxyType = dict["ProxyType"] as! String
            }
            if dict.keys.contains("User") && dict["User"] != nil {
                self.user = dict["User"] as! String
            }
        }
    }
    public var comment: String?

    public var instanceId: String?

    public var networkDomainName: String?

    public var networkDomainType: String?

    public var proxies: [CreateNetworkDomainRequest.Proxies]?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainName != nil {
            map["NetworkDomainName"] = self.networkDomainName!
        }
        if self.networkDomainType != nil {
            map["NetworkDomainType"] = self.networkDomainType!
        }
        if self.proxies != nil {
            var tmp : [Any] = []
            for k in self.proxies! {
                tmp.append(k.toMap())
            }
            map["Proxies"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainName") && dict["NetworkDomainName"] != nil {
            self.networkDomainName = dict["NetworkDomainName"] as! String
        }
        if dict.keys.contains("NetworkDomainType") && dict["NetworkDomainType"] != nil {
            self.networkDomainType = dict["NetworkDomainType"] as! String
        }
        if dict.keys.contains("Proxies") && dict["Proxies"] != nil {
            var tmp : [CreateNetworkDomainRequest.Proxies] = []
            for v in dict["Proxies"] as! [Any] {
                var model = CreateNetworkDomainRequest.Proxies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.proxies = tmp
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateNetworkDomainResponseBody : Tea.TeaModel {
    public var networkDomainId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateNetworkDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNetworkDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateNetworkDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePolicyRequest : Tea.TeaModel {
    public var comment: String?

    public var instanceId: String?

    public var policyName: String?

    public var priority: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreatePolicyResponseBody : Tea.TeaModel {
    public var policyId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreatePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRuleRequest : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var databaseAccountIds: [String]?

        public var databaseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountIds != nil {
                map["DatabaseAccountIds"] = self.databaseAccountIds!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountIds") && dict["DatabaseAccountIds"] != nil {
                self.databaseAccountIds = dict["DatabaseAccountIds"] as! [String]
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
        }
    }
    public class HostGroups : Tea.TeaModel {
        public var hostAccountNames: [String]?

        public var hostGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostAccountNames != nil {
                map["HostAccountNames"] = self.hostAccountNames!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostAccountNames") && dict["HostAccountNames"] != nil {
                self.hostAccountNames = dict["HostAccountNames"] as! [String]
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
        }
    }
    public class Hosts : Tea.TeaModel {
        public var hostAccountIds: [String]?

        public var hostId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostAccountIds != nil {
                map["HostAccountIds"] = self.hostAccountIds!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostAccountIds") && dict["HostAccountIds"] != nil {
                self.hostAccountIds = dict["HostAccountIds"] as! [String]
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
        }
    }
    public var comment: String?

    public var databases: [CreateRuleRequest.Databases]?

    public var effectiveEndTime: Int64?

    public var effectiveStartTime: Int64?

    public var hostGroups: [CreateRuleRequest.HostGroups]?

    public var hosts: [CreateRuleRequest.Hosts]?

    public var instanceId: String?

    public var regionId: String?

    public var ruleName: String?

    public var userGroupIds: [String]?

    public var userIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
        }
        if self.effectiveEndTime != nil {
            map["EffectiveEndTime"] = self.effectiveEndTime!
        }
        if self.effectiveStartTime != nil {
            map["EffectiveStartTime"] = self.effectiveStartTime!
        }
        if self.hostGroups != nil {
            var tmp : [Any] = []
            for k in self.hostGroups! {
                tmp.append(k.toMap())
            }
            map["HostGroups"] = tmp
        }
        if self.hosts != nil {
            var tmp : [Any] = []
            for k in self.hosts! {
                tmp.append(k.toMap())
            }
            map["Hosts"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [CreateRuleRequest.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = CreateRuleRequest.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("EffectiveEndTime") && dict["EffectiveEndTime"] != nil {
            self.effectiveEndTime = dict["EffectiveEndTime"] as! Int64
        }
        if dict.keys.contains("EffectiveStartTime") && dict["EffectiveStartTime"] != nil {
            self.effectiveStartTime = dict["EffectiveStartTime"] as! Int64
        }
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            var tmp : [CreateRuleRequest.HostGroups] = []
            for v in dict["HostGroups"] as! [Any] {
                var model = CreateRuleRequest.HostGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostGroups = tmp
        }
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            var tmp : [CreateRuleRequest.Hosts] = []
            for v in dict["Hosts"] as! [Any] {
                var model = CreateRuleRequest.Hosts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hosts = tmp
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class CreateRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class CreateRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public var comment: String?

    public var displayName: String?

    public var effectiveEndTime: Int64?

    public var effectiveStartTime: Int64?

    public var email: String?

    public var instanceId: String?

    public var language: String?

    public var languageStatus: String?

    public var mobile: String?

    public var mobileCountryCode: String?

    public var needResetPassword: Bool?

    public var password: String?

    public var regionId: String?

    public var source: String?

    public var sourceUserId: String?

    public var twoFactorMethods: String?

    public var twoFactorStatus: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.effectiveEndTime != nil {
            map["EffectiveEndTime"] = self.effectiveEndTime!
        }
        if self.effectiveStartTime != nil {
            map["EffectiveStartTime"] = self.effectiveStartTime!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.languageStatus != nil {
            map["LanguageStatus"] = self.languageStatus!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.mobileCountryCode != nil {
            map["MobileCountryCode"] = self.mobileCountryCode!
        }
        if self.needResetPassword != nil {
            map["NeedResetPassword"] = self.needResetPassword!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceUserId != nil {
            map["SourceUserId"] = self.sourceUserId!
        }
        if self.twoFactorMethods != nil {
            map["TwoFactorMethods"] = self.twoFactorMethods!
        }
        if self.twoFactorStatus != nil {
            map["TwoFactorStatus"] = self.twoFactorStatus!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EffectiveEndTime") && dict["EffectiveEndTime"] != nil {
            self.effectiveEndTime = dict["EffectiveEndTime"] as! Int64
        }
        if dict.keys.contains("EffectiveStartTime") && dict["EffectiveStartTime"] != nil {
            self.effectiveStartTime = dict["EffectiveStartTime"] as! Int64
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("LanguageStatus") && dict["LanguageStatus"] != nil {
            self.languageStatus = dict["LanguageStatus"] as! String
        }
        if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("MobileCountryCode") && dict["MobileCountryCode"] != nil {
            self.mobileCountryCode = dict["MobileCountryCode"] as! String
        }
        if dict.keys.contains("NeedResetPassword") && dict["NeedResetPassword"] != nil {
            self.needResetPassword = dict["NeedResetPassword"] as! Bool
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceUserId") && dict["SourceUserId"] != nil {
            self.sourceUserId = dict["SourceUserId"] as! String
        }
        if dict.keys.contains("TwoFactorMethods") && dict["TwoFactorMethods"] != nil {
            self.twoFactorMethods = dict["TwoFactorMethods"] as! String
        }
        if dict.keys.contains("TwoFactorStatus") && dict["TwoFactorStatus"] != nil {
            self.twoFactorStatus = dict["TwoFactorStatus"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserGroupRequest : Tea.TeaModel {
    public var comment: String?

    public var instanceId: String?

    public var regionId: String?

    public var userGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupName != nil {
            map["UserGroupName"] = self.userGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
            self.userGroupName = dict["UserGroupName"] as! String
        }
    }
}

public class CreateUserGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class CreateUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserPublicKeyRequest : Tea.TeaModel {
    public var comment: String?

    public var instanceId: String?

    public var publicKey: String?

    public var publicKeyName: String?

    public var regionId: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.publicKey != nil {
            map["PublicKey"] = self.publicKey!
        }
        if self.publicKeyName != nil {
            map["PublicKeyName"] = self.publicKeyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
            self.publicKey = dict["PublicKey"] as! String
        }
        if dict.keys.contains("PublicKeyName") && dict["PublicKeyName"] != nil {
            self.publicKeyName = dict["PublicKeyName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CreateUserPublicKeyResponseBody : Tea.TeaModel {
    public var publicKeyId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.publicKeyId != nil {
            map["PublicKeyId"] = self.publicKeyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PublicKeyId") && dict["PublicKeyId"] != nil {
            self.publicKeyId = dict["PublicKeyId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateUserPublicKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserPublicKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateUserPublicKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatabaseRequest : Tea.TeaModel {
    public var databaseId: String?

    public var instanceId: String?

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
        if self.databaseId != nil {
            map["DatabaseId"] = self.databaseId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
            self.databaseId = dict["DatabaseId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDatabaseResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatabaseAccountRequest : Tea.TeaModel {
    public var databaseAccountId: String?

    public var instanceId: String?

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
        if self.databaseAccountId != nil {
            map["DatabaseAccountId"] = self.databaseAccountId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
            self.databaseAccountId = dict["DatabaseAccountId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDatabaseAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteDatabaseAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatabaseAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDatabaseAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHostRequest : Tea.TeaModel {
    public var hostId: String?

    public var instanceId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") && dict["HostId"] != nil {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteHostResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHostAccountRequest : Tea.TeaModel {
    public var hostAccountId: String?

    public var instanceId: String?

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
        if self.hostAccountId != nil {
            map["HostAccountId"] = self.hostAccountId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
            self.hostAccountId = dict["HostAccountId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteHostAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteHostAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHostAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteHostAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHostGroupRequest : Tea.TeaModel {
    public var hostGroupId: String?

    public var instanceId: String?

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
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteHostGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHostGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHostShareKeyRequest : Tea.TeaModel {
    public var hostShareKeyId: String?

    public var instanceId: String?

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
        if self.hostShareKeyId != nil {
            map["HostShareKeyId"] = self.hostShareKeyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
            self.hostShareKeyId = dict["HostShareKeyId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteHostShareKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteHostShareKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHostShareKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteHostShareKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNetworkDomainRequest : Tea.TeaModel {
    public var instanceId: String?

    public var networkDomainId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteNetworkDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteNetworkDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNetworkDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteNetworkDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePolicyRequest : Tea.TeaModel {
    public var instanceId: String?

    public var policyId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeletePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class DeleteRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class DeleteUserGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserPublicKeyRequest : Tea.TeaModel {
    public var instanceId: String?

    public var publicKeyId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.publicKeyId != nil {
            map["PublicKeyId"] = self.publicKeyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PublicKeyId") && dict["PublicKeyId"] != nil {
            self.publicKeyId = dict["PublicKeyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteUserPublicKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteUserPublicKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserPublicKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteUserPublicKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceAttributeRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeInstanceAttributeResponseBody : Tea.TeaModel {
    public class InstanceAttribute : Tea.TeaModel {
        public class Ports : Tea.TeaModel {
            public var customPort: Int32?

            public var standardPort: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customPort != nil {
                    map["CustomPort"] = self.customPort!
                }
                if self.standardPort != nil {
                    map["StandardPort"] = self.standardPort!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CustomPort") && dict["CustomPort"] != nil {
                    self.customPort = dict["CustomPort"] as! Int32
                }
                if dict.keys.contains("StandardPort") && dict["StandardPort"] != nil {
                    self.standardPort = dict["StandardPort"] as! Int32
                }
            }
        }
        public var authorizedSecurityGroups: [String]?

        public var bandwidth: String?

        public var bandwidthPackage: String?

        public var dbOperationModule: String?

        public var description_: String?

        public var eniInstanceId: String?

        public var expireTime: Int64?

        public var instanceId: String?

        public var instanceStatus: String?

        public var internetEndpoint: String?

        public var intranetEndpoint: String?

        public var licenseCode: String?

        public var modifyPasswordModule: String?

        public var networkProxyModule: String?

        public var ports: [DescribeInstanceAttributeResponseBody.InstanceAttribute.Ports]?

        public var privateExportIps: [String]?

        public var privateWhiteList: [String]?

        public var publicExportIps: [String]?

        public var publicIps: [String]?

        public var publicNetworkAccess: Bool?

        public var publicWhiteList: [String]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var securityGroupIds: [String]?

        public var startTime: Int64?

        public var storage: Int64?

        public var vpcId: String?

        public var vswitchId: String?

        public var webTerminalModule: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizedSecurityGroups != nil {
                map["AuthorizedSecurityGroups"] = self.authorizedSecurityGroups!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.bandwidthPackage != nil {
                map["BandwidthPackage"] = self.bandwidthPackage!
            }
            if self.dbOperationModule != nil {
                map["DbOperationModule"] = self.dbOperationModule!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.eniInstanceId != nil {
                map["EniInstanceId"] = self.eniInstanceId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.internetEndpoint != nil {
                map["InternetEndpoint"] = self.internetEndpoint!
            }
            if self.intranetEndpoint != nil {
                map["IntranetEndpoint"] = self.intranetEndpoint!
            }
            if self.licenseCode != nil {
                map["LicenseCode"] = self.licenseCode!
            }
            if self.modifyPasswordModule != nil {
                map["ModifyPasswordModule"] = self.modifyPasswordModule!
            }
            if self.networkProxyModule != nil {
                map["NetworkProxyModule"] = self.networkProxyModule!
            }
            if self.ports != nil {
                var tmp : [Any] = []
                for k in self.ports! {
                    tmp.append(k.toMap())
                }
                map["Ports"] = tmp
            }
            if self.privateExportIps != nil {
                map["PrivateExportIps"] = self.privateExportIps!
            }
            if self.privateWhiteList != nil {
                map["PrivateWhiteList"] = self.privateWhiteList!
            }
            if self.publicExportIps != nil {
                map["PublicExportIps"] = self.publicExportIps!
            }
            if self.publicIps != nil {
                map["PublicIps"] = self.publicIps!
            }
            if self.publicNetworkAccess != nil {
                map["PublicNetworkAccess"] = self.publicNetworkAccess!
            }
            if self.publicWhiteList != nil {
                map["PublicWhiteList"] = self.publicWhiteList!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.storage != nil {
                map["Storage"] = self.storage!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            if self.webTerminalModule != nil {
                map["WebTerminalModule"] = self.webTerminalModule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizedSecurityGroups") && dict["AuthorizedSecurityGroups"] != nil {
                self.authorizedSecurityGroups = dict["AuthorizedSecurityGroups"] as! [String]
            }
            if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
                self.bandwidth = dict["Bandwidth"] as! String
            }
            if dict.keys.contains("BandwidthPackage") && dict["BandwidthPackage"] != nil {
                self.bandwidthPackage = dict["BandwidthPackage"] as! String
            }
            if dict.keys.contains("DbOperationModule") && dict["DbOperationModule"] != nil {
                self.dbOperationModule = dict["DbOperationModule"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EniInstanceId") && dict["EniInstanceId"] != nil {
                self.eniInstanceId = dict["EniInstanceId"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("InternetEndpoint") && dict["InternetEndpoint"] != nil {
                self.internetEndpoint = dict["InternetEndpoint"] as! String
            }
            if dict.keys.contains("IntranetEndpoint") && dict["IntranetEndpoint"] != nil {
                self.intranetEndpoint = dict["IntranetEndpoint"] as! String
            }
            if dict.keys.contains("LicenseCode") && dict["LicenseCode"] != nil {
                self.licenseCode = dict["LicenseCode"] as! String
            }
            if dict.keys.contains("ModifyPasswordModule") && dict["ModifyPasswordModule"] != nil {
                self.modifyPasswordModule = dict["ModifyPasswordModule"] as! String
            }
            if dict.keys.contains("NetworkProxyModule") && dict["NetworkProxyModule"] != nil {
                self.networkProxyModule = dict["NetworkProxyModule"] as! String
            }
            if dict.keys.contains("Ports") && dict["Ports"] != nil {
                var tmp : [DescribeInstanceAttributeResponseBody.InstanceAttribute.Ports] = []
                for v in dict["Ports"] as! [Any] {
                    var model = DescribeInstanceAttributeResponseBody.InstanceAttribute.Ports()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ports = tmp
            }
            if dict.keys.contains("PrivateExportIps") && dict["PrivateExportIps"] != nil {
                self.privateExportIps = dict["PrivateExportIps"] as! [String]
            }
            if dict.keys.contains("PrivateWhiteList") && dict["PrivateWhiteList"] != nil {
                self.privateWhiteList = dict["PrivateWhiteList"] as! [String]
            }
            if dict.keys.contains("PublicExportIps") && dict["PublicExportIps"] != nil {
                self.publicExportIps = dict["PublicExportIps"] as! [String]
            }
            if dict.keys.contains("PublicIps") && dict["PublicIps"] != nil {
                self.publicIps = dict["PublicIps"] as! [String]
            }
            if dict.keys.contains("PublicNetworkAccess") && dict["PublicNetworkAccess"] != nil {
                self.publicNetworkAccess = dict["PublicNetworkAccess"] as! Bool
            }
            if dict.keys.contains("PublicWhiteList") && dict["PublicWhiteList"] != nil {
                self.publicWhiteList = dict["PublicWhiteList"] as! [String]
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
                self.securityGroupIds = dict["SecurityGroupIds"] as! [String]
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Storage") && dict["Storage"] != nil {
                self.storage = dict["Storage"] as! Int64
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
                self.vswitchId = dict["VswitchId"] as! String
            }
            if dict.keys.contains("WebTerminalModule") && dict["WebTerminalModule"] != nil {
                self.webTerminalModule = dict["WebTerminalModule"] as! String
            }
        }
    }
    public var instanceAttribute: DescribeInstanceAttributeResponseBody.InstanceAttribute?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceAttribute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceAttribute != nil {
            map["InstanceAttribute"] = self.instanceAttribute?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceAttribute") && dict["InstanceAttribute"] != nil {
            var model = DescribeInstanceAttributeResponseBody.InstanceAttribute()
            model.fromMap(dict["InstanceAttribute"] as! [String: Any])
            self.instanceAttribute = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeInstanceAttributeResponseBody()
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
    public var instanceId: [String]?

    public var instanceStatus: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
            self.instanceStatus = dict["InstanceStatus"] as! String
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
        public var description_: String?

        public var expireTime: Int64?

        public var imageVersion: String?

        public var instanceId: String?

        public var instanceStatus: String?

        public var internetEndpoint: String?

        public var intranetEndpoint: String?

        public var legacy: Bool?

        public var licenseCode: String?

        public var planCode: String?

        public var publicNetworkAccess: Bool?

        public var regionId: String?

        public var resourceGroupId: String?

        public var startTime: Int64?

        public var vpcId: String?

        public var vswitchId: String?

        public override init() {
            super.init()
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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.imageVersion != nil {
                map["ImageVersion"] = self.imageVersion!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.internetEndpoint != nil {
                map["InternetEndpoint"] = self.internetEndpoint!
            }
            if self.intranetEndpoint != nil {
                map["IntranetEndpoint"] = self.intranetEndpoint!
            }
            if self.legacy != nil {
                map["Legacy"] = self.legacy!
            }
            if self.licenseCode != nil {
                map["LicenseCode"] = self.licenseCode!
            }
            if self.planCode != nil {
                map["PlanCode"] = self.planCode!
            }
            if self.publicNetworkAccess != nil {
                map["PublicNetworkAccess"] = self.publicNetworkAccess!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("ImageVersion") && dict["ImageVersion"] != nil {
                self.imageVersion = dict["ImageVersion"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceStatus") && dict["InstanceStatus"] != nil {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("InternetEndpoint") && dict["InternetEndpoint"] != nil {
                self.internetEndpoint = dict["InternetEndpoint"] as! String
            }
            if dict.keys.contains("IntranetEndpoint") && dict["IntranetEndpoint"] != nil {
                self.intranetEndpoint = dict["IntranetEndpoint"] as! String
            }
            if dict.keys.contains("Legacy") && dict["Legacy"] != nil {
                self.legacy = dict["Legacy"] as! Bool
            }
            if dict.keys.contains("LicenseCode") && dict["LicenseCode"] != nil {
                self.licenseCode = dict["LicenseCode"] as! String
            }
            if dict.keys.contains("PlanCode") && dict["PlanCode"] != nil {
                self.planCode = dict["PlanCode"] as! String
            }
            if dict.keys.contains("PublicNetworkAccess") && dict["PublicNetworkAccess"] != nil {
                self.publicNetworkAccess = dict["PublicNetworkAccess"] as! Bool
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
                self.vswitchId = dict["VswitchId"] as! String
            }
        }
    }
    public var instances: [DescribeInstancesResponseBody.Instances]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
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
            var tmp : [DescribeInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = DescribeInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
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

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
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
    public var regions: [DescribeRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = DescribeRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
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

public class DetachDatabaseAccountsFromUserRequest : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var databaseAccountIds: [String]?

        public var databaseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountIds != nil {
                map["DatabaseAccountIds"] = self.databaseAccountIds!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountIds") && dict["DatabaseAccountIds"] != nil {
                self.databaseAccountIds = dict["DatabaseAccountIds"] as! [String]
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
        }
    }
    public var databases: [DetachDatabaseAccountsFromUserRequest.Databases]?

    public var instanceId: String?

    public var regionId: String?

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
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [DetachDatabaseAccountsFromUserRequest.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = DetachDatabaseAccountsFromUserRequest.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DetachDatabaseAccountsFromUserResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class DatabaseAccounts : Tea.TeaModel {
            public var code: String?

            public var databaseAccountId: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.databaseAccountId != nil {
                    map["DatabaseAccountId"] = self.databaseAccountId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                    self.databaseAccountId = dict["DatabaseAccountId"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var databaseAccounts: [DetachDatabaseAccountsFromUserResponseBody.Results.DatabaseAccounts]?

        public var databaseId: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.databaseAccounts != nil {
                var tmp : [Any] = []
                for k in self.databaseAccounts! {
                    tmp.append(k.toMap())
                }
                map["DatabaseAccounts"] = tmp
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DatabaseAccounts") && dict["DatabaseAccounts"] != nil {
                var tmp : [DetachDatabaseAccountsFromUserResponseBody.Results.DatabaseAccounts] = []
                for v in dict["DatabaseAccounts"] as! [Any] {
                    var model = DetachDatabaseAccountsFromUserResponseBody.Results.DatabaseAccounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databaseAccounts = tmp
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [DetachDatabaseAccountsFromUserResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [DetachDatabaseAccountsFromUserResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = DetachDatabaseAccountsFromUserResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class DetachDatabaseAccountsFromUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachDatabaseAccountsFromUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachDatabaseAccountsFromUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachDatabaseAccountsFromUserGroupRequest : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var databaseAccountIds: [String]?

        public var databaseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountIds != nil {
                map["DatabaseAccountIds"] = self.databaseAccountIds!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountIds") && dict["DatabaseAccountIds"] != nil {
                self.databaseAccountIds = dict["DatabaseAccountIds"] as! [String]
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
        }
    }
    public var databases: [DetachDatabaseAccountsFromUserGroupRequest.Databases]?

    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [DetachDatabaseAccountsFromUserGroupRequest.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = DetachDatabaseAccountsFromUserGroupRequest.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class DetachDatabaseAccountsFromUserGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class DatabaseAccounts : Tea.TeaModel {
            public var code: String?

            public var databaseAccountId: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.databaseAccountId != nil {
                    map["DatabaseAccountId"] = self.databaseAccountId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                    self.databaseAccountId = dict["DatabaseAccountId"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var databaseAccounts: [DetachDatabaseAccountsFromUserGroupResponseBody.Results.DatabaseAccounts]?

        public var databaseId: String?

        public var message: String?

        public var userGroupId: String?

        public override init() {
            super.init()
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
            if self.databaseAccounts != nil {
                var tmp : [Any] = []
                for k in self.databaseAccounts! {
                    tmp.append(k.toMap())
                }
                map["DatabaseAccounts"] = tmp
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DatabaseAccounts") && dict["DatabaseAccounts"] != nil {
                var tmp : [DetachDatabaseAccountsFromUserGroupResponseBody.Results.DatabaseAccounts] = []
                for v in dict["DatabaseAccounts"] as! [Any] {
                    var model = DetachDatabaseAccountsFromUserGroupResponseBody.Results.DatabaseAccounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databaseAccounts = tmp
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [DetachDatabaseAccountsFromUserGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [DetachDatabaseAccountsFromUserGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = DetachDatabaseAccountsFromUserGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class DetachDatabaseAccountsFromUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachDatabaseAccountsFromUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachDatabaseAccountsFromUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachHostAccountsFromHostShareKeyRequest : Tea.TeaModel {
    public var hostAccountIds: String?

    public var hostShareKeyId: String?

    public var instanceId: String?

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
        if self.hostAccountIds != nil {
            map["HostAccountIds"] = self.hostAccountIds!
        }
        if self.hostShareKeyId != nil {
            map["HostShareKeyId"] = self.hostShareKeyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountIds") && dict["HostAccountIds"] != nil {
            self.hostAccountIds = dict["HostAccountIds"] as! String
        }
        if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
            self.hostShareKeyId = dict["HostShareKeyId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DetachHostAccountsFromHostShareKeyResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var hostAccountId: String?

        public var hostShareKeyId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.hostAccountId != nil {
                map["HostAccountId"] = self.hostAccountId!
            }
            if self.hostShareKeyId != nil {
                map["HostShareKeyId"] = self.hostShareKeyId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                self.hostAccountId = dict["HostAccountId"] as! String
            }
            if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
                self.hostShareKeyId = dict["HostShareKeyId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [DetachHostAccountsFromHostShareKeyResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [DetachHostAccountsFromHostShareKeyResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = DetachHostAccountsFromHostShareKeyResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class DetachHostAccountsFromHostShareKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachHostAccountsFromHostShareKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachHostAccountsFromHostShareKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachHostAccountsFromUserRequest : Tea.TeaModel {
    public var hosts: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.hosts != nil {
            map["Hosts"] = self.hosts!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            self.hosts = dict["Hosts"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DetachHostAccountsFromUserResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class HostAccounts : Tea.TeaModel {
            public var code: String?

            public var hostAccountId: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.hostAccountId != nil {
                    map["HostAccountId"] = self.hostAccountId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                    self.hostAccountId = dict["HostAccountId"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var hostAccounts: [DetachHostAccountsFromUserResponseBody.Results.HostAccounts]?

        public var hostId: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.hostAccounts != nil {
                var tmp : [Any] = []
                for k in self.hostAccounts! {
                    tmp.append(k.toMap())
                }
                map["HostAccounts"] = tmp
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
                var tmp : [DetachHostAccountsFromUserResponseBody.Results.HostAccounts] = []
                for v in dict["HostAccounts"] as! [Any] {
                    var model = DetachHostAccountsFromUserResponseBody.Results.HostAccounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostAccounts = tmp
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [DetachHostAccountsFromUserResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [DetachHostAccountsFromUserResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = DetachHostAccountsFromUserResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class DetachHostAccountsFromUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachHostAccountsFromUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachHostAccountsFromUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachHostAccountsFromUserGroupRequest : Tea.TeaModel {
    public var hosts: String?

    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hosts != nil {
            map["Hosts"] = self.hosts!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            self.hosts = dict["Hosts"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class DetachHostAccountsFromUserGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class HostAccounts : Tea.TeaModel {
            public var code: String?

            public var hostAccountId: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.hostAccountId != nil {
                    map["HostAccountId"] = self.hostAccountId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                    self.hostAccountId = dict["HostAccountId"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var hostAccounts: [DetachHostAccountsFromUserGroupResponseBody.Results.HostAccounts]?

        public var hostId: String?

        public var message: String?

        public var userGroupId: String?

        public override init() {
            super.init()
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
            if self.hostAccounts != nil {
                var tmp : [Any] = []
                for k in self.hostAccounts! {
                    tmp.append(k.toMap())
                }
                map["HostAccounts"] = tmp
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
                var tmp : [DetachHostAccountsFromUserGroupResponseBody.Results.HostAccounts] = []
                for v in dict["HostAccounts"] as! [Any] {
                    var model = DetachHostAccountsFromUserGroupResponseBody.Results.HostAccounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostAccounts = tmp
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [DetachHostAccountsFromUserGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [DetachHostAccountsFromUserGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = DetachHostAccountsFromUserGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class DetachHostAccountsFromUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachHostAccountsFromUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachHostAccountsFromUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachHostGroupAccountsFromUserRequest : Tea.TeaModel {
    public var hostGroups: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.hostGroups != nil {
            map["HostGroups"] = self.hostGroups!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            self.hostGroups = dict["HostGroups"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DetachHostGroupAccountsFromUserResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class HostAccountNames : Tea.TeaModel {
            public var code: String?

            public var hostAccountName: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.hostAccountName != nil {
                    map["HostAccountName"] = self.hostAccountName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                    self.hostAccountName = dict["HostAccountName"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var hostAccountNames: [DetachHostGroupAccountsFromUserResponseBody.Results.HostAccountNames]?

        public var hostGroupId: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.hostAccountNames != nil {
                var tmp : [Any] = []
                for k in self.hostAccountNames! {
                    tmp.append(k.toMap())
                }
                map["HostAccountNames"] = tmp
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccountNames") && dict["HostAccountNames"] != nil {
                var tmp : [DetachHostGroupAccountsFromUserResponseBody.Results.HostAccountNames] = []
                for v in dict["HostAccountNames"] as! [Any] {
                    var model = DetachHostGroupAccountsFromUserResponseBody.Results.HostAccountNames()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostAccountNames = tmp
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [DetachHostGroupAccountsFromUserResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [DetachHostGroupAccountsFromUserResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = DetachHostGroupAccountsFromUserResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class DetachHostGroupAccountsFromUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachHostGroupAccountsFromUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachHostGroupAccountsFromUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachHostGroupAccountsFromUserGroupRequest : Tea.TeaModel {
    public var hostGroups: String?

    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostGroups != nil {
            map["HostGroups"] = self.hostGroups!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            self.hostGroups = dict["HostGroups"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class DetachHostGroupAccountsFromUserGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class HostAccountNames : Tea.TeaModel {
            public var code: String?

            public var hostAccountName: String?

            public var message: String?

            public override init() {
                super.init()
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
                if self.hostAccountName != nil {
                    map["HostAccountName"] = self.hostAccountName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                    self.hostAccountName = dict["HostAccountName"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var code: String?

        public var hostAccountNames: [DetachHostGroupAccountsFromUserGroupResponseBody.Results.HostAccountNames]?

        public var hostGroupId: String?

        public var message: String?

        public var userGroupId: String?

        public override init() {
            super.init()
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
            if self.hostAccountNames != nil {
                var tmp : [Any] = []
                for k in self.hostAccountNames! {
                    tmp.append(k.toMap())
                }
                map["HostAccountNames"] = tmp
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostAccountNames") && dict["HostAccountNames"] != nil {
                var tmp : [DetachHostGroupAccountsFromUserGroupResponseBody.Results.HostAccountNames] = []
                for v in dict["HostAccountNames"] as! [Any] {
                    var model = DetachHostGroupAccountsFromUserGroupResponseBody.Results.HostAccountNames()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostAccountNames = tmp
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [DetachHostGroupAccountsFromUserGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [DetachHostGroupAccountsFromUserGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = DetachHostGroupAccountsFromUserGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class DetachHostGroupAccountsFromUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachHostGroupAccountsFromUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachHostGroupAccountsFromUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableInstancePublicAccessRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DisableInstancePublicAccessResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisableInstancePublicAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableInstancePublicAccessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableInstancePublicAccessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class DisableRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableInstancePublicAccessRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class EnableInstancePublicAccessResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EnableInstancePublicAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableInstancePublicAccessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableInstancePublicAccessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class EnableRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateAssetOperationTokenRequest : Tea.TeaModel {
    public var assetAccountId: String?

    public var assetAccountName: String?

    public var assetAccountPassword: String?

    public var assetAccountProtocolName: String?

    public var assetId: String?

    public var assetType: String?

    public var instanceId: String?

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
        if self.assetAccountId != nil {
            map["AssetAccountId"] = self.assetAccountId!
        }
        if self.assetAccountName != nil {
            map["AssetAccountName"] = self.assetAccountName!
        }
        if self.assetAccountPassword != nil {
            map["AssetAccountPassword"] = self.assetAccountPassword!
        }
        if self.assetAccountProtocolName != nil {
            map["AssetAccountProtocolName"] = self.assetAccountProtocolName!
        }
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
        }
        if self.assetType != nil {
            map["AssetType"] = self.assetType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetAccountId") && dict["AssetAccountId"] != nil {
            self.assetAccountId = dict["AssetAccountId"] as! String
        }
        if dict.keys.contains("AssetAccountName") && dict["AssetAccountName"] != nil {
            self.assetAccountName = dict["AssetAccountName"] as! String
        }
        if dict.keys.contains("AssetAccountPassword") && dict["AssetAccountPassword"] != nil {
            self.assetAccountPassword = dict["AssetAccountPassword"] as! String
        }
        if dict.keys.contains("AssetAccountProtocolName") && dict["AssetAccountProtocolName"] != nil {
            self.assetAccountProtocolName = dict["AssetAccountProtocolName"] as! String
        }
        if dict.keys.contains("AssetId") && dict["AssetId"] != nil {
            self.assetId = dict["AssetId"] as! String
        }
        if dict.keys.contains("AssetType") && dict["AssetType"] != nil {
            self.assetType = dict["AssetType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GenerateAssetOperationTokenResponseBody : Tea.TeaModel {
    public class AssetOperationToken : Tea.TeaModel {
        public var countLeft: Int64?

        public var expireTime: Int64?

        public var hasCountLimit: Bool?

        public var maxRenewCount: Int64?

        public var renewCount: Int64?

        public var token: String?

        public var tokenId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.countLeft != nil {
                map["CountLeft"] = self.countLeft!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.hasCountLimit != nil {
                map["HasCountLimit"] = self.hasCountLimit!
            }
            if self.maxRenewCount != nil {
                map["MaxRenewCount"] = self.maxRenewCount!
            }
            if self.renewCount != nil {
                map["RenewCount"] = self.renewCount!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.tokenId != nil {
                map["TokenId"] = self.tokenId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CountLeft") && dict["CountLeft"] != nil {
                self.countLeft = dict["CountLeft"] as! Int64
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("HasCountLimit") && dict["HasCountLimit"] != nil {
                self.hasCountLimit = dict["HasCountLimit"] as! Bool
            }
            if dict.keys.contains("MaxRenewCount") && dict["MaxRenewCount"] != nil {
                self.maxRenewCount = dict["MaxRenewCount"] as! Int64
            }
            if dict.keys.contains("RenewCount") && dict["RenewCount"] != nil {
                self.renewCount = dict["RenewCount"] as! Int64
            }
            if dict.keys.contains("Token") && dict["Token"] != nil {
                self.token = dict["Token"] as! String
            }
            if dict.keys.contains("TokenId") && dict["TokenId"] != nil {
                self.tokenId = dict["TokenId"] as! String
            }
        }
    }
    public var assetOperationToken: GenerateAssetOperationTokenResponseBody.AssetOperationToken?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.assetOperationToken?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assetOperationToken != nil {
            map["AssetOperationToken"] = self.assetOperationToken?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetOperationToken") && dict["AssetOperationToken"] != nil {
            var model = GenerateAssetOperationTokenResponseBody.AssetOperationToken()
            model.fromMap(dict["AssetOperationToken"] as! [String: Any])
            self.assetOperationToken = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateAssetOperationTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAssetOperationTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GenerateAssetOperationTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDatabaseRequest : Tea.TeaModel {
    public var databaseId: String?

    public var instanceId: String?

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
        if self.databaseId != nil {
            map["DatabaseId"] = self.databaseId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
            self.databaseId = dict["DatabaseId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetDatabaseResponseBody : Tea.TeaModel {
    public class Database : Tea.TeaModel {
        public var activeAddressType: String?

        public var comment: String?

        public var databaseId: String?

        public var databaseName: String?

        public var databasePort: Int64?

        public var databasePrivateAddress: String?

        public var databasePublicAddress: String?

        public var databaseType: String?

        public var networkDomainId: String?

        public var source: String?

        public var sourceInstanceId: String?

        public var sourceInstanceRegionId: String?

        public var sourceInstanceState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.databasePort != nil {
                map["DatabasePort"] = self.databasePort!
            }
            if self.databasePrivateAddress != nil {
                map["DatabasePrivateAddress"] = self.databasePrivateAddress!
            }
            if self.databasePublicAddress != nil {
                map["DatabasePublicAddress"] = self.databasePublicAddress!
            }
            if self.databaseType != nil {
                map["DatabaseType"] = self.databaseType!
            }
            if self.networkDomainId != nil {
                map["NetworkDomainId"] = self.networkDomainId!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceInstanceId != nil {
                map["SourceInstanceId"] = self.sourceInstanceId!
            }
            if self.sourceInstanceRegionId != nil {
                map["SourceInstanceRegionId"] = self.sourceInstanceRegionId!
            }
            if self.sourceInstanceState != nil {
                map["SourceInstanceState"] = self.sourceInstanceState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("DatabasePort") && dict["DatabasePort"] != nil {
                self.databasePort = dict["DatabasePort"] as! Int64
            }
            if dict.keys.contains("DatabasePrivateAddress") && dict["DatabasePrivateAddress"] != nil {
                self.databasePrivateAddress = dict["DatabasePrivateAddress"] as! String
            }
            if dict.keys.contains("DatabasePublicAddress") && dict["DatabasePublicAddress"] != nil {
                self.databasePublicAddress = dict["DatabasePublicAddress"] as! String
            }
            if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
                self.databaseType = dict["DatabaseType"] as! String
            }
            if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
                self.networkDomainId = dict["NetworkDomainId"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
                self.sourceInstanceId = dict["SourceInstanceId"] as! String
            }
            if dict.keys.contains("SourceInstanceRegionId") && dict["SourceInstanceRegionId"] != nil {
                self.sourceInstanceRegionId = dict["SourceInstanceRegionId"] as! String
            }
            if dict.keys.contains("SourceInstanceState") && dict["SourceInstanceState"] != nil {
                self.sourceInstanceState = dict["SourceInstanceState"] as! String
            }
        }
    }
    public var database: GetDatabaseResponseBody.Database?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.database?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.database != nil {
            map["Database"] = self.database?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Database") && dict["Database"] != nil {
            var model = GetDatabaseResponseBody.Database()
            model.fromMap(dict["Database"] as! [String: Any])
            self.database = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDatabaseAccountRequest : Tea.TeaModel {
    public var databaseAccountId: String?

    public var instanceId: String?

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
        if self.databaseAccountId != nil {
            map["DatabaseAccountId"] = self.databaseAccountId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
            self.databaseAccountId = dict["DatabaseAccountId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetDatabaseAccountResponseBody : Tea.TeaModel {
    public class DatabaseAccount : Tea.TeaModel {
        public var databaseAccountId: String?

        public var databaseAccountName: String?

        public var databaseSchema: String?

        public var hasPassword: Bool?

        public var loginAttribute: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountId != nil {
                map["DatabaseAccountId"] = self.databaseAccountId!
            }
            if self.databaseAccountName != nil {
                map["DatabaseAccountName"] = self.databaseAccountName!
            }
            if self.databaseSchema != nil {
                map["DatabaseSchema"] = self.databaseSchema!
            }
            if self.hasPassword != nil {
                map["HasPassword"] = self.hasPassword!
            }
            if self.loginAttribute != nil {
                map["LoginAttribute"] = self.loginAttribute!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                self.databaseAccountId = dict["DatabaseAccountId"] as! String
            }
            if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
                self.databaseAccountName = dict["DatabaseAccountName"] as! String
            }
            if dict.keys.contains("DatabaseSchema") && dict["DatabaseSchema"] != nil {
                self.databaseSchema = dict["DatabaseSchema"] as! String
            }
            if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                self.hasPassword = dict["HasPassword"] as! Bool
            }
            if dict.keys.contains("LoginAttribute") && dict["LoginAttribute"] != nil {
                self.loginAttribute = dict["LoginAttribute"] as! String
            }
        }
    }
    public var databaseAccount: GetDatabaseAccountResponseBody.DatabaseAccount?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.databaseAccount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseAccount != nil {
            map["DatabaseAccount"] = self.databaseAccount?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccount") && dict["DatabaseAccount"] != nil {
            var model = GetDatabaseAccountResponseBody.DatabaseAccount()
            model.fromMap(dict["DatabaseAccount"] as! [String: Any])
            self.databaseAccount = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDatabaseAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatabaseAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDatabaseAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHostRequest : Tea.TeaModel {
    public var hostId: String?

    public var instanceId: String?

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
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostId") && dict["HostId"] != nil {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetHostResponseBody : Tea.TeaModel {
    public class Host : Tea.TeaModel {
        public class Protocols : Tea.TeaModel {
            public var hostFingerPrint: String?

            public var port: Int32?

            public var protocolName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostFingerPrint != nil {
                    map["HostFingerPrint"] = self.hostFingerPrint!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocolName != nil {
                    map["ProtocolName"] = self.protocolName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HostFingerPrint") && dict["HostFingerPrint"] != nil {
                    self.hostFingerPrint = dict["HostFingerPrint"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                    self.protocolName = dict["ProtocolName"] as! String
                }
            }
        }
        public var activeAddressType: String?

        public var comment: String?

        public var hostId: String?

        public var hostName: String?

        public var hostPrivateAddress: String?

        public var hostPublicAddress: String?

        public var networkDomainId: String?

        public var OSType: String?

        public var protocols: [GetHostResponseBody.Host.Protocols]?

        public var source: String?

        public var sourceInstanceId: String?

        public var sourceInstanceState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.hostPrivateAddress != nil {
                map["HostPrivateAddress"] = self.hostPrivateAddress!
            }
            if self.hostPublicAddress != nil {
                map["HostPublicAddress"] = self.hostPublicAddress!
            }
            if self.networkDomainId != nil {
                map["NetworkDomainId"] = self.networkDomainId!
            }
            if self.OSType != nil {
                map["OSType"] = self.OSType!
            }
            if self.protocols != nil {
                var tmp : [Any] = []
                for k in self.protocols! {
                    tmp.append(k.toMap())
                }
                map["Protocols"] = tmp
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceInstanceId != nil {
                map["SourceInstanceId"] = self.sourceInstanceId!
            }
            if self.sourceInstanceState != nil {
                map["SourceInstanceState"] = self.sourceInstanceState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("HostName") && dict["HostName"] != nil {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("HostPrivateAddress") && dict["HostPrivateAddress"] != nil {
                self.hostPrivateAddress = dict["HostPrivateAddress"] as! String
            }
            if dict.keys.contains("HostPublicAddress") && dict["HostPublicAddress"] != nil {
                self.hostPublicAddress = dict["HostPublicAddress"] as! String
            }
            if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
                self.networkDomainId = dict["NetworkDomainId"] as! String
            }
            if dict.keys.contains("OSType") && dict["OSType"] != nil {
                self.OSType = dict["OSType"] as! String
            }
            if dict.keys.contains("Protocols") && dict["Protocols"] != nil {
                var tmp : [GetHostResponseBody.Host.Protocols] = []
                for v in dict["Protocols"] as! [Any] {
                    var model = GetHostResponseBody.Host.Protocols()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.protocols = tmp
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
                self.sourceInstanceId = dict["SourceInstanceId"] as! String
            }
            if dict.keys.contains("SourceInstanceState") && dict["SourceInstanceState"] != nil {
                self.sourceInstanceState = dict["SourceInstanceState"] as! String
            }
        }
    }
    public var host: GetHostResponseBody.Host?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.host?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.host != nil {
            map["Host"] = self.host?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Host") && dict["Host"] != nil {
            var model = GetHostResponseBody.Host()
            model.fromMap(dict["Host"] as! [String: Any])
            self.host = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHostAccountRequest : Tea.TeaModel {
    public var hostAccountId: String?

    public var instanceId: String?

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
        if self.hostAccountId != nil {
            map["HostAccountId"] = self.hostAccountId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
            self.hostAccountId = dict["HostAccountId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetHostAccountResponseBody : Tea.TeaModel {
    public class HostAccount : Tea.TeaModel {
        public var hasPassword: Bool?

        public var hostAccountId: String?

        public var hostAccountName: String?

        public var hostId: String?

        public var hostShareKeyId: String?

        public var hostShareKeyName: String?

        public var privateKeyFingerprint: String?

        public var protocolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasPassword != nil {
                map["HasPassword"] = self.hasPassword!
            }
            if self.hostAccountId != nil {
                map["HostAccountId"] = self.hostAccountId!
            }
            if self.hostAccountName != nil {
                map["HostAccountName"] = self.hostAccountName!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostShareKeyId != nil {
                map["HostShareKeyId"] = self.hostShareKeyId!
            }
            if self.hostShareKeyName != nil {
                map["HostShareKeyName"] = self.hostShareKeyName!
            }
            if self.privateKeyFingerprint != nil {
                map["PrivateKeyFingerprint"] = self.privateKeyFingerprint!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                self.hasPassword = dict["HasPassword"] as! Bool
            }
            if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                self.hostAccountId = dict["HostAccountId"] as! String
            }
            if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                self.hostAccountName = dict["HostAccountName"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
                self.hostShareKeyId = dict["HostShareKeyId"] as! String
            }
            if dict.keys.contains("HostShareKeyName") && dict["HostShareKeyName"] != nil {
                self.hostShareKeyName = dict["HostShareKeyName"] as! String
            }
            if dict.keys.contains("PrivateKeyFingerprint") && dict["PrivateKeyFingerprint"] != nil {
                self.privateKeyFingerprint = dict["PrivateKeyFingerprint"] as! String
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
        }
    }
    public var hostAccount: GetHostAccountResponseBody.HostAccount?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hostAccount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAccount != nil {
            map["HostAccount"] = self.hostAccount?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccount") && dict["HostAccount"] != nil {
            var model = GetHostAccountResponseBody.HostAccount()
            model.fromMap(dict["HostAccount"] as! [String: Any])
            self.hostAccount = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHostAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHostAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetHostAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHostGroupRequest : Tea.TeaModel {
    public var hostGroupId: String?

    public var instanceId: String?

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
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetHostGroupResponseBody : Tea.TeaModel {
    public class HostGroup : Tea.TeaModel {
        public var comment: String?

        public var hostGroupId: String?

        public var hostGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.hostGroupName != nil {
                map["HostGroupName"] = self.hostGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
                self.hostGroupName = dict["HostGroupName"] as! String
            }
        }
    }
    public var hostGroup: GetHostGroupResponseBody.HostGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hostGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostGroup != nil {
            map["HostGroup"] = self.hostGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroup") && dict["HostGroup"] != nil {
            var model = GetHostGroupResponseBody.HostGroup()
            model.fromMap(dict["HostGroup"] as! [String: Any])
            self.hostGroup = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHostGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHostShareKeyRequest : Tea.TeaModel {
    public var hostShareKeyId: String?

    public var instanceId: String?

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
        if self.hostShareKeyId != nil {
            map["HostShareKeyId"] = self.hostShareKeyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
            self.hostShareKeyId = dict["HostShareKeyId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetHostShareKeyResponseBody : Tea.TeaModel {
    public class HostShareKey : Tea.TeaModel {
        public var hostShareKeyId: String?

        public var hostShareKeyName: String?

        public var lastModifyKeyAt: Int64?

        public var privateKeyFingerPrint: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostShareKeyId != nil {
                map["HostShareKeyId"] = self.hostShareKeyId!
            }
            if self.hostShareKeyName != nil {
                map["HostShareKeyName"] = self.hostShareKeyName!
            }
            if self.lastModifyKeyAt != nil {
                map["LastModifyKeyAt"] = self.lastModifyKeyAt!
            }
            if self.privateKeyFingerPrint != nil {
                map["PrivateKeyFingerPrint"] = self.privateKeyFingerPrint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
                self.hostShareKeyId = dict["HostShareKeyId"] as! String
            }
            if dict.keys.contains("HostShareKeyName") && dict["HostShareKeyName"] != nil {
                self.hostShareKeyName = dict["HostShareKeyName"] as! String
            }
            if dict.keys.contains("LastModifyKeyAt") && dict["LastModifyKeyAt"] != nil {
                self.lastModifyKeyAt = dict["LastModifyKeyAt"] as! Int64
            }
            if dict.keys.contains("PrivateKeyFingerPrint") && dict["PrivateKeyFingerPrint"] != nil {
                self.privateKeyFingerPrint = dict["PrivateKeyFingerPrint"] as! String
            }
        }
    }
    public var hostShareKey: GetHostShareKeyResponseBody.HostShareKey?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hostShareKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostShareKey != nil {
            map["HostShareKey"] = self.hostShareKey?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostShareKey") && dict["HostShareKey"] != nil {
            var model = GetHostShareKeyResponseBody.HostShareKey()
            model.fromMap(dict["HostShareKey"] as! [String: Any])
            self.hostShareKey = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHostShareKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHostShareKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetHostShareKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceADAuthServerRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetInstanceADAuthServerResponseBody : Tea.TeaModel {
    public class AD : Tea.TeaModel {
        public var account: String?

        public var baseDN: String?

        public var domain: String?

        public var emailMapping: String?

        public var filter: String?

        public var hasPassword: Bool?

        public var isSSL: Bool?

        public var mobileMapping: String?

        public var nameMapping: String?

        public var port: Int64?

        public var server: String?

        public var standbyServer: String?

        public override init() {
            super.init()
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
                map["Account"] = self.account!
            }
            if self.baseDN != nil {
                map["BaseDN"] = self.baseDN!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.emailMapping != nil {
                map["EmailMapping"] = self.emailMapping!
            }
            if self.filter != nil {
                map["Filter"] = self.filter!
            }
            if self.hasPassword != nil {
                map["HasPassword"] = self.hasPassword!
            }
            if self.isSSL != nil {
                map["IsSSL"] = self.isSSL!
            }
            if self.mobileMapping != nil {
                map["MobileMapping"] = self.mobileMapping!
            }
            if self.nameMapping != nil {
                map["NameMapping"] = self.nameMapping!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.standbyServer != nil {
                map["StandbyServer"] = self.standbyServer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") && dict["Account"] != nil {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("BaseDN") && dict["BaseDN"] != nil {
                self.baseDN = dict["BaseDN"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("EmailMapping") && dict["EmailMapping"] != nil {
                self.emailMapping = dict["EmailMapping"] as! String
            }
            if dict.keys.contains("Filter") && dict["Filter"] != nil {
                self.filter = dict["Filter"] as! String
            }
            if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                self.hasPassword = dict["HasPassword"] as! Bool
            }
            if dict.keys.contains("IsSSL") && dict["IsSSL"] != nil {
                self.isSSL = dict["IsSSL"] as! Bool
            }
            if dict.keys.contains("MobileMapping") && dict["MobileMapping"] != nil {
                self.mobileMapping = dict["MobileMapping"] as! String
            }
            if dict.keys.contains("NameMapping") && dict["NameMapping"] != nil {
                self.nameMapping = dict["NameMapping"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int64
            }
            if dict.keys.contains("Server") && dict["Server"] != nil {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("StandbyServer") && dict["StandbyServer"] != nil {
                self.standbyServer = dict["StandbyServer"] as! String
            }
        }
    }
    public var AD: GetInstanceADAuthServerResponseBody.AD?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.AD?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AD != nil {
            map["AD"] = self.AD?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AD") && dict["AD"] != nil {
            var model = GetInstanceADAuthServerResponseBody.AD()
            model.fromMap(dict["AD"] as! [String: Any])
            self.AD = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetInstanceADAuthServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceADAuthServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInstanceADAuthServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceLDAPAuthServerRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetInstanceLDAPAuthServerResponseBody : Tea.TeaModel {
    public class LDAP : Tea.TeaModel {
        public var account: String?

        public var baseDN: String?

        public var emailMapping: String?

        public var filter: String?

        public var hasPassword: String?

        public var isSSL: Bool?

        public var loginNameMapping: String?

        public var mobileMapping: String?

        public var nameMapping: String?

        public var port: Int64?

        public var server: String?

        public var standbyServer: String?

        public override init() {
            super.init()
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
                map["Account"] = self.account!
            }
            if self.baseDN != nil {
                map["BaseDN"] = self.baseDN!
            }
            if self.emailMapping != nil {
                map["EmailMapping"] = self.emailMapping!
            }
            if self.filter != nil {
                map["Filter"] = self.filter!
            }
            if self.hasPassword != nil {
                map["HasPassword"] = self.hasPassword!
            }
            if self.isSSL != nil {
                map["IsSSL"] = self.isSSL!
            }
            if self.loginNameMapping != nil {
                map["LoginNameMapping"] = self.loginNameMapping!
            }
            if self.mobileMapping != nil {
                map["MobileMapping"] = self.mobileMapping!
            }
            if self.nameMapping != nil {
                map["NameMapping"] = self.nameMapping!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.standbyServer != nil {
                map["StandbyServer"] = self.standbyServer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") && dict["Account"] != nil {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("BaseDN") && dict["BaseDN"] != nil {
                self.baseDN = dict["BaseDN"] as! String
            }
            if dict.keys.contains("EmailMapping") && dict["EmailMapping"] != nil {
                self.emailMapping = dict["EmailMapping"] as! String
            }
            if dict.keys.contains("Filter") && dict["Filter"] != nil {
                self.filter = dict["Filter"] as! String
            }
            if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                self.hasPassword = dict["HasPassword"] as! String
            }
            if dict.keys.contains("IsSSL") && dict["IsSSL"] != nil {
                self.isSSL = dict["IsSSL"] as! Bool
            }
            if dict.keys.contains("LoginNameMapping") && dict["LoginNameMapping"] != nil {
                self.loginNameMapping = dict["LoginNameMapping"] as! String
            }
            if dict.keys.contains("MobileMapping") && dict["MobileMapping"] != nil {
                self.mobileMapping = dict["MobileMapping"] as! String
            }
            if dict.keys.contains("NameMapping") && dict["NameMapping"] != nil {
                self.nameMapping = dict["NameMapping"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int64
            }
            if dict.keys.contains("Server") && dict["Server"] != nil {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("StandbyServer") && dict["StandbyServer"] != nil {
                self.standbyServer = dict["StandbyServer"] as! String
            }
        }
    }
    public var LDAP: GetInstanceLDAPAuthServerResponseBody.LDAP?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.LDAP?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.LDAP != nil {
            map["LDAP"] = self.LDAP?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LDAP") && dict["LDAP"] != nil {
            var model = GetInstanceLDAPAuthServerResponseBody.LDAP()
            model.fromMap(dict["LDAP"] as! [String: Any])
            self.LDAP = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetInstanceLDAPAuthServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceLDAPAuthServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInstanceLDAPAuthServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceTwoFactorRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetInstanceTwoFactorResponseBody : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public var enableTwoFactor: Bool?

        public var skipTwoFactorTime: Int64?

        public var twoFactorMethods: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableTwoFactor != nil {
                map["EnableTwoFactor"] = self.enableTwoFactor!
            }
            if self.skipTwoFactorTime != nil {
                map["SkipTwoFactorTime"] = self.skipTwoFactorTime!
            }
            if self.twoFactorMethods != nil {
                map["TwoFactorMethods"] = self.twoFactorMethods!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableTwoFactor") && dict["EnableTwoFactor"] != nil {
                self.enableTwoFactor = dict["EnableTwoFactor"] as! Bool
            }
            if dict.keys.contains("SkipTwoFactorTime") && dict["SkipTwoFactorTime"] != nil {
                self.skipTwoFactorTime = dict["SkipTwoFactorTime"] as! Int64
            }
            if dict.keys.contains("TwoFactorMethods") && dict["TwoFactorMethods"] != nil {
                self.twoFactorMethods = dict["TwoFactorMethods"] as! [String]
            }
        }
    }
    public var config: GetInstanceTwoFactorResponseBody.Config?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") && dict["Config"] != nil {
            var model = GetInstanceTwoFactorResponseBody.Config()
            model.fromMap(dict["Config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetInstanceTwoFactorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceTwoFactorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInstanceTwoFactorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNetworkDomainRequest : Tea.TeaModel {
    public var instanceId: String?

    public var networkDomainId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetNetworkDomainResponseBody : Tea.TeaModel {
    public class NetworkDomain : Tea.TeaModel {
        public class Proxies : Tea.TeaModel {
            public var address: String?

            public var hasPassword: Bool?

            public var nodeType: String?

            public var port: Int32?

            public var proxyState: String?

            public var proxyStateErrorCode: String?

            public var proxyType: String?

            public var user: String?

            public override init() {
                super.init()
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
                if self.hasPassword != nil {
                    map["HasPassword"] = self.hasPassword!
                }
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.proxyState != nil {
                    map["ProxyState"] = self.proxyState!
                }
                if self.proxyStateErrorCode != nil {
                    map["ProxyStateErrorCode"] = self.proxyStateErrorCode!
                }
                if self.proxyType != nil {
                    map["ProxyType"] = self.proxyType!
                }
                if self.user != nil {
                    map["User"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") && dict["Address"] != nil {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                    self.hasPassword = dict["HasPassword"] as! Bool
                }
                if dict.keys.contains("NodeType") && dict["NodeType"] != nil {
                    self.nodeType = dict["NodeType"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ProxyState") && dict["ProxyState"] != nil {
                    self.proxyState = dict["ProxyState"] as! String
                }
                if dict.keys.contains("ProxyStateErrorCode") && dict["ProxyStateErrorCode"] != nil {
                    self.proxyStateErrorCode = dict["ProxyStateErrorCode"] as! String
                }
                if dict.keys.contains("ProxyType") && dict["ProxyType"] != nil {
                    self.proxyType = dict["ProxyType"] as! String
                }
                if dict.keys.contains("User") && dict["User"] != nil {
                    self.user = dict["User"] as! String
                }
            }
        }
        public var comment: String?

        public var default_: Bool?

        public var networkDomainId: String?

        public var networkDomainName: String?

        public var networkDomainType: String?

        public var proxies: [GetNetworkDomainResponseBody.NetworkDomain.Proxies]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.default_ != nil {
                map["Default"] = self.default_!
            }
            if self.networkDomainId != nil {
                map["NetworkDomainId"] = self.networkDomainId!
            }
            if self.networkDomainName != nil {
                map["NetworkDomainName"] = self.networkDomainName!
            }
            if self.networkDomainType != nil {
                map["NetworkDomainType"] = self.networkDomainType!
            }
            if self.proxies != nil {
                var tmp : [Any] = []
                for k in self.proxies! {
                    tmp.append(k.toMap())
                }
                map["Proxies"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("Default") && dict["Default"] != nil {
                self.default_ = dict["Default"] as! Bool
            }
            if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
                self.networkDomainId = dict["NetworkDomainId"] as! String
            }
            if dict.keys.contains("NetworkDomainName") && dict["NetworkDomainName"] != nil {
                self.networkDomainName = dict["NetworkDomainName"] as! String
            }
            if dict.keys.contains("NetworkDomainType") && dict["NetworkDomainType"] != nil {
                self.networkDomainType = dict["NetworkDomainType"] as! String
            }
            if dict.keys.contains("Proxies") && dict["Proxies"] != nil {
                var tmp : [GetNetworkDomainResponseBody.NetworkDomain.Proxies] = []
                for v in dict["Proxies"] as! [Any] {
                    var model = GetNetworkDomainResponseBody.NetworkDomain.Proxies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.proxies = tmp
            }
        }
    }
    public var networkDomain: GetNetworkDomainResponseBody.NetworkDomain?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkDomain?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkDomain != nil {
            map["NetworkDomain"] = self.networkDomain?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkDomain") && dict["NetworkDomain"] != nil {
            var model = GetNetworkDomainResponseBody.NetworkDomain()
            model.fromMap(dict["NetworkDomain"] as! [String: Any])
            self.networkDomain = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNetworkDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNetworkDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetNetworkDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPolicyRequest : Tea.TeaModel {
    public var instanceId: String?

    public var policyId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetPolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class AccessTimeRangeConfig : Tea.TeaModel {
            public class EffectiveTime : Tea.TeaModel {
                public var days: [String]?

                public var hours: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.days != nil {
                        map["Days"] = self.days!
                    }
                    if self.hours != nil {
                        map["Hours"] = self.hours!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Days") && dict["Days"] != nil {
                        self.days = dict["Days"] as! [String]
                    }
                    if dict.keys.contains("Hours") && dict["Hours"] != nil {
                        self.hours = dict["Hours"] as! [String]
                    }
                }
            }
            public var effectiveTime: [GetPolicyResponseBody.Policy.AccessTimeRangeConfig.EffectiveTime]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.effectiveTime != nil {
                    var tmp : [Any] = []
                    for k in self.effectiveTime! {
                        tmp.append(k.toMap())
                    }
                    map["EffectiveTime"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EffectiveTime") && dict["EffectiveTime"] != nil {
                    var tmp : [GetPolicyResponseBody.Policy.AccessTimeRangeConfig.EffectiveTime] = []
                    for v in dict["EffectiveTime"] as! [Any] {
                        var model = GetPolicyResponseBody.Policy.AccessTimeRangeConfig.EffectiveTime()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.effectiveTime = tmp
                }
            }
        }
        public class ApprovalConfig : Tea.TeaModel {
            public var switchStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.switchStatus != nil {
                    map["SwitchStatus"] = self.switchStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SwitchStatus") && dict["SwitchStatus"] != nil {
                    self.switchStatus = dict["SwitchStatus"] as! String
                }
            }
        }
        public class CommandConfig : Tea.TeaModel {
            public class Approval : Tea.TeaModel {
                public var commands: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.commands != nil {
                        map["Commands"] = self.commands!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Commands") && dict["Commands"] != nil {
                        self.commands = dict["Commands"] as! [String]
                    }
                }
            }
            public class Deny : Tea.TeaModel {
                public var aclType: String?

                public var commands: [String]?

                public override init() {
                    super.init()
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
                    if self.commands != nil {
                        map["Commands"] = self.commands!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AclType") && dict["AclType"] != nil {
                        self.aclType = dict["AclType"] as! String
                    }
                    if dict.keys.contains("Commands") && dict["Commands"] != nil {
                        self.commands = dict["Commands"] as! [String]
                    }
                }
            }
            public var approval: GetPolicyResponseBody.Policy.CommandConfig.Approval?

            public var deny: GetPolicyResponseBody.Policy.CommandConfig.Deny?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.approval?.validate()
                try self.deny?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.approval != nil {
                    map["Approval"] = self.approval?.toMap()
                }
                if self.deny != nil {
                    map["Deny"] = self.deny?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Approval") && dict["Approval"] != nil {
                    var model = GetPolicyResponseBody.Policy.CommandConfig.Approval()
                    model.fromMap(dict["Approval"] as! [String: Any])
                    self.approval = model
                }
                if dict.keys.contains("Deny") && dict["Deny"] != nil {
                    var model = GetPolicyResponseBody.Policy.CommandConfig.Deny()
                    model.fromMap(dict["Deny"] as! [String: Any])
                    self.deny = model
                }
            }
        }
        public class IPAclConfig : Tea.TeaModel {
            public var aclType: String?

            public var IPs: [String]?

            public override init() {
                super.init()
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
                if self.IPs != nil {
                    map["IPs"] = self.IPs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AclType") && dict["AclType"] != nil {
                    self.aclType = dict["AclType"] as! String
                }
                if dict.keys.contains("IPs") && dict["IPs"] != nil {
                    self.IPs = dict["IPs"] as! [String]
                }
            }
        }
        public class ProtocolConfig : Tea.TeaModel {
            public class RDP : Tea.TeaModel {
                public var clipboardDownload: String?

                public var clipboardUpload: String?

                public var diskRedirection: String?

                public var recordKeyboard: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clipboardDownload != nil {
                        map["ClipboardDownload"] = self.clipboardDownload!
                    }
                    if self.clipboardUpload != nil {
                        map["ClipboardUpload"] = self.clipboardUpload!
                    }
                    if self.diskRedirection != nil {
                        map["DiskRedirection"] = self.diskRedirection!
                    }
                    if self.recordKeyboard != nil {
                        map["RecordKeyboard"] = self.recordKeyboard!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClipboardDownload") && dict["ClipboardDownload"] != nil {
                        self.clipboardDownload = dict["ClipboardDownload"] as! String
                    }
                    if dict.keys.contains("ClipboardUpload") && dict["ClipboardUpload"] != nil {
                        self.clipboardUpload = dict["ClipboardUpload"] as! String
                    }
                    if dict.keys.contains("DiskRedirection") && dict["DiskRedirection"] != nil {
                        self.diskRedirection = dict["DiskRedirection"] as! String
                    }
                    if dict.keys.contains("RecordKeyboard") && dict["RecordKeyboard"] != nil {
                        self.recordKeyboard = dict["RecordKeyboard"] as! String
                    }
                }
            }
            public class SSH : Tea.TeaModel {
                public var execCommand: String?

                public var SFTPChannel: String?

                public var SFTPDownloadFile: String?

                public var SFTPMkdir: String?

                public var SFTPRemoveFile: String?

                public var SFTPRenameFile: String?

                public var SFTPRmdir: String?

                public var SFTPUploadFile: String?

                public var SSHChannel: String?

                public var x11Forwarding: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.execCommand != nil {
                        map["ExecCommand"] = self.execCommand!
                    }
                    if self.SFTPChannel != nil {
                        map["SFTPChannel"] = self.SFTPChannel!
                    }
                    if self.SFTPDownloadFile != nil {
                        map["SFTPDownloadFile"] = self.SFTPDownloadFile!
                    }
                    if self.SFTPMkdir != nil {
                        map["SFTPMkdir"] = self.SFTPMkdir!
                    }
                    if self.SFTPRemoveFile != nil {
                        map["SFTPRemoveFile"] = self.SFTPRemoveFile!
                    }
                    if self.SFTPRenameFile != nil {
                        map["SFTPRenameFile"] = self.SFTPRenameFile!
                    }
                    if self.SFTPRmdir != nil {
                        map["SFTPRmdir"] = self.SFTPRmdir!
                    }
                    if self.SFTPUploadFile != nil {
                        map["SFTPUploadFile"] = self.SFTPUploadFile!
                    }
                    if self.SSHChannel != nil {
                        map["SSHChannel"] = self.SSHChannel!
                    }
                    if self.x11Forwarding != nil {
                        map["X11Forwarding"] = self.x11Forwarding!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ExecCommand") && dict["ExecCommand"] != nil {
                        self.execCommand = dict["ExecCommand"] as! String
                    }
                    if dict.keys.contains("SFTPChannel") && dict["SFTPChannel"] != nil {
                        self.SFTPChannel = dict["SFTPChannel"] as! String
                    }
                    if dict.keys.contains("SFTPDownloadFile") && dict["SFTPDownloadFile"] != nil {
                        self.SFTPDownloadFile = dict["SFTPDownloadFile"] as! String
                    }
                    if dict.keys.contains("SFTPMkdir") && dict["SFTPMkdir"] != nil {
                        self.SFTPMkdir = dict["SFTPMkdir"] as! String
                    }
                    if dict.keys.contains("SFTPRemoveFile") && dict["SFTPRemoveFile"] != nil {
                        self.SFTPRemoveFile = dict["SFTPRemoveFile"] as! String
                    }
                    if dict.keys.contains("SFTPRenameFile") && dict["SFTPRenameFile"] != nil {
                        self.SFTPRenameFile = dict["SFTPRenameFile"] as! String
                    }
                    if dict.keys.contains("SFTPRmdir") && dict["SFTPRmdir"] != nil {
                        self.SFTPRmdir = dict["SFTPRmdir"] as! String
                    }
                    if dict.keys.contains("SFTPUploadFile") && dict["SFTPUploadFile"] != nil {
                        self.SFTPUploadFile = dict["SFTPUploadFile"] as! String
                    }
                    if dict.keys.contains("SSHChannel") && dict["SSHChannel"] != nil {
                        self.SSHChannel = dict["SSHChannel"] as! String
                    }
                    if dict.keys.contains("X11Forwarding") && dict["X11Forwarding"] != nil {
                        self.x11Forwarding = dict["X11Forwarding"] as! String
                    }
                }
            }
            public var RDP: GetPolicyResponseBody.Policy.ProtocolConfig.RDP?

            public var SSH: GetPolicyResponseBody.Policy.ProtocolConfig.SSH?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.RDP?.validate()
                try self.SSH?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.RDP != nil {
                    map["RDP"] = self.RDP?.toMap()
                }
                if self.SSH != nil {
                    map["SSH"] = self.SSH?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RDP") && dict["RDP"] != nil {
                    var model = GetPolicyResponseBody.Policy.ProtocolConfig.RDP()
                    model.fromMap(dict["RDP"] as! [String: Any])
                    self.RDP = model
                }
                if dict.keys.contains("SSH") && dict["SSH"] != nil {
                    var model = GetPolicyResponseBody.Policy.ProtocolConfig.SSH()
                    model.fromMap(dict["SSH"] as! [String: Any])
                    self.SSH = model
                }
            }
        }
        public var accessTimeRangeConfig: GetPolicyResponseBody.Policy.AccessTimeRangeConfig?

        public var approvalConfig: GetPolicyResponseBody.Policy.ApprovalConfig?

        public var commandConfig: GetPolicyResponseBody.Policy.CommandConfig?

        public var comment: String?

        public var IPAclConfig: GetPolicyResponseBody.Policy.IPAclConfig?

        public var policyId: String?

        public var policyName: String?

        public var priority: Int64?

        public var protocolConfig: GetPolicyResponseBody.Policy.ProtocolConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accessTimeRangeConfig?.validate()
            try self.approvalConfig?.validate()
            try self.commandConfig?.validate()
            try self.IPAclConfig?.validate()
            try self.protocolConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTimeRangeConfig != nil {
                map["AccessTimeRangeConfig"] = self.accessTimeRangeConfig?.toMap()
            }
            if self.approvalConfig != nil {
                map["ApprovalConfig"] = self.approvalConfig?.toMap()
            }
            if self.commandConfig != nil {
                map["CommandConfig"] = self.commandConfig?.toMap()
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.IPAclConfig != nil {
                map["IPAclConfig"] = self.IPAclConfig?.toMap()
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.protocolConfig != nil {
                map["ProtocolConfig"] = self.protocolConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessTimeRangeConfig") && dict["AccessTimeRangeConfig"] != nil {
                var model = GetPolicyResponseBody.Policy.AccessTimeRangeConfig()
                model.fromMap(dict["AccessTimeRangeConfig"] as! [String: Any])
                self.accessTimeRangeConfig = model
            }
            if dict.keys.contains("ApprovalConfig") && dict["ApprovalConfig"] != nil {
                var model = GetPolicyResponseBody.Policy.ApprovalConfig()
                model.fromMap(dict["ApprovalConfig"] as! [String: Any])
                self.approvalConfig = model
            }
            if dict.keys.contains("CommandConfig") && dict["CommandConfig"] != nil {
                var model = GetPolicyResponseBody.Policy.CommandConfig()
                model.fromMap(dict["CommandConfig"] as! [String: Any])
                self.commandConfig = model
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("IPAclConfig") && dict["IPAclConfig"] != nil {
                var model = GetPolicyResponseBody.Policy.IPAclConfig()
                model.fromMap(dict["IPAclConfig"] as! [String: Any])
                self.IPAclConfig = model
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int64
            }
            if dict.keys.contains("ProtocolConfig") && dict["ProtocolConfig"] != nil {
                var model = GetPolicyResponseBody.Policy.ProtocolConfig()
                model.fromMap(dict["ProtocolConfig"] as! [String: Any])
                self.protocolConfig = model
            }
        }
    }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            var model = GetPolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPolicyAssetScopeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var policyId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetPolicyAssetScopeResponseBody : Tea.TeaModel {
    public class AssetScope : Tea.TeaModel {
        public class Databases : Tea.TeaModel {
            public var accountScopeType: String?

            public var databaseAccountIds: [String]?

            public var databaseId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountScopeType != nil {
                    map["AccountScopeType"] = self.accountScopeType!
                }
                if self.databaseAccountIds != nil {
                    map["DatabaseAccountIds"] = self.databaseAccountIds!
                }
                if self.databaseId != nil {
                    map["DatabaseId"] = self.databaseId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountScopeType") && dict["AccountScopeType"] != nil {
                    self.accountScopeType = dict["AccountScopeType"] as! String
                }
                if dict.keys.contains("DatabaseAccountIds") && dict["DatabaseAccountIds"] != nil {
                    self.databaseAccountIds = dict["DatabaseAccountIds"] as! [String]
                }
                if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                    self.databaseId = dict["DatabaseId"] as! String
                }
            }
        }
        public class HostGroups : Tea.TeaModel {
            public var accountNames: [String]?

            public var accountScopeType: String?

            public var hostGroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountNames != nil {
                    map["AccountNames"] = self.accountNames!
                }
                if self.accountScopeType != nil {
                    map["AccountScopeType"] = self.accountScopeType!
                }
                if self.hostGroupId != nil {
                    map["HostGroupId"] = self.hostGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountNames") && dict["AccountNames"] != nil {
                    self.accountNames = dict["AccountNames"] as! [String]
                }
                if dict.keys.contains("AccountScopeType") && dict["AccountScopeType"] != nil {
                    self.accountScopeType = dict["AccountScopeType"] as! String
                }
                if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                    self.hostGroupId = dict["HostGroupId"] as! String
                }
            }
        }
        public class Hosts : Tea.TeaModel {
            public var accountScopeType: String?

            public var hostAccountIds: [String]?

            public var hostId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountScopeType != nil {
                    map["AccountScopeType"] = self.accountScopeType!
                }
                if self.hostAccountIds != nil {
                    map["HostAccountIds"] = self.hostAccountIds!
                }
                if self.hostId != nil {
                    map["HostId"] = self.hostId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountScopeType") && dict["AccountScopeType"] != nil {
                    self.accountScopeType = dict["AccountScopeType"] as! String
                }
                if dict.keys.contains("HostAccountIds") && dict["HostAccountIds"] != nil {
                    self.hostAccountIds = dict["HostAccountIds"] as! [String]
                }
                if dict.keys.contains("HostId") && dict["HostId"] != nil {
                    self.hostId = dict["HostId"] as! String
                }
            }
        }
        public var databases: [GetPolicyAssetScopeResponseBody.AssetScope.Databases]?

        public var hostGroups: [GetPolicyAssetScopeResponseBody.AssetScope.HostGroups]?

        public var hosts: [GetPolicyAssetScopeResponseBody.AssetScope.Hosts]?

        public var scopeType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databases != nil {
                var tmp : [Any] = []
                for k in self.databases! {
                    tmp.append(k.toMap())
                }
                map["Databases"] = tmp
            }
            if self.hostGroups != nil {
                var tmp : [Any] = []
                for k in self.hostGroups! {
                    tmp.append(k.toMap())
                }
                map["HostGroups"] = tmp
            }
            if self.hosts != nil {
                var tmp : [Any] = []
                for k in self.hosts! {
                    tmp.append(k.toMap())
                }
                map["Hosts"] = tmp
            }
            if self.scopeType != nil {
                map["ScopeType"] = self.scopeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Databases") && dict["Databases"] != nil {
                var tmp : [GetPolicyAssetScopeResponseBody.AssetScope.Databases] = []
                for v in dict["Databases"] as! [Any] {
                    var model = GetPolicyAssetScopeResponseBody.AssetScope.Databases()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databases = tmp
            }
            if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
                var tmp : [GetPolicyAssetScopeResponseBody.AssetScope.HostGroups] = []
                for v in dict["HostGroups"] as! [Any] {
                    var model = GetPolicyAssetScopeResponseBody.AssetScope.HostGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostGroups = tmp
            }
            if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
                var tmp : [GetPolicyAssetScopeResponseBody.AssetScope.Hosts] = []
                for v in dict["Hosts"] as! [Any] {
                    var model = GetPolicyAssetScopeResponseBody.AssetScope.Hosts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hosts = tmp
            }
            if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
                self.scopeType = dict["ScopeType"] as! String
            }
        }
    }
    public var assetScope: GetPolicyAssetScopeResponseBody.AssetScope?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.assetScope?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assetScope != nil {
            map["AssetScope"] = self.assetScope?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetScope") && dict["AssetScope"] != nil {
            var model = GetPolicyAssetScopeResponseBody.AssetScope()
            model.fromMap(dict["AssetScope"] as! [String: Any])
            self.assetScope = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPolicyAssetScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyAssetScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPolicyAssetScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPolicyUserScopeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var policyId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetPolicyUserScopeResponseBody : Tea.TeaModel {
    public class UserScope : Tea.TeaModel {
        public var scopeType: String?

        public var userGroupIds: [String]?

        public var userIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scopeType != nil {
                map["ScopeType"] = self.scopeType!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.userIds != nil {
                map["UserIds"] = self.userIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
                self.scopeType = dict["ScopeType"] as! String
            }
            if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
                self.userIds = dict["UserIds"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var userScope: GetPolicyUserScopeResponseBody.UserScope?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userScope?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userScope != nil {
            map["UserScope"] = self.userScope?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserScope") && dict["UserScope"] != nil {
            var model = GetPolicyUserScopeResponseBody.UserScope()
            model.fromMap(dict["UserScope"] as! [String: Any])
            self.userScope = model
        }
    }
}

public class GetPolicyUserScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyUserScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPolicyUserScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class GetRuleResponseBody : Tea.TeaModel {
    public class Rule : Tea.TeaModel {
        public class Databases : Tea.TeaModel {
            public class DatabaseAccounts : Tea.TeaModel {
                public var databaseAccountId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.databaseAccountId != nil {
                        map["DatabaseAccountId"] = self.databaseAccountId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                        self.databaseAccountId = dict["DatabaseAccountId"] as! String
                    }
                }
            }
            public var databaseAccounts: [GetRuleResponseBody.Rule.Databases.DatabaseAccounts]?

            public var databaseId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.databaseAccounts != nil {
                    var tmp : [Any] = []
                    for k in self.databaseAccounts! {
                        tmp.append(k.toMap())
                    }
                    map["DatabaseAccounts"] = tmp
                }
                if self.databaseId != nil {
                    map["DatabaseId"] = self.databaseId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DatabaseAccounts") && dict["DatabaseAccounts"] != nil {
                    var tmp : [GetRuleResponseBody.Rule.Databases.DatabaseAccounts] = []
                    for v in dict["DatabaseAccounts"] as! [Any] {
                        var model = GetRuleResponseBody.Rule.Databases.DatabaseAccounts()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.databaseAccounts = tmp
                }
                if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                    self.databaseId = dict["DatabaseId"] as! String
                }
            }
        }
        public class HostGroups : Tea.TeaModel {
            public var hostAccountNames: [String]?

            public var hostGroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostAccountNames != nil {
                    map["HostAccountNames"] = self.hostAccountNames!
                }
                if self.hostGroupId != nil {
                    map["HostGroupId"] = self.hostGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HostAccountNames") && dict["HostAccountNames"] != nil {
                    self.hostAccountNames = dict["HostAccountNames"] as! [String]
                }
                if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                    self.hostGroupId = dict["HostGroupId"] as! String
                }
            }
        }
        public class Hosts : Tea.TeaModel {
            public class HostAccounts : Tea.TeaModel {
                public var hostAccountId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.hostAccountId != nil {
                        map["HostAccountId"] = self.hostAccountId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                        self.hostAccountId = dict["HostAccountId"] as! String
                    }
                }
            }
            public var hostAccounts: [GetRuleResponseBody.Rule.Hosts.HostAccounts]?

            public var hostId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostAccounts != nil {
                    var tmp : [Any] = []
                    for k in self.hostAccounts! {
                        tmp.append(k.toMap())
                    }
                    map["HostAccounts"] = tmp
                }
                if self.hostId != nil {
                    map["HostId"] = self.hostId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
                    var tmp : [GetRuleResponseBody.Rule.Hosts.HostAccounts] = []
                    for v in dict["HostAccounts"] as! [Any] {
                        var model = GetRuleResponseBody.Rule.Hosts.HostAccounts()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.hostAccounts = tmp
                }
                if dict.keys.contains("HostId") && dict["HostId"] != nil {
                    self.hostId = dict["HostId"] as! String
                }
            }
        }
        public class UserGroups : Tea.TeaModel {
            public var userGroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.userGroupId != nil {
                    map["UserGroupId"] = self.userGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                    self.userGroupId = dict["UserGroupId"] as! String
                }
            }
        }
        public class Users : Tea.TeaModel {
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
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var comment: String?

        public var databases: [GetRuleResponseBody.Rule.Databases]?

        public var effectiveEndTime: String?

        public var effectiveStartTime: String?

        public var hostGroups: [GetRuleResponseBody.Rule.HostGroups]?

        public var hosts: [GetRuleResponseBody.Rule.Hosts]?

        public var ruleId: String?

        public var ruleName: String?

        public var userGroups: [GetRuleResponseBody.Rule.UserGroups]?

        public var users: [GetRuleResponseBody.Rule.Users]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.databases != nil {
                var tmp : [Any] = []
                for k in self.databases! {
                    tmp.append(k.toMap())
                }
                map["Databases"] = tmp
            }
            if self.effectiveEndTime != nil {
                map["EffectiveEndTime"] = self.effectiveEndTime!
            }
            if self.effectiveStartTime != nil {
                map["EffectiveStartTime"] = self.effectiveStartTime!
            }
            if self.hostGroups != nil {
                var tmp : [Any] = []
                for k in self.hostGroups! {
                    tmp.append(k.toMap())
                }
                map["HostGroups"] = tmp
            }
            if self.hosts != nil {
                var tmp : [Any] = []
                for k in self.hosts! {
                    tmp.append(k.toMap())
                }
                map["Hosts"] = tmp
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.userGroups != nil {
                var tmp : [Any] = []
                for k in self.userGroups! {
                    tmp.append(k.toMap())
                }
                map["UserGroups"] = tmp
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
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("Databases") && dict["Databases"] != nil {
                var tmp : [GetRuleResponseBody.Rule.Databases] = []
                for v in dict["Databases"] as! [Any] {
                    var model = GetRuleResponseBody.Rule.Databases()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.databases = tmp
            }
            if dict.keys.contains("EffectiveEndTime") && dict["EffectiveEndTime"] != nil {
                self.effectiveEndTime = dict["EffectiveEndTime"] as! String
            }
            if dict.keys.contains("EffectiveStartTime") && dict["EffectiveStartTime"] != nil {
                self.effectiveStartTime = dict["EffectiveStartTime"] as! String
            }
            if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
                var tmp : [GetRuleResponseBody.Rule.HostGroups] = []
                for v in dict["HostGroups"] as! [Any] {
                    var model = GetRuleResponseBody.Rule.HostGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hostGroups = tmp
            }
            if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
                var tmp : [GetRuleResponseBody.Rule.Hosts] = []
                for v in dict["Hosts"] as! [Any] {
                    var model = GetRuleResponseBody.Rule.Hosts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.hosts = tmp
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("UserGroups") && dict["UserGroups"] != nil {
                var tmp : [GetRuleResponseBody.Rule.UserGroups] = []
                for v in dict["UserGroups"] as! [Any] {
                    var model = GetRuleResponseBody.Rule.UserGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userGroups = tmp
            }
            if dict.keys.contains("Users") && dict["Users"] != nil {
                var tmp : [GetRuleResponseBody.Rule.Users] = []
                for v in dict["Users"] as! [Any] {
                    var model = GetRuleResponseBody.Rule.Users()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.users = tmp
            }
        }
    }
    public var requestId: String?

    public var rule: GetRuleResponseBody.Rule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rule != nil {
            map["Rule"] = self.rule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rule") && dict["Rule"] != nil {
            var model = GetRuleResponseBody.Rule()
            model.fromMap(dict["Rule"] as! [String: Any])
            self.rule = model
        }
    }
}

public class GetRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var comment: String?

        public var displayName: String?

        public var effectiveEndTime: Int64?

        public var effectiveStartTime: Int64?

        public var email: String?

        public var language: String?

        public var languageStatus: String?

        public var mobile: String?

        public var mobileCountryCode: String?

        public var needResetPassword: Bool?

        public var source: String?

        public var sourceUserId: String?

        public var twoFactorMethods: [String]?

        public var twoFactorStatus: String?

        public var userId: String?

        public var userName: String?

        public var userState: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.effectiveEndTime != nil {
                map["EffectiveEndTime"] = self.effectiveEndTime!
            }
            if self.effectiveStartTime != nil {
                map["EffectiveStartTime"] = self.effectiveStartTime!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.languageStatus != nil {
                map["LanguageStatus"] = self.languageStatus!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.mobileCountryCode != nil {
                map["MobileCountryCode"] = self.mobileCountryCode!
            }
            if self.needResetPassword != nil {
                map["NeedResetPassword"] = self.needResetPassword!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceUserId != nil {
                map["SourceUserId"] = self.sourceUserId!
            }
            if self.twoFactorMethods != nil {
                map["TwoFactorMethods"] = self.twoFactorMethods!
            }
            if self.twoFactorStatus != nil {
                map["TwoFactorStatus"] = self.twoFactorStatus!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userState != nil {
                map["UserState"] = self.userState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("EffectiveEndTime") && dict["EffectiveEndTime"] != nil {
                self.effectiveEndTime = dict["EffectiveEndTime"] as! Int64
            }
            if dict.keys.contains("EffectiveStartTime") && dict["EffectiveStartTime"] != nil {
                self.effectiveStartTime = dict["EffectiveStartTime"] as! Int64
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("LanguageStatus") && dict["LanguageStatus"] != nil {
                self.languageStatus = dict["LanguageStatus"] as! String
            }
            if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("MobileCountryCode") && dict["MobileCountryCode"] != nil {
                self.mobileCountryCode = dict["MobileCountryCode"] as! String
            }
            if dict.keys.contains("NeedResetPassword") && dict["NeedResetPassword"] != nil {
                self.needResetPassword = dict["NeedResetPassword"] as! Bool
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceUserId") && dict["SourceUserId"] != nil {
                self.sourceUserId = dict["SourceUserId"] as! String
            }
            if dict.keys.contains("TwoFactorMethods") && dict["TwoFactorMethods"] != nil {
                self.twoFactorMethods = dict["TwoFactorMethods"] as! [String]
            }
            if dict.keys.contains("TwoFactorStatus") && dict["TwoFactorStatus"] != nil {
                self.twoFactorStatus = dict["TwoFactorStatus"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserState") && dict["UserState"] != nil {
                self.userState = dict["UserState"] as! [String]
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("User") && dict["User"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class GetUserGroupResponseBody : Tea.TeaModel {
    public class UserGroup : Tea.TeaModel {
        public var comment: String?

        public var userGroupId: String?

        public var userGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            if self.userGroupName != nil {
                map["UserGroupName"] = self.userGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
                self.userGroupName = dict["UserGroupName"] as! String
            }
        }
    }
    public var requestId: String?

    public var userGroup: GetUserGroupResponseBody.UserGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userGroup != nil {
            map["UserGroup"] = self.userGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserGroup") && dict["UserGroup"] != nil {
            var model = GetUserGroupResponseBody.UserGroup()
            model.fromMap(dict["UserGroup"] as! [String: Any])
            self.userGroup = model
        }
    }
}

public class GetUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApproveCommandsRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListApproveCommandsResponseBody : Tea.TeaModel {
    public class ApproveCommands : Tea.TeaModel {
        public var approveCommandId: String?

        public var assetAccountName: String?

        public var assetIp: String?

        public var assetName: String?

        public var clientIp: String?

        public var clientUser: String?

        public var command: String?

        public var createTime: String?

        public var protocolName: String?

        public var sessionId: String?

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
            if self.approveCommandId != nil {
                map["ApproveCommandId"] = self.approveCommandId!
            }
            if self.assetAccountName != nil {
                map["AssetAccountName"] = self.assetAccountName!
            }
            if self.assetIp != nil {
                map["AssetIp"] = self.assetIp!
            }
            if self.assetName != nil {
                map["AssetName"] = self.assetName!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.clientUser != nil {
                map["ClientUser"] = self.clientUser!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApproveCommandId") && dict["ApproveCommandId"] != nil {
                self.approveCommandId = dict["ApproveCommandId"] as! String
            }
            if dict.keys.contains("AssetAccountName") && dict["AssetAccountName"] != nil {
                self.assetAccountName = dict["AssetAccountName"] as! String
            }
            if dict.keys.contains("AssetIp") && dict["AssetIp"] != nil {
                self.assetIp = dict["AssetIp"] as! String
            }
            if dict.keys.contains("AssetName") && dict["AssetName"] != nil {
                self.assetName = dict["AssetName"] as! String
            }
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("ClientUser") && dict["ClientUser"] != nil {
                self.clientUser = dict["ClientUser"] as! String
            }
            if dict.keys.contains("Command") && dict["Command"] != nil {
                self.command = dict["Command"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
        }
    }
    public var approveCommands: [ListApproveCommandsResponseBody.ApproveCommands]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approveCommands != nil {
            var tmp : [Any] = []
            for k in self.approveCommands! {
                tmp.append(k.toMap())
            }
            map["ApproveCommands"] = tmp
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
        if dict.keys.contains("ApproveCommands") && dict["ApproveCommands"] != nil {
            var tmp : [ListApproveCommandsResponseBody.ApproveCommands] = []
            for v in dict["ApproveCommands"] as! [Any] {
                var model = ListApproveCommandsResponseBody.ApproveCommands()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.approveCommands = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListApproveCommandsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApproveCommandsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListApproveCommandsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatabaseAccountsRequest : Tea.TeaModel {
    public var databaseAccountName: String?

    public var databaseId: String?

    public var instanceId: String?

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
        if self.databaseAccountName != nil {
            map["DatabaseAccountName"] = self.databaseAccountName!
        }
        if self.databaseId != nil {
            map["DatabaseId"] = self.databaseId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
            self.databaseAccountName = dict["DatabaseAccountName"] as! String
        }
        if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
            self.databaseId = dict["DatabaseId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListDatabaseAccountsResponseBody : Tea.TeaModel {
    public class DatabaseAccounts : Tea.TeaModel {
        public var databaseAccountId: String?

        public var databaseAccountName: String?

        public var databaseId: String?

        public var databaseSchema: String?

        public var hasPassword: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountId != nil {
                map["DatabaseAccountId"] = self.databaseAccountId!
            }
            if self.databaseAccountName != nil {
                map["DatabaseAccountName"] = self.databaseAccountName!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.databaseSchema != nil {
                map["DatabaseSchema"] = self.databaseSchema!
            }
            if self.hasPassword != nil {
                map["HasPassword"] = self.hasPassword!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                self.databaseAccountId = dict["DatabaseAccountId"] as! String
            }
            if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
                self.databaseAccountName = dict["DatabaseAccountName"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("DatabaseSchema") && dict["DatabaseSchema"] != nil {
                self.databaseSchema = dict["DatabaseSchema"] as! String
            }
            if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                self.hasPassword = dict["HasPassword"] as! String
            }
        }
    }
    public var databaseAccounts: [ListDatabaseAccountsResponseBody.DatabaseAccounts]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseAccounts != nil {
            var tmp : [Any] = []
            for k in self.databaseAccounts! {
                tmp.append(k.toMap())
            }
            map["DatabaseAccounts"] = tmp
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
        if dict.keys.contains("DatabaseAccounts") && dict["DatabaseAccounts"] != nil {
            var tmp : [ListDatabaseAccountsResponseBody.DatabaseAccounts] = []
            for v in dict["DatabaseAccounts"] as! [Any] {
                var model = ListDatabaseAccountsResponseBody.DatabaseAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databaseAccounts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDatabaseAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabaseAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatabaseAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatabaseAccountsForUserRequest : Tea.TeaModel {
    public var databaseAccountName: String?

    public var databaseId: String?

    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

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
        if self.databaseAccountName != nil {
            map["DatabaseAccountName"] = self.databaseAccountName!
        }
        if self.databaseId != nil {
            map["DatabaseId"] = self.databaseId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
            self.databaseAccountName = dict["DatabaseAccountName"] as! String
        }
        if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
            self.databaseId = dict["DatabaseId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListDatabaseAccountsForUserResponseBody : Tea.TeaModel {
    public class DatabaseAccounts : Tea.TeaModel {
        public var databaseAccountId: String?

        public var databaseAccountName: String?

        public var databaseId: String?

        public var isAuthorized: Bool?

        public var protocolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountId != nil {
                map["DatabaseAccountId"] = self.databaseAccountId!
            }
            if self.databaseAccountName != nil {
                map["DatabaseAccountName"] = self.databaseAccountName!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.isAuthorized != nil {
                map["IsAuthorized"] = self.isAuthorized!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                self.databaseAccountId = dict["DatabaseAccountId"] as! String
            }
            if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
                self.databaseAccountName = dict["DatabaseAccountName"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("IsAuthorized") && dict["IsAuthorized"] != nil {
                self.isAuthorized = dict["IsAuthorized"] as! Bool
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
        }
    }
    public var databaseAccounts: [ListDatabaseAccountsForUserResponseBody.DatabaseAccounts]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseAccounts != nil {
            var tmp : [Any] = []
            for k in self.databaseAccounts! {
                tmp.append(k.toMap())
            }
            map["DatabaseAccounts"] = tmp
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
        if dict.keys.contains("DatabaseAccounts") && dict["DatabaseAccounts"] != nil {
            var tmp : [ListDatabaseAccountsForUserResponseBody.DatabaseAccounts] = []
            for v in dict["DatabaseAccounts"] as! [Any] {
                var model = ListDatabaseAccountsForUserResponseBody.DatabaseAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databaseAccounts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDatabaseAccountsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabaseAccountsForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatabaseAccountsForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatabaseAccountsForUserGroupRequest : Tea.TeaModel {
    public var databaseAccountName: String?

    public var databaseId: String?

    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseAccountName != nil {
            map["DatabaseAccountName"] = self.databaseAccountName!
        }
        if self.databaseId != nil {
            map["DatabaseId"] = self.databaseId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
            self.databaseAccountName = dict["DatabaseAccountName"] as! String
        }
        if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
            self.databaseId = dict["DatabaseId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListDatabaseAccountsForUserGroupResponseBody : Tea.TeaModel {
    public class DatabaseAccounts : Tea.TeaModel {
        public var databaseAccountId: String?

        public var databaseAccountName: String?

        public var databaseId: String?

        public var isAuthorized: Bool?

        public var protocolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountId != nil {
                map["DatabaseAccountId"] = self.databaseAccountId!
            }
            if self.databaseAccountName != nil {
                map["DatabaseAccountName"] = self.databaseAccountName!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.isAuthorized != nil {
                map["IsAuthorized"] = self.isAuthorized!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                self.databaseAccountId = dict["DatabaseAccountId"] as! String
            }
            if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
                self.databaseAccountName = dict["DatabaseAccountName"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("IsAuthorized") && dict["IsAuthorized"] != nil {
                self.isAuthorized = dict["IsAuthorized"] as! Bool
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
        }
    }
    public var databaseAccounts: [ListDatabaseAccountsForUserGroupResponseBody.DatabaseAccounts]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseAccounts != nil {
            var tmp : [Any] = []
            for k in self.databaseAccounts! {
                tmp.append(k.toMap())
            }
            map["DatabaseAccounts"] = tmp
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
        if dict.keys.contains("DatabaseAccounts") && dict["DatabaseAccounts"] != nil {
            var tmp : [ListDatabaseAccountsForUserGroupResponseBody.DatabaseAccounts] = []
            for v in dict["DatabaseAccounts"] as! [Any] {
                var model = ListDatabaseAccountsForUserGroupResponseBody.DatabaseAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databaseAccounts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDatabaseAccountsForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabaseAccountsForUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatabaseAccountsForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatabasesRequest : Tea.TeaModel {
    public var databaseType: String?

    public var hostGroupId: String?

    public var instanceId: String?

    public var networkDomainId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseType != nil {
            map["DatabaseType"] = self.databaseType!
        }
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
            self.databaseType = dict["DatabaseType"] as! String
        }
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListDatabasesResponseBody : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var activeAddressType: String?

        public var comment: String?

        public var databaseId: String?

        public var databaseName: String?

        public var databasePort: Int32?

        public var databasePrivateAddress: String?

        public var databasePublicAddress: String?

        public var databaseType: String?

        public var networkDomainId: String?

        public var source: String?

        public var sourceInstanceId: String?

        public var sourceInstanceRegionId: String?

        public var sourceInstanceState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.databasePort != nil {
                map["DatabasePort"] = self.databasePort!
            }
            if self.databasePrivateAddress != nil {
                map["DatabasePrivateAddress"] = self.databasePrivateAddress!
            }
            if self.databasePublicAddress != nil {
                map["DatabasePublicAddress"] = self.databasePublicAddress!
            }
            if self.databaseType != nil {
                map["DatabaseType"] = self.databaseType!
            }
            if self.networkDomainId != nil {
                map["NetworkDomainId"] = self.networkDomainId!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceInstanceId != nil {
                map["SourceInstanceId"] = self.sourceInstanceId!
            }
            if self.sourceInstanceRegionId != nil {
                map["SourceInstanceRegionId"] = self.sourceInstanceRegionId!
            }
            if self.sourceInstanceState != nil {
                map["SourceInstanceState"] = self.sourceInstanceState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("DatabasePort") && dict["DatabasePort"] != nil {
                self.databasePort = dict["DatabasePort"] as! Int32
            }
            if dict.keys.contains("DatabasePrivateAddress") && dict["DatabasePrivateAddress"] != nil {
                self.databasePrivateAddress = dict["DatabasePrivateAddress"] as! String
            }
            if dict.keys.contains("DatabasePublicAddress") && dict["DatabasePublicAddress"] != nil {
                self.databasePublicAddress = dict["DatabasePublicAddress"] as! String
            }
            if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
                self.databaseType = dict["DatabaseType"] as! String
            }
            if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
                self.networkDomainId = dict["NetworkDomainId"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
                self.sourceInstanceId = dict["SourceInstanceId"] as! String
            }
            if dict.keys.contains("SourceInstanceRegionId") && dict["SourceInstanceRegionId"] != nil {
                self.sourceInstanceRegionId = dict["SourceInstanceRegionId"] as! String
            }
            if dict.keys.contains("SourceInstanceState") && dict["SourceInstanceState"] != nil {
                self.sourceInstanceState = dict["SourceInstanceState"] as! String
            }
        }
    }
    public var databases: [ListDatabasesResponseBody.Databases]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
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
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [ListDatabasesResponseBody.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = ListDatabasesResponseBody.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatabasesForUserRequest : Tea.TeaModel {
    public var databaseAddress: String?

    public var databaseName: String?

    public var databaseType: String?

    public var instanceId: String?

    public var networkDomainId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

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
        if self.databaseAddress != nil {
            map["DatabaseAddress"] = self.databaseAddress!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.databaseType != nil {
            map["DatabaseType"] = self.databaseType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAddress") && dict["DatabaseAddress"] != nil {
            self.databaseAddress = dict["DatabaseAddress"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
            self.databaseType = dict["DatabaseType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListDatabasesForUserResponseBody : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var activeAddressType: String?

        public var comment: String?

        public var databaseId: String?

        public var databaseName: String?

        public var databasePort: Int64?

        public var databasePrivateAddress: String?

        public var databasePublicAddress: String?

        public var databaseType: String?

        public var networkDomainId: String?

        public var source: String?

        public var sourceInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.databasePort != nil {
                map["DatabasePort"] = self.databasePort!
            }
            if self.databasePrivateAddress != nil {
                map["DatabasePrivateAddress"] = self.databasePrivateAddress!
            }
            if self.databasePublicAddress != nil {
                map["DatabasePublicAddress"] = self.databasePublicAddress!
            }
            if self.databaseType != nil {
                map["DatabaseType"] = self.databaseType!
            }
            if self.networkDomainId != nil {
                map["NetworkDomainId"] = self.networkDomainId!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceInstanceId != nil {
                map["SourceInstanceId"] = self.sourceInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("DatabasePort") && dict["DatabasePort"] != nil {
                self.databasePort = dict["DatabasePort"] as! Int64
            }
            if dict.keys.contains("DatabasePrivateAddress") && dict["DatabasePrivateAddress"] != nil {
                self.databasePrivateAddress = dict["DatabasePrivateAddress"] as! String
            }
            if dict.keys.contains("DatabasePublicAddress") && dict["DatabasePublicAddress"] != nil {
                self.databasePublicAddress = dict["DatabasePublicAddress"] as! String
            }
            if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
                self.databaseType = dict["DatabaseType"] as! String
            }
            if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
                self.networkDomainId = dict["NetworkDomainId"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
                self.sourceInstanceId = dict["SourceInstanceId"] as! String
            }
        }
    }
    public var databases: [ListDatabasesForUserResponseBody.Databases]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
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
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [ListDatabasesForUserResponseBody.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = ListDatabasesForUserResponseBody.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDatabasesForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabasesForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatabasesForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatabasesForUserGroupRequest : Tea.TeaModel {
    public var databaseAddress: String?

    public var databaseName: String?

    public var databaseType: String?

    public var instanceId: String?

    public var networkDomainId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseAddress != nil {
            map["DatabaseAddress"] = self.databaseAddress!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.databaseType != nil {
            map["DatabaseType"] = self.databaseType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
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
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAddress") && dict["DatabaseAddress"] != nil {
            self.databaseAddress = dict["DatabaseAddress"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
            self.databaseType = dict["DatabaseType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListDatabasesForUserGroupResponseBody : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var activeAddressType: String?

        public var comment: String?

        public var databaseAccountCount: Int64?

        public var databaseId: String?

        public var databaseName: String?

        public var databasePort: Int64?

        public var databasePrivateAddress: String?

        public var databasePublicAddress: String?

        public var databaseType: String?

        public var networkDomainId: String?

        public var source: String?

        public var sourceInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.databaseAccountCount != nil {
                map["DatabaseAccountCount"] = self.databaseAccountCount!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.databasePort != nil {
                map["DatabasePort"] = self.databasePort!
            }
            if self.databasePrivateAddress != nil {
                map["DatabasePrivateAddress"] = self.databasePrivateAddress!
            }
            if self.databasePublicAddress != nil {
                map["DatabasePublicAddress"] = self.databasePublicAddress!
            }
            if self.databaseType != nil {
                map["DatabaseType"] = self.databaseType!
            }
            if self.networkDomainId != nil {
                map["NetworkDomainId"] = self.networkDomainId!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceInstanceId != nil {
                map["SourceInstanceId"] = self.sourceInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("DatabaseAccountCount") && dict["DatabaseAccountCount"] != nil {
                self.databaseAccountCount = dict["DatabaseAccountCount"] as! Int64
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("DatabasePort") && dict["DatabasePort"] != nil {
                self.databasePort = dict["DatabasePort"] as! Int64
            }
            if dict.keys.contains("DatabasePrivateAddress") && dict["DatabasePrivateAddress"] != nil {
                self.databasePrivateAddress = dict["DatabasePrivateAddress"] as! String
            }
            if dict.keys.contains("DatabasePublicAddress") && dict["DatabasePublicAddress"] != nil {
                self.databasePublicAddress = dict["DatabasePublicAddress"] as! String
            }
            if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
                self.databaseType = dict["DatabaseType"] as! String
            }
            if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
                self.networkDomainId = dict["NetworkDomainId"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
                self.sourceInstanceId = dict["SourceInstanceId"] as! String
            }
        }
    }
    public var databases: [ListDatabasesForUserGroupResponseBody.Databases]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
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
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [ListDatabasesForUserGroupResponseBody.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = ListDatabasesForUserGroupResponseBody.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDatabasesForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabasesForUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatabasesForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostAccountsRequest : Tea.TeaModel {
    public var hostAccountName: String?

    public var hostId: String?

    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var protocolName: String?

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
        if self.hostAccountName != nil {
            map["HostAccountName"] = self.hostAccountName!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.protocolName != nil {
            map["ProtocolName"] = self.protocolName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
            self.hostAccountName = dict["HostAccountName"] as! String
        }
        if dict.keys.contains("HostId") && dict["HostId"] != nil {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
            self.protocolName = dict["ProtocolName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListHostAccountsResponseBody : Tea.TeaModel {
    public class HostAccounts : Tea.TeaModel {
        public var hasPassword: Bool?

        public var hostAccountId: String?

        public var hostAccountName: String?

        public var hostId: String?

        public var hostShareKeyId: String?

        public var hostShareKeyName: String?

        public var privateKeyFingerprint: String?

        public var protocolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasPassword != nil {
                map["HasPassword"] = self.hasPassword!
            }
            if self.hostAccountId != nil {
                map["HostAccountId"] = self.hostAccountId!
            }
            if self.hostAccountName != nil {
                map["HostAccountName"] = self.hostAccountName!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostShareKeyId != nil {
                map["HostShareKeyId"] = self.hostShareKeyId!
            }
            if self.hostShareKeyName != nil {
                map["HostShareKeyName"] = self.hostShareKeyName!
            }
            if self.privateKeyFingerprint != nil {
                map["PrivateKeyFingerprint"] = self.privateKeyFingerprint!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                self.hasPassword = dict["HasPassword"] as! Bool
            }
            if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                self.hostAccountId = dict["HostAccountId"] as! String
            }
            if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                self.hostAccountName = dict["HostAccountName"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
                self.hostShareKeyId = dict["HostShareKeyId"] as! String
            }
            if dict.keys.contains("HostShareKeyName") && dict["HostShareKeyName"] != nil {
                self.hostShareKeyName = dict["HostShareKeyName"] as! String
            }
            if dict.keys.contains("PrivateKeyFingerprint") && dict["PrivateKeyFingerprint"] != nil {
                self.privateKeyFingerprint = dict["PrivateKeyFingerprint"] as! String
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
        }
    }
    public var hostAccounts: [ListHostAccountsResponseBody.HostAccounts]?

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
        if self.hostAccounts != nil {
            var tmp : [Any] = []
            for k in self.hostAccounts! {
                tmp.append(k.toMap())
            }
            map["HostAccounts"] = tmp
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
        if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
            var tmp : [ListHostAccountsResponseBody.HostAccounts] = []
            for v in dict["HostAccounts"] as! [Any] {
                var model = ListHostAccountsResponseBody.HostAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostAccounts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHostAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostAccountsForHostShareKeyRequest : Tea.TeaModel {
    public var hostShareKeyId: String?

    public var instanceId: String?

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
        if self.hostShareKeyId != nil {
            map["HostShareKeyId"] = self.hostShareKeyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
            self.hostShareKeyId = dict["HostShareKeyId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListHostAccountsForHostShareKeyResponseBody : Tea.TeaModel {
    public class HostAccounts : Tea.TeaModel {
        public var hostAccountName: String?

        public var hostId: String?

        public var hostsAccountId: String?

        public var protocolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostAccountName != nil {
                map["HostAccountName"] = self.hostAccountName!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostsAccountId != nil {
                map["HostsAccountId"] = self.hostsAccountId!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                self.hostAccountName = dict["HostAccountName"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("HostsAccountId") && dict["HostsAccountId"] != nil {
                self.hostsAccountId = dict["HostsAccountId"] as! String
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
        }
    }
    public var hostAccounts: [ListHostAccountsForHostShareKeyResponseBody.HostAccounts]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAccounts != nil {
            var tmp : [Any] = []
            for k in self.hostAccounts! {
                tmp.append(k.toMap())
            }
            map["HostAccounts"] = tmp
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
        if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
            var tmp : [ListHostAccountsForHostShareKeyResponseBody.HostAccounts] = []
            for v in dict["HostAccounts"] as! [Any] {
                var model = ListHostAccountsForHostShareKeyResponseBody.HostAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostAccounts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListHostAccountsForHostShareKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostAccountsForHostShareKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostAccountsForHostShareKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostAccountsForUserRequest : Tea.TeaModel {
    public var hostAccountName: String?

    public var hostId: String?

    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

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
        if self.hostAccountName != nil {
            map["HostAccountName"] = self.hostAccountName!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
            self.hostAccountName = dict["HostAccountName"] as! String
        }
        if dict.keys.contains("HostId") && dict["HostId"] != nil {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListHostAccountsForUserResponseBody : Tea.TeaModel {
    public class HostAccounts : Tea.TeaModel {
        public var hostAccountId: String?

        public var hostAccountName: String?

        public var hostId: String?

        public var isAuthorized: Bool?

        public var protocolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostAccountId != nil {
                map["HostAccountId"] = self.hostAccountId!
            }
            if self.hostAccountName != nil {
                map["HostAccountName"] = self.hostAccountName!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.isAuthorized != nil {
                map["IsAuthorized"] = self.isAuthorized!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                self.hostAccountId = dict["HostAccountId"] as! String
            }
            if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                self.hostAccountName = dict["HostAccountName"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("IsAuthorized") && dict["IsAuthorized"] != nil {
                self.isAuthorized = dict["IsAuthorized"] as! Bool
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
        }
    }
    public var hostAccounts: [ListHostAccountsForUserResponseBody.HostAccounts]?

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
        if self.hostAccounts != nil {
            var tmp : [Any] = []
            for k in self.hostAccounts! {
                tmp.append(k.toMap())
            }
            map["HostAccounts"] = tmp
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
        if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
            var tmp : [ListHostAccountsForUserResponseBody.HostAccounts] = []
            for v in dict["HostAccounts"] as! [Any] {
                var model = ListHostAccountsForUserResponseBody.HostAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostAccounts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHostAccountsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostAccountsForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostAccountsForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostAccountsForUserGroupRequest : Tea.TeaModel {
    public var hostAccountName: String?

    public var hostId: String?

    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAccountName != nil {
            map["HostAccountName"] = self.hostAccountName!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
            self.hostAccountName = dict["HostAccountName"] as! String
        }
        if dict.keys.contains("HostId") && dict["HostId"] != nil {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListHostAccountsForUserGroupResponseBody : Tea.TeaModel {
    public class HostAccounts : Tea.TeaModel {
        public var hostAccountId: String?

        public var hostAccountName: String?

        public var hostId: String?

        public var isAuthorized: Bool?

        public var protocolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostAccountId != nil {
                map["HostAccountId"] = self.hostAccountId!
            }
            if self.hostAccountName != nil {
                map["HostAccountName"] = self.hostAccountName!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.isAuthorized != nil {
                map["IsAuthorized"] = self.isAuthorized!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                self.hostAccountId = dict["HostAccountId"] as! String
            }
            if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                self.hostAccountName = dict["HostAccountName"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("IsAuthorized") && dict["IsAuthorized"] != nil {
                self.isAuthorized = dict["IsAuthorized"] as! Bool
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
        }
    }
    public var hostAccounts: [ListHostAccountsForUserGroupResponseBody.HostAccounts]?

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
        if self.hostAccounts != nil {
            var tmp : [Any] = []
            for k in self.hostAccounts! {
                tmp.append(k.toMap())
            }
            map["HostAccounts"] = tmp
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
        if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
            var tmp : [ListHostAccountsForUserGroupResponseBody.HostAccounts] = []
            for v in dict["HostAccounts"] as! [Any] {
                var model = ListHostAccountsForUserGroupResponseBody.HostAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostAccounts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHostAccountsForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostAccountsForUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostAccountsForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostGroupAccountNamesForUserRequest : Tea.TeaModel {
    public var hostGroupId: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListHostGroupAccountNamesForUserResponseBody : Tea.TeaModel {
    public var hostAccountNames: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAccountNames != nil {
            map["HostAccountNames"] = self.hostAccountNames!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountNames") && dict["HostAccountNames"] != nil {
            self.hostAccountNames = dict["HostAccountNames"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListHostGroupAccountNamesForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostGroupAccountNamesForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostGroupAccountNamesForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostGroupAccountNamesForUserGroupRequest : Tea.TeaModel {
    public var hostGroupId: String?

    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListHostGroupAccountNamesForUserGroupResponseBody : Tea.TeaModel {
    public var hostAccountNames: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAccountNames != nil {
            map["HostAccountNames"] = self.hostAccountNames!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountNames") && dict["HostAccountNames"] != nil {
            self.hostAccountNames = dict["HostAccountNames"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListHostGroupAccountNamesForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostGroupAccountNamesForUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostGroupAccountNamesForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostGroupsRequest : Tea.TeaModel {
    public var hostGroupName: String?

    public var instanceId: String?

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
        if self.hostGroupName != nil {
            map["HostGroupName"] = self.hostGroupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
            self.hostGroupName = dict["HostGroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListHostGroupsResponseBody : Tea.TeaModel {
    public class HostGroups : Tea.TeaModel {
        public var comment: String?

        public var hostGroupId: String?

        public var hostGroupName: String?

        public var memberCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.hostGroupName != nil {
                map["HostGroupName"] = self.hostGroupName!
            }
            if self.memberCount != nil {
                map["MemberCount"] = self.memberCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
                self.hostGroupName = dict["HostGroupName"] as! String
            }
            if dict.keys.contains("MemberCount") && dict["MemberCount"] != nil {
                self.memberCount = dict["MemberCount"] as! Int32
            }
        }
    }
    public var hostGroups: [ListHostGroupsResponseBody.HostGroups]?

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
        if self.hostGroups != nil {
            var tmp : [Any] = []
            for k in self.hostGroups! {
                tmp.append(k.toMap())
            }
            map["HostGroups"] = tmp
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
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            var tmp : [ListHostGroupsResponseBody.HostGroups] = []
            for v in dict["HostGroups"] as! [Any] {
                var model = ListHostGroupsResponseBody.HostGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostGroups = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHostGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostGroupsForUserRequest : Tea.TeaModel {
    public var hostGroupName: String?

    public var instanceId: String?

    public var mode: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

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
        if self.hostGroupName != nil {
            map["HostGroupName"] = self.hostGroupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
            self.hostGroupName = dict["HostGroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListHostGroupsForUserResponseBody : Tea.TeaModel {
    public class HostGroups : Tea.TeaModel {
        public var comment: String?

        public var hostGroupId: String?

        public var hostGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.hostGroupName != nil {
                map["HostGroupName"] = self.hostGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
                self.hostGroupName = dict["HostGroupName"] as! String
            }
        }
    }
    public var hostGroups: [ListHostGroupsForUserResponseBody.HostGroups]?

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
        if self.hostGroups != nil {
            var tmp : [Any] = []
            for k in self.hostGroups! {
                tmp.append(k.toMap())
            }
            map["HostGroups"] = tmp
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
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            var tmp : [ListHostGroupsForUserResponseBody.HostGroups] = []
            for v in dict["HostGroups"] as! [Any] {
                var model = ListHostGroupsForUserResponseBody.HostGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostGroups = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHostGroupsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostGroupsForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostGroupsForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostGroupsForUserGroupRequest : Tea.TeaModel {
    public var hostGroupName: String?

    public var instanceId: String?

    public var mode: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostGroupName != nil {
            map["HostGroupName"] = self.hostGroupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
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
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
            self.hostGroupName = dict["HostGroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListHostGroupsForUserGroupResponseBody : Tea.TeaModel {
    public class HostGroups : Tea.TeaModel {
        public var comment: String?

        public var hostGroupId: String?

        public var hostGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.hostGroupName != nil {
                map["HostGroupName"] = self.hostGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
                self.hostGroupName = dict["HostGroupName"] as! String
            }
        }
    }
    public var hostGroups: [ListHostGroupsForUserGroupResponseBody.HostGroups]?

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
        if self.hostGroups != nil {
            var tmp : [Any] = []
            for k in self.hostGroups! {
                tmp.append(k.toMap())
            }
            map["HostGroups"] = tmp
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
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            var tmp : [ListHostGroupsForUserGroupResponseBody.HostGroups] = []
            for v in dict["HostGroups"] as! [Any] {
                var model = ListHostGroupsForUserGroupResponseBody.HostGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostGroups = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHostGroupsForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostGroupsForUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostGroupsForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostShareKeysRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListHostShareKeysResponseBody : Tea.TeaModel {
    public class HostShareKeys : Tea.TeaModel {
        public var hostAccountCount: Int64?

        public var hostShareKeyId: String?

        public var hostShareKeyName: String?

        public var lastModifyKeyAt: Int64?

        public var privateKeyFingerPrint: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostAccountCount != nil {
                map["HostAccountCount"] = self.hostAccountCount!
            }
            if self.hostShareKeyId != nil {
                map["HostShareKeyId"] = self.hostShareKeyId!
            }
            if self.hostShareKeyName != nil {
                map["HostShareKeyName"] = self.hostShareKeyName!
            }
            if self.lastModifyKeyAt != nil {
                map["LastModifyKeyAt"] = self.lastModifyKeyAt!
            }
            if self.privateKeyFingerPrint != nil {
                map["PrivateKeyFingerPrint"] = self.privateKeyFingerPrint!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostAccountCount") && dict["HostAccountCount"] != nil {
                self.hostAccountCount = dict["HostAccountCount"] as! Int64
            }
            if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
                self.hostShareKeyId = dict["HostShareKeyId"] as! String
            }
            if dict.keys.contains("HostShareKeyName") && dict["HostShareKeyName"] != nil {
                self.hostShareKeyName = dict["HostShareKeyName"] as! String
            }
            if dict.keys.contains("LastModifyKeyAt") && dict["LastModifyKeyAt"] != nil {
                self.lastModifyKeyAt = dict["LastModifyKeyAt"] as! Int64
            }
            if dict.keys.contains("PrivateKeyFingerPrint") && dict["PrivateKeyFingerPrint"] != nil {
                self.privateKeyFingerPrint = dict["PrivateKeyFingerPrint"] as! String
            }
        }
    }
    public var hostShareKeys: [ListHostShareKeysResponseBody.HostShareKeys]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostShareKeys != nil {
            var tmp : [Any] = []
            for k in self.hostShareKeys! {
                tmp.append(k.toMap())
            }
            map["HostShareKeys"] = tmp
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
        if dict.keys.contains("HostShareKeys") && dict["HostShareKeys"] != nil {
            var tmp : [ListHostShareKeysResponseBody.HostShareKeys] = []
            for v in dict["HostShareKeys"] as! [Any] {
                var model = ListHostShareKeysResponseBody.HostShareKeys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostShareKeys = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListHostShareKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostShareKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostShareKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostsRequest : Tea.TeaModel {
    public var hostAddress: String?

    public var hostGroupId: String?

    public var hostName: String?

    public var instanceId: String?

    public var OSType: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var source: String?

    public var sourceInstanceId: String?

    public var sourceInstanceState: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAddress != nil {
            map["HostAddress"] = self.hostAddress!
        }
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.OSType != nil {
            map["OSType"] = self.OSType!
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceInstanceId != nil {
            map["SourceInstanceId"] = self.sourceInstanceId!
        }
        if self.sourceInstanceState != nil {
            map["SourceInstanceState"] = self.sourceInstanceState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAddress") && dict["HostAddress"] != nil {
            self.hostAddress = dict["HostAddress"] as! String
        }
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("HostName") && dict["HostName"] != nil {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OSType") && dict["OSType"] != nil {
            self.OSType = dict["OSType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
            self.sourceInstanceId = dict["SourceInstanceId"] as! String
        }
        if dict.keys.contains("SourceInstanceState") && dict["SourceInstanceState"] != nil {
            self.sourceInstanceState = dict["SourceInstanceState"] as! String
        }
    }
}

public class ListHostsResponseBody : Tea.TeaModel {
    public class Hosts : Tea.TeaModel {
        public var activeAddressType: String?

        public var comment: String?

        public var hostAccountCount: Int32?

        public var hostId: String?

        public var hostName: String?

        public var hostPrivateAddress: String?

        public var hostPublicAddress: String?

        public var OSType: String?

        public var source: String?

        public var sourceInstanceId: String?

        public var sourceInstanceState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.hostAccountCount != nil {
                map["HostAccountCount"] = self.hostAccountCount!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.hostPrivateAddress != nil {
                map["HostPrivateAddress"] = self.hostPrivateAddress!
            }
            if self.hostPublicAddress != nil {
                map["HostPublicAddress"] = self.hostPublicAddress!
            }
            if self.OSType != nil {
                map["OSType"] = self.OSType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceInstanceId != nil {
                map["SourceInstanceId"] = self.sourceInstanceId!
            }
            if self.sourceInstanceState != nil {
                map["SourceInstanceState"] = self.sourceInstanceState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("HostAccountCount") && dict["HostAccountCount"] != nil {
                self.hostAccountCount = dict["HostAccountCount"] as! Int32
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("HostName") && dict["HostName"] != nil {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("HostPrivateAddress") && dict["HostPrivateAddress"] != nil {
                self.hostPrivateAddress = dict["HostPrivateAddress"] as! String
            }
            if dict.keys.contains("HostPublicAddress") && dict["HostPublicAddress"] != nil {
                self.hostPublicAddress = dict["HostPublicAddress"] as! String
            }
            if dict.keys.contains("OSType") && dict["OSType"] != nil {
                self.OSType = dict["OSType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
                self.sourceInstanceId = dict["SourceInstanceId"] as! String
            }
            if dict.keys.contains("SourceInstanceState") && dict["SourceInstanceState"] != nil {
                self.sourceInstanceState = dict["SourceInstanceState"] as! String
            }
        }
    }
    public var hosts: [ListHostsResponseBody.Hosts]?

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
        if self.hosts != nil {
            var tmp : [Any] = []
            for k in self.hosts! {
                tmp.append(k.toMap())
            }
            map["Hosts"] = tmp
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
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            var tmp : [ListHostsResponseBody.Hosts] = []
            for v in dict["Hosts"] as! [Any] {
                var model = ListHostsResponseBody.Hosts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hosts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHostsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostsForUserRequest : Tea.TeaModel {
    public var hostAddress: String?

    public var hostName: String?

    public var instanceId: String?

    public var mode: String?

    public var OSType: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

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
        if self.hostAddress != nil {
            map["HostAddress"] = self.hostAddress!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.OSType != nil {
            map["OSType"] = self.OSType!
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAddress") && dict["HostAddress"] != nil {
            self.hostAddress = dict["HostAddress"] as! String
        }
        if dict.keys.contains("HostName") && dict["HostName"] != nil {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("OSType") && dict["OSType"] != nil {
            self.OSType = dict["OSType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListHostsForUserResponseBody : Tea.TeaModel {
    public class Hosts : Tea.TeaModel {
        public var activeAddressType: String?

        public var comment: String?

        public var hostId: String?

        public var hostName: String?

        public var hostPrivateAddress: String?

        public var hostPublicAddress: String?

        public var OSType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.hostPrivateAddress != nil {
                map["HostPrivateAddress"] = self.hostPrivateAddress!
            }
            if self.hostPublicAddress != nil {
                map["HostPublicAddress"] = self.hostPublicAddress!
            }
            if self.OSType != nil {
                map["OSType"] = self.OSType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("HostName") && dict["HostName"] != nil {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("HostPrivateAddress") && dict["HostPrivateAddress"] != nil {
                self.hostPrivateAddress = dict["HostPrivateAddress"] as! String
            }
            if dict.keys.contains("HostPublicAddress") && dict["HostPublicAddress"] != nil {
                self.hostPublicAddress = dict["HostPublicAddress"] as! String
            }
            if dict.keys.contains("OSType") && dict["OSType"] != nil {
                self.OSType = dict["OSType"] as! String
            }
        }
    }
    public var hosts: [ListHostsForUserResponseBody.Hosts]?

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
        if self.hosts != nil {
            var tmp : [Any] = []
            for k in self.hosts! {
                tmp.append(k.toMap())
            }
            map["Hosts"] = tmp
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
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            var tmp : [ListHostsForUserResponseBody.Hosts] = []
            for v in dict["Hosts"] as! [Any] {
                var model = ListHostsForUserResponseBody.Hosts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hosts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHostsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostsForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostsForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostsForUserGroupRequest : Tea.TeaModel {
    public var hostAddress: String?

    public var hostName: String?

    public var instanceId: String?

    public var mode: String?

    public var OSType: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAddress != nil {
            map["HostAddress"] = self.hostAddress!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.OSType != nil {
            map["OSType"] = self.OSType!
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
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAddress") && dict["HostAddress"] != nil {
            self.hostAddress = dict["HostAddress"] as! String
        }
        if dict.keys.contains("HostName") && dict["HostName"] != nil {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("OSType") && dict["OSType"] != nil {
            self.OSType = dict["OSType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListHostsForUserGroupResponseBody : Tea.TeaModel {
    public class Hosts : Tea.TeaModel {
        public var activeAddressType: String?

        public var comment: String?

        public var hostId: String?

        public var hostName: String?

        public var hostPrivateAddress: String?

        public var hostPublicAddress: String?

        public var OSType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.hostPrivateAddress != nil {
                map["HostPrivateAddress"] = self.hostPrivateAddress!
            }
            if self.hostPublicAddress != nil {
                map["HostPublicAddress"] = self.hostPublicAddress!
            }
            if self.OSType != nil {
                map["OSType"] = self.OSType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("HostName") && dict["HostName"] != nil {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("HostPrivateAddress") && dict["HostPrivateAddress"] != nil {
                self.hostPrivateAddress = dict["HostPrivateAddress"] as! String
            }
            if dict.keys.contains("HostPublicAddress") && dict["HostPublicAddress"] != nil {
                self.hostPublicAddress = dict["HostPublicAddress"] as! String
            }
            if dict.keys.contains("OSType") && dict["OSType"] != nil {
                self.OSType = dict["OSType"] as! String
            }
        }
    }
    public var hosts: [ListHostsForUserGroupResponseBody.Hosts]?

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
        if self.hosts != nil {
            var tmp : [Any] = []
            for k in self.hosts! {
                tmp.append(k.toMap())
            }
            map["Hosts"] = tmp
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
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            var tmp : [ListHostsForUserGroupResponseBody.Hosts] = []
            for v in dict["Hosts"] as! [Any] {
                var model = ListHostsForUserGroupResponseBody.Hosts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hosts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHostsForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostsForUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHostsForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNetworkDomainsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var networkDomainName: String?

    public var networkDomainType: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainName != nil {
            map["NetworkDomainName"] = self.networkDomainName!
        }
        if self.networkDomainType != nil {
            map["NetworkDomainType"] = self.networkDomainType!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainName") && dict["NetworkDomainName"] != nil {
            self.networkDomainName = dict["NetworkDomainName"] as! String
        }
        if dict.keys.contains("NetworkDomainType") && dict["NetworkDomainType"] != nil {
            self.networkDomainType = dict["NetworkDomainType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListNetworkDomainsResponseBody : Tea.TeaModel {
    public class NetworkDomains : Tea.TeaModel {
        public class ProxiesState : Tea.TeaModel {
            public var nodeType: String?

            public var proxyState: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                if self.proxyState != nil {
                    map["ProxyState"] = self.proxyState!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NodeType") && dict["NodeType"] != nil {
                    self.nodeType = dict["NodeType"] as! String
                }
                if dict.keys.contains("ProxyState") && dict["ProxyState"] != nil {
                    self.proxyState = dict["ProxyState"] as! String
                }
            }
        }
        public var comment: String?

        public var default_: Bool?

        public var networkDomainId: String?

        public var networkDomainName: String?

        public var networkDomainType: String?

        public var proxiesState: [ListNetworkDomainsResponseBody.NetworkDomains.ProxiesState]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.default_ != nil {
                map["Default"] = self.default_!
            }
            if self.networkDomainId != nil {
                map["NetworkDomainId"] = self.networkDomainId!
            }
            if self.networkDomainName != nil {
                map["NetworkDomainName"] = self.networkDomainName!
            }
            if self.networkDomainType != nil {
                map["NetworkDomainType"] = self.networkDomainType!
            }
            if self.proxiesState != nil {
                var tmp : [Any] = []
                for k in self.proxiesState! {
                    tmp.append(k.toMap())
                }
                map["ProxiesState"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("Default") && dict["Default"] != nil {
                self.default_ = dict["Default"] as! Bool
            }
            if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
                self.networkDomainId = dict["NetworkDomainId"] as! String
            }
            if dict.keys.contains("NetworkDomainName") && dict["NetworkDomainName"] != nil {
                self.networkDomainName = dict["NetworkDomainName"] as! String
            }
            if dict.keys.contains("NetworkDomainType") && dict["NetworkDomainType"] != nil {
                self.networkDomainType = dict["NetworkDomainType"] as! String
            }
            if dict.keys.contains("ProxiesState") && dict["ProxiesState"] != nil {
                var tmp : [ListNetworkDomainsResponseBody.NetworkDomains.ProxiesState] = []
                for v in dict["ProxiesState"] as! [Any] {
                    var model = ListNetworkDomainsResponseBody.NetworkDomains.ProxiesState()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.proxiesState = tmp
            }
        }
    }
    public var networkDomains: [ListNetworkDomainsResponseBody.NetworkDomains]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkDomains != nil {
            var tmp : [Any] = []
            for k in self.networkDomains! {
                tmp.append(k.toMap())
            }
            map["NetworkDomains"] = tmp
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
        if dict.keys.contains("NetworkDomains") && dict["NetworkDomains"] != nil {
            var tmp : [ListNetworkDomainsResponseBody.NetworkDomains] = []
            for v in dict["NetworkDomains"] as! [Any] {
                var model = ListNetworkDomainsResponseBody.NetworkDomains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.networkDomains = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListNetworkDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNetworkDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListNetworkDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOperationDatabaseAccountsRequest : Tea.TeaModel {
    public var databaseAccountName: String?

    public var databaseId: String?

    public var instanceId: String?

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
        if self.databaseAccountName != nil {
            map["DatabaseAccountName"] = self.databaseAccountName!
        }
        if self.databaseId != nil {
            map["DatabaseId"] = self.databaseId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
            self.databaseAccountName = dict["DatabaseAccountName"] as! String
        }
        if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
            self.databaseId = dict["DatabaseId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListOperationDatabaseAccountsResponseBody : Tea.TeaModel {
    public class DatabaseAccounts : Tea.TeaModel {
        public var DBName: String?

        public var databaseAccountId: String?

        public var databaseAccountName: String?

        public var databaseId: String?

        public var hasPassword: String?

        public var loginAttribute: String?

        public var protocolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.databaseAccountId != nil {
                map["DatabaseAccountId"] = self.databaseAccountId!
            }
            if self.databaseAccountName != nil {
                map["DatabaseAccountName"] = self.databaseAccountName!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.hasPassword != nil {
                map["HasPassword"] = self.hasPassword!
            }
            if self.loginAttribute != nil {
                map["LoginAttribute"] = self.loginAttribute!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBName") && dict["DBName"] != nil {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
                self.databaseAccountId = dict["DatabaseAccountId"] as! String
            }
            if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
                self.databaseAccountName = dict["DatabaseAccountName"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                self.hasPassword = dict["HasPassword"] as! String
            }
            if dict.keys.contains("LoginAttribute") && dict["LoginAttribute"] != nil {
                self.loginAttribute = dict["LoginAttribute"] as! String
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
        }
    }
    public var databaseAccounts: [ListOperationDatabaseAccountsResponseBody.DatabaseAccounts]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseAccounts != nil {
            var tmp : [Any] = []
            for k in self.databaseAccounts! {
                tmp.append(k.toMap())
            }
            map["DatabaseAccounts"] = tmp
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
        if dict.keys.contains("DatabaseAccounts") && dict["DatabaseAccounts"] != nil {
            var tmp : [ListOperationDatabaseAccountsResponseBody.DatabaseAccounts] = []
            for v in dict["DatabaseAccounts"] as! [Any] {
                var model = ListOperationDatabaseAccountsResponseBody.DatabaseAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databaseAccounts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListOperationDatabaseAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationDatabaseAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOperationDatabaseAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOperationDatabasesRequest : Tea.TeaModel {
    public var databaseAddress: String?

    public var databaseName: String?

    public var databaseType: String?

    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var source: String?

    public var sourceInstanceId: String?

    public var sourceInstanceState: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseAddress != nil {
            map["DatabaseAddress"] = self.databaseAddress!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.databaseType != nil {
            map["DatabaseType"] = self.databaseType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceInstanceId != nil {
            map["SourceInstanceId"] = self.sourceInstanceId!
        }
        if self.sourceInstanceState != nil {
            map["SourceInstanceState"] = self.sourceInstanceState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAddress") && dict["DatabaseAddress"] != nil {
            self.databaseAddress = dict["DatabaseAddress"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
            self.databaseType = dict["DatabaseType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
            self.sourceInstanceId = dict["SourceInstanceId"] as! String
        }
        if dict.keys.contains("SourceInstanceState") && dict["SourceInstanceState"] != nil {
            self.sourceInstanceState = dict["SourceInstanceState"] as! String
        }
    }
}

public class ListOperationDatabasesResponseBody : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var activeAddressType: String?

        public var comment: String?

        public var databaseId: String?

        public var databaseName: String?

        public var databasePort: Int64?

        public var databasePrivateAddress: String?

        public var databasePublicAddress: String?

        public var databaseType: String?

        public var source: String?

        public var sourceInstanceId: String?

        public var sourceInstanceRegionId: String?

        public var sourceInstanceState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.databasePort != nil {
                map["DatabasePort"] = self.databasePort!
            }
            if self.databasePrivateAddress != nil {
                map["DatabasePrivateAddress"] = self.databasePrivateAddress!
            }
            if self.databasePublicAddress != nil {
                map["DatabasePublicAddress"] = self.databasePublicAddress!
            }
            if self.databaseType != nil {
                map["DatabaseType"] = self.databaseType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceInstanceId != nil {
                map["SourceInstanceId"] = self.sourceInstanceId!
            }
            if self.sourceInstanceRegionId != nil {
                map["SourceInstanceRegionId"] = self.sourceInstanceRegionId!
            }
            if self.sourceInstanceState != nil {
                map["SourceInstanceState"] = self.sourceInstanceState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
                self.databaseName = dict["DatabaseName"] as! String
            }
            if dict.keys.contains("DatabasePort") && dict["DatabasePort"] != nil {
                self.databasePort = dict["DatabasePort"] as! Int64
            }
            if dict.keys.contains("DatabasePrivateAddress") && dict["DatabasePrivateAddress"] != nil {
                self.databasePrivateAddress = dict["DatabasePrivateAddress"] as! String
            }
            if dict.keys.contains("DatabasePublicAddress") && dict["DatabasePublicAddress"] != nil {
                self.databasePublicAddress = dict["DatabasePublicAddress"] as! String
            }
            if dict.keys.contains("DatabaseType") && dict["DatabaseType"] != nil {
                self.databaseType = dict["DatabaseType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
                self.sourceInstanceId = dict["SourceInstanceId"] as! String
            }
            if dict.keys.contains("SourceInstanceRegionId") && dict["SourceInstanceRegionId"] != nil {
                self.sourceInstanceRegionId = dict["SourceInstanceRegionId"] as! String
            }
            if dict.keys.contains("SourceInstanceState") && dict["SourceInstanceState"] != nil {
                self.sourceInstanceState = dict["SourceInstanceState"] as! String
            }
        }
    }
    public var databases: [ListOperationDatabasesResponseBody.Databases]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
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
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [ListOperationDatabasesResponseBody.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = ListOperationDatabasesResponseBody.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListOperationDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationDatabasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOperationDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOperationHostAccountsRequest : Tea.TeaModel {
    public var hostAccountName: String?

    public var hostId: String?

    public var instanceId: String?

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
        if self.hostAccountName != nil {
            map["HostAccountName"] = self.hostAccountName!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
            self.hostAccountName = dict["HostAccountName"] as! String
        }
        if dict.keys.contains("HostId") && dict["HostId"] != nil {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListOperationHostAccountsResponseBody : Tea.TeaModel {
    public class HostAccounts : Tea.TeaModel {
        public class SSHConfig : Tea.TeaModel {
            public var enableSFTPChannel: Bool?

            public var enableSSHChannel: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableSFTPChannel != nil {
                    map["EnableSFTPChannel"] = self.enableSFTPChannel!
                }
                if self.enableSSHChannel != nil {
                    map["EnableSSHChannel"] = self.enableSSHChannel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableSFTPChannel") && dict["EnableSFTPChannel"] != nil {
                    self.enableSFTPChannel = dict["EnableSFTPChannel"] as! Bool
                }
                if dict.keys.contains("EnableSSHChannel") && dict["EnableSSHChannel"] != nil {
                    self.enableSSHChannel = dict["EnableSSHChannel"] as! Bool
                }
            }
        }
        public var hasPassword: Bool?

        public var hostAccountId: String?

        public var hostAccountName: String?

        public var hostId: String?

        public var hostShareKeyId: String?

        public var privateKeyFingerprint: String?

        public var protocolName: String?

        public var SSHConfig: ListOperationHostAccountsResponseBody.HostAccounts.SSHConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.SSHConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasPassword != nil {
                map["HasPassword"] = self.hasPassword!
            }
            if self.hostAccountId != nil {
                map["HostAccountId"] = self.hostAccountId!
            }
            if self.hostAccountName != nil {
                map["HostAccountName"] = self.hostAccountName!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostShareKeyId != nil {
                map["HostShareKeyId"] = self.hostShareKeyId!
            }
            if self.privateKeyFingerprint != nil {
                map["PrivateKeyFingerprint"] = self.privateKeyFingerprint!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            if self.SSHConfig != nil {
                map["SSHConfig"] = self.SSHConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                self.hasPassword = dict["HasPassword"] as! Bool
            }
            if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
                self.hostAccountId = dict["HostAccountId"] as! String
            }
            if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
                self.hostAccountName = dict["HostAccountName"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
                self.hostShareKeyId = dict["HostShareKeyId"] as! String
            }
            if dict.keys.contains("PrivateKeyFingerprint") && dict["PrivateKeyFingerprint"] != nil {
                self.privateKeyFingerprint = dict["PrivateKeyFingerprint"] as! String
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
            if dict.keys.contains("SSHConfig") && dict["SSHConfig"] != nil {
                var model = ListOperationHostAccountsResponseBody.HostAccounts.SSHConfig()
                model.fromMap(dict["SSHConfig"] as! [String: Any])
                self.SSHConfig = model
            }
        }
    }
    public var hostAccounts: [ListOperationHostAccountsResponseBody.HostAccounts]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAccounts != nil {
            var tmp : [Any] = []
            for k in self.hostAccounts! {
                tmp.append(k.toMap())
            }
            map["HostAccounts"] = tmp
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
        if dict.keys.contains("HostAccounts") && dict["HostAccounts"] != nil {
            var tmp : [ListOperationHostAccountsResponseBody.HostAccounts] = []
            for v in dict["HostAccounts"] as! [Any] {
                var model = ListOperationHostAccountsResponseBody.HostAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostAccounts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListOperationHostAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationHostAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOperationHostAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOperationHostsRequest : Tea.TeaModel {
    public var hostAddress: String?

    public var hostName: String?

    public var instanceId: String?

    public var OSType: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var source: String?

    public var sourceInstanceId: String?

    public var sourceInstanceState: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAddress != nil {
            map["HostAddress"] = self.hostAddress!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.OSType != nil {
            map["OSType"] = self.OSType!
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceInstanceId != nil {
            map["SourceInstanceId"] = self.sourceInstanceId!
        }
        if self.sourceInstanceState != nil {
            map["SourceInstanceState"] = self.sourceInstanceState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAddress") && dict["HostAddress"] != nil {
            self.hostAddress = dict["HostAddress"] as! String
        }
        if dict.keys.contains("HostName") && dict["HostName"] != nil {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OSType") && dict["OSType"] != nil {
            self.OSType = dict["OSType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
            self.sourceInstanceId = dict["SourceInstanceId"] as! String
        }
        if dict.keys.contains("SourceInstanceState") && dict["SourceInstanceState"] != nil {
            self.sourceInstanceState = dict["SourceInstanceState"] as! String
        }
    }
}

public class ListOperationHostsResponseBody : Tea.TeaModel {
    public class Hosts : Tea.TeaModel {
        public var activeAddressType: String?

        public var comment: String?

        public var hostId: String?

        public var hostName: String?

        public var hostPrivateAddress: String?

        public var hostPublicAddress: String?

        public var OSType: String?

        public var source: String?

        public var sourceInstanceId: String?

        public var sourceInstanceState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeAddressType != nil {
                map["ActiveAddressType"] = self.activeAddressType!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.hostPrivateAddress != nil {
                map["HostPrivateAddress"] = self.hostPrivateAddress!
            }
            if self.hostPublicAddress != nil {
                map["HostPublicAddress"] = self.hostPublicAddress!
            }
            if self.OSType != nil {
                map["OSType"] = self.OSType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceInstanceId != nil {
                map["SourceInstanceId"] = self.sourceInstanceId!
            }
            if self.sourceInstanceState != nil {
                map["SourceInstanceState"] = self.sourceInstanceState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
                self.activeAddressType = dict["ActiveAddressType"] as! String
            }
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("HostName") && dict["HostName"] != nil {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("HostPrivateAddress") && dict["HostPrivateAddress"] != nil {
                self.hostPrivateAddress = dict["HostPrivateAddress"] as! String
            }
            if dict.keys.contains("HostPublicAddress") && dict["HostPublicAddress"] != nil {
                self.hostPublicAddress = dict["HostPublicAddress"] as! String
            }
            if dict.keys.contains("OSType") && dict["OSType"] != nil {
                self.OSType = dict["OSType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
                self.sourceInstanceId = dict["SourceInstanceId"] as! String
            }
            if dict.keys.contains("SourceInstanceState") && dict["SourceInstanceState"] != nil {
                self.sourceInstanceState = dict["SourceInstanceState"] as! String
            }
        }
    }
    public var hosts: [ListOperationHostsResponseBody.Hosts]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hosts != nil {
            var tmp : [Any] = []
            for k in self.hosts! {
                tmp.append(k.toMap())
            }
            map["Hosts"] = tmp
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
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            var tmp : [ListOperationHostsResponseBody.Hosts] = []
            for v in dict["Hosts"] as! [Any] {
                var model = ListOperationHostsResponseBody.Hosts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hosts = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListOperationHostsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationHostsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOperationHostsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOperationTicketsRequest : Tea.TeaModel {
    public var assetAddress: String?

    public var instanceId: String?

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
        if self.assetAddress != nil {
            map["AssetAddress"] = self.assetAddress!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetAddress") && dict["AssetAddress"] != nil {
            self.assetAddress = dict["AssetAddress"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListOperationTicketsResponseBody : Tea.TeaModel {
    public class OperationTickets : Tea.TeaModel {
        public var applyUserId: String?

        public var applyUsername: String?

        public var assetAccountId: String?

        public var assetAccountName: String?

        public var assetAddress: String?

        public var assetId: String?

        public var assetName: String?

        public var assetNetworkDomainId: String?

        public var assetOs: String?

        public var assetSource: String?

        public var assetSourceInstanceId: String?

        public var createdTime: Int64?

        public var operationTicketId: String?

        public var protocolName: String?

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
            if self.applyUserId != nil {
                map["ApplyUserId"] = self.applyUserId!
            }
            if self.applyUsername != nil {
                map["ApplyUsername"] = self.applyUsername!
            }
            if self.assetAccountId != nil {
                map["AssetAccountId"] = self.assetAccountId!
            }
            if self.assetAccountName != nil {
                map["AssetAccountName"] = self.assetAccountName!
            }
            if self.assetAddress != nil {
                map["AssetAddress"] = self.assetAddress!
            }
            if self.assetId != nil {
                map["AssetId"] = self.assetId!
            }
            if self.assetName != nil {
                map["AssetName"] = self.assetName!
            }
            if self.assetNetworkDomainId != nil {
                map["AssetNetworkDomainId"] = self.assetNetworkDomainId!
            }
            if self.assetOs != nil {
                map["AssetOs"] = self.assetOs!
            }
            if self.assetSource != nil {
                map["AssetSource"] = self.assetSource!
            }
            if self.assetSourceInstanceId != nil {
                map["AssetSourceInstanceId"] = self.assetSourceInstanceId!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.operationTicketId != nil {
                map["OperationTicketId"] = self.operationTicketId!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplyUserId") && dict["ApplyUserId"] != nil {
                self.applyUserId = dict["ApplyUserId"] as! String
            }
            if dict.keys.contains("ApplyUsername") && dict["ApplyUsername"] != nil {
                self.applyUsername = dict["ApplyUsername"] as! String
            }
            if dict.keys.contains("AssetAccountId") && dict["AssetAccountId"] != nil {
                self.assetAccountId = dict["AssetAccountId"] as! String
            }
            if dict.keys.contains("AssetAccountName") && dict["AssetAccountName"] != nil {
                self.assetAccountName = dict["AssetAccountName"] as! String
            }
            if dict.keys.contains("AssetAddress") && dict["AssetAddress"] != nil {
                self.assetAddress = dict["AssetAddress"] as! String
            }
            if dict.keys.contains("AssetId") && dict["AssetId"] != nil {
                self.assetId = dict["AssetId"] as! String
            }
            if dict.keys.contains("AssetName") && dict["AssetName"] != nil {
                self.assetName = dict["AssetName"] as! String
            }
            if dict.keys.contains("AssetNetworkDomainId") && dict["AssetNetworkDomainId"] != nil {
                self.assetNetworkDomainId = dict["AssetNetworkDomainId"] as! String
            }
            if dict.keys.contains("AssetOs") && dict["AssetOs"] != nil {
                self.assetOs = dict["AssetOs"] as! String
            }
            if dict.keys.contains("AssetSource") && dict["AssetSource"] != nil {
                self.assetSource = dict["AssetSource"] as! String
            }
            if dict.keys.contains("AssetSourceInstanceId") && dict["AssetSourceInstanceId"] != nil {
                self.assetSourceInstanceId = dict["AssetSourceInstanceId"] as! String
            }
            if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                self.createdTime = dict["CreatedTime"] as! Int64
            }
            if dict.keys.contains("OperationTicketId") && dict["OperationTicketId"] != nil {
                self.operationTicketId = dict["OperationTicketId"] as! String
            }
            if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
                self.protocolName = dict["ProtocolName"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
        }
    }
    public var operationTickets: [ListOperationTicketsResponseBody.OperationTickets]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationTickets != nil {
            var tmp : [Any] = []
            for k in self.operationTickets! {
                tmp.append(k.toMap())
            }
            map["OperationTickets"] = tmp
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
        if dict.keys.contains("OperationTickets") && dict["OperationTickets"] != nil {
            var tmp : [ListOperationTicketsResponseBody.OperationTickets] = []
            for v in dict["OperationTickets"] as! [Any] {
                var model = ListOperationTicketsResponseBody.OperationTickets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.operationTickets = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListOperationTicketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationTicketsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOperationTicketsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPoliciesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var policyName: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public var comment: String?

        public var policyId: String?

        public var policyName: String?

        public var priority: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int64
            }
        }
    }
    public var policies: [ListPoliciesResponseBody.Policies]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
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
        if dict.keys.contains("Policies") && dict["Policies"] != nil {
            var tmp : [ListPoliciesResponseBody.Policies] = []
            for v in dict["Policies"] as! [Any] {
                var model = ListPoliciesResponseBody.Policies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policies = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRulesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var ruleName: String?

    public var ruleState: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleState != nil {
            map["RuleState"] = self.ruleState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleState") && dict["RuleState"] != nil {
            self.ruleState = dict["RuleState"] as! String
        }
    }
}

public class ListRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var comment: String?

        public var effectiveEndTime: Int64?

        public var effectiveStartTime: Int64?

        public var ruleId: String?

        public var ruleName: String?

        public var ruleState: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.effectiveEndTime != nil {
                map["EffectiveEndTime"] = self.effectiveEndTime!
            }
            if self.effectiveStartTime != nil {
                map["EffectiveStartTime"] = self.effectiveStartTime!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleState != nil {
                map["RuleState"] = self.ruleState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("EffectiveEndTime") && dict["EffectiveEndTime"] != nil {
                self.effectiveEndTime = dict["EffectiveEndTime"] as! Int64
            }
            if dict.keys.contains("EffectiveStartTime") && dict["EffectiveStartTime"] != nil {
                self.effectiveStartTime = dict["EffectiveStartTime"] as! Int64
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("RuleState") && dict["RuleState"] != nil {
                self.ruleState = dict["RuleState"] as! String
            }
        }
    }
    public var requestId: String?

    public var rules: [ListRulesResponseBody.Rules]?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            var tmp : [ListRulesResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = ListRulesResponseBody.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public class TagKeys : Tea.TeaModel {
        public var tagCount: Int32?

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
            if self.tagCount != nil {
                map["TagCount"] = self.tagCount!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagCount") && dict["TagCount"] != nil {
                self.tagCount = dict["TagCount"] as! Int32
            }
            if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                self.tagKey = dict["TagKey"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tagKeys: [ListTagKeysResponseBody.TagKeys]?

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
        if self.tagKeys != nil {
            var tmp : [Any] = []
            for k in self.tagKeys! {
                tmp.append(k.toMap())
            }
            map["TagKeys"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagKeys") && dict["TagKeys"] != nil {
            var tmp : [ListTagKeysResponseBody.TagKeys] = []
            for v in dict["TagKeys"] as! [Any] {
                var model = ListTagKeysResponseBody.TagKeys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagKeys = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTagKeysResponseBody()
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
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

public class ListUserGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var userGroupName: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupName != nil {
            map["UserGroupName"] = self.userGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
            self.userGroupName = dict["UserGroupName"] as! String
        }
    }
}

public class ListUserGroupsResponseBody : Tea.TeaModel {
    public class UserGroups : Tea.TeaModel {
        public var comment: String?

        public var memberCount: Int32?

        public var userGroupId: String?

        public var userGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.memberCount != nil {
                map["MemberCount"] = self.memberCount!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            if self.userGroupName != nil {
                map["UserGroupName"] = self.userGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("MemberCount") && dict["MemberCount"] != nil {
                self.memberCount = dict["MemberCount"] as! Int32
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
                self.userGroupName = dict["UserGroupName"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

    public var userGroups: [ListUserGroupsResponseBody.UserGroups]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.userGroups != nil {
            var tmp : [Any] = []
            for k in self.userGroups! {
                tmp.append(k.toMap())
            }
            map["UserGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("UserGroups") && dict["UserGroups"] != nil {
            var tmp : [ListUserGroupsResponseBody.UserGroups] = []
            for v in dict["UserGroups"] as! [Any] {
                var model = ListUserGroupsResponseBody.UserGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userGroups = tmp
        }
    }
}

public class ListUserGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUserGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserPublicKeysRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListUserPublicKeysResponseBody : Tea.TeaModel {
    public class PublicKeys : Tea.TeaModel {
        public var comment: String?

        public var fingerPrint: String?

        public var publicKeyId: String?

        public var publicKeyName: String?

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
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.fingerPrint != nil {
                map["FingerPrint"] = self.fingerPrint!
            }
            if self.publicKeyId != nil {
                map["PublicKeyId"] = self.publicKeyId!
            }
            if self.publicKeyName != nil {
                map["PublicKeyName"] = self.publicKeyName!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("FingerPrint") && dict["FingerPrint"] != nil {
                self.fingerPrint = dict["FingerPrint"] as! String
            }
            if dict.keys.contains("PublicKeyId") && dict["PublicKeyId"] != nil {
                self.publicKeyId = dict["PublicKeyId"] as! String
            }
            if dict.keys.contains("PublicKeyName") && dict["PublicKeyName"] != nil {
                self.publicKeyName = dict["PublicKeyName"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var publicKeys: [ListUserPublicKeysResponseBody.PublicKeys]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.publicKeys != nil {
            var tmp : [Any] = []
            for k in self.publicKeys! {
                tmp.append(k.toMap())
            }
            map["PublicKeys"] = tmp
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
        if dict.keys.contains("PublicKeys") && dict["PublicKeys"] != nil {
            var tmp : [ListUserPublicKeysResponseBody.PublicKeys] = []
            for v in dict["PublicKeys"] as! [Any] {
                var model = ListUserPublicKeysResponseBody.PublicKeys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.publicKeys = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListUserPublicKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserPublicKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUserPublicKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var displayName: String?

    public var instanceId: String?

    public var mobile: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var source: String?

    public var sourceUserId: String?

    public var userGroupId: String?

    public var userName: String?

    public var userState: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceUserId != nil {
            map["SourceUserId"] = self.sourceUserId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userState != nil {
            map["UserState"] = self.userState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceUserId") && dict["SourceUserId"] != nil {
            self.sourceUserId = dict["SourceUserId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserState") && dict["UserState"] != nil {
            self.userState = dict["UserState"] as! String
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var comment: String?

        public var displayName: String?

        public var effectiveEndTime: Int64?

        public var effectiveStartTime: Int64?

        public var email: String?

        public var language: String?

        public var languageStatus: String?

        public var mobile: String?

        public var mobileCountryCode: String?

        public var needResetPassword: Bool?

        public var source: String?

        public var sourceUserId: String?

        public var twoFactorMethods: [String]?

        public var twoFactorStatus: String?

        public var userId: String?

        public var userName: String?

        public var userState: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.effectiveEndTime != nil {
                map["EffectiveEndTime"] = self.effectiveEndTime!
            }
            if self.effectiveStartTime != nil {
                map["EffectiveStartTime"] = self.effectiveStartTime!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.languageStatus != nil {
                map["LanguageStatus"] = self.languageStatus!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.mobileCountryCode != nil {
                map["MobileCountryCode"] = self.mobileCountryCode!
            }
            if self.needResetPassword != nil {
                map["NeedResetPassword"] = self.needResetPassword!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceUserId != nil {
                map["SourceUserId"] = self.sourceUserId!
            }
            if self.twoFactorMethods != nil {
                map["TwoFactorMethods"] = self.twoFactorMethods!
            }
            if self.twoFactorStatus != nil {
                map["TwoFactorStatus"] = self.twoFactorStatus!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userState != nil {
                map["UserState"] = self.userState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") && dict["Comment"] != nil {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("EffectiveEndTime") && dict["EffectiveEndTime"] != nil {
                self.effectiveEndTime = dict["EffectiveEndTime"] as! Int64
            }
            if dict.keys.contains("EffectiveStartTime") && dict["EffectiveStartTime"] != nil {
                self.effectiveStartTime = dict["EffectiveStartTime"] as! Int64
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("LanguageStatus") && dict["LanguageStatus"] != nil {
                self.languageStatus = dict["LanguageStatus"] as! String
            }
            if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("MobileCountryCode") && dict["MobileCountryCode"] != nil {
                self.mobileCountryCode = dict["MobileCountryCode"] as! String
            }
            if dict.keys.contains("NeedResetPassword") && dict["NeedResetPassword"] != nil {
                self.needResetPassword = dict["NeedResetPassword"] as! Bool
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceUserId") && dict["SourceUserId"] != nil {
                self.sourceUserId = dict["SourceUserId"] as! String
            }
            if dict.keys.contains("TwoFactorMethods") && dict["TwoFactorMethods"] != nil {
                self.twoFactorMethods = dict["TwoFactorMethods"] as! [String]
            }
            if dict.keys.contains("TwoFactorStatus") && dict["TwoFactorStatus"] != nil {
                self.twoFactorStatus = dict["TwoFactorStatus"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserState") && dict["UserState"] != nil {
                self.userState = dict["UserState"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LockUsersRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var userIds: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! String
        }
    }
}

public class LockUsersResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [LockUsersResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [LockUsersResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = LockUsersResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class LockUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = LockUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDatabaseRequest : Tea.TeaModel {
    public var activeAddressType: String?

    public var comment: String?

    public var databaseId: String?

    public var databaseName: String?

    public var databasePort: String?

    public var databasePrivateAddress: String?

    public var databasePublicAddress: String?

    public var instanceId: String?

    public var networkDomainId: String?

    public var regionId: String?

    public var sourceInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activeAddressType != nil {
            map["ActiveAddressType"] = self.activeAddressType!
        }
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.databaseId != nil {
            map["DatabaseId"] = self.databaseId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.databasePort != nil {
            map["DatabasePort"] = self.databasePort!
        }
        if self.databasePrivateAddress != nil {
            map["DatabasePrivateAddress"] = self.databasePrivateAddress!
        }
        if self.databasePublicAddress != nil {
            map["DatabasePublicAddress"] = self.databasePublicAddress!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceInstanceId != nil {
            map["SourceInstanceId"] = self.sourceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
            self.activeAddressType = dict["ActiveAddressType"] as! String
        }
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
            self.databaseId = dict["DatabaseId"] as! String
        }
        if dict.keys.contains("DatabaseName") && dict["DatabaseName"] != nil {
            self.databaseName = dict["DatabaseName"] as! String
        }
        if dict.keys.contains("DatabasePort") && dict["DatabasePort"] != nil {
            self.databasePort = dict["DatabasePort"] as! String
        }
        if dict.keys.contains("DatabasePrivateAddress") && dict["DatabasePrivateAddress"] != nil {
            self.databasePrivateAddress = dict["DatabasePrivateAddress"] as! String
        }
        if dict.keys.contains("DatabasePublicAddress") && dict["DatabasePublicAddress"] != nil {
            self.databasePublicAddress = dict["DatabasePublicAddress"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
            self.sourceInstanceId = dict["SourceInstanceId"] as! String
        }
    }
}

public class ModifyDatabaseResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDatabaseAccountRequest : Tea.TeaModel {
    public var databaseAccountId: String?

    public var databaseAccountName: String?

    public var databaseSchema: String?

    public var instanceId: String?

    public var password: String?

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
        if self.databaseAccountId != nil {
            map["DatabaseAccountId"] = self.databaseAccountId!
        }
        if self.databaseAccountName != nil {
            map["DatabaseAccountName"] = self.databaseAccountName!
        }
        if self.databaseSchema != nil {
            map["DatabaseSchema"] = self.databaseSchema!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseAccountId") && dict["DatabaseAccountId"] != nil {
            self.databaseAccountId = dict["DatabaseAccountId"] as! String
        }
        if dict.keys.contains("DatabaseAccountName") && dict["DatabaseAccountName"] != nil {
            self.databaseAccountName = dict["DatabaseAccountName"] as! String
        }
        if dict.keys.contains("DatabaseSchema") && dict["DatabaseSchema"] != nil {
            self.databaseSchema = dict["DatabaseSchema"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyDatabaseAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyDatabaseAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDatabaseAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyHostRequest : Tea.TeaModel {
    public var comment: String?

    public var hostId: String?

    public var hostName: String?

    public var hostPrivateAddress: String?

    public var hostPublicAddress: String?

    public var instanceId: String?

    public var networkDomainId: String?

    public var OSType: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.hostId != nil {
            map["HostId"] = self.hostId!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.hostPrivateAddress != nil {
            map["HostPrivateAddress"] = self.hostPrivateAddress!
        }
        if self.hostPublicAddress != nil {
            map["HostPublicAddress"] = self.hostPublicAddress!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.OSType != nil {
            map["OSType"] = self.OSType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("HostId") && dict["HostId"] != nil {
            self.hostId = dict["HostId"] as! String
        }
        if dict.keys.contains("HostName") && dict["HostName"] != nil {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("HostPrivateAddress") && dict["HostPrivateAddress"] != nil {
            self.hostPrivateAddress = dict["HostPrivateAddress"] as! String
        }
        if dict.keys.contains("HostPublicAddress") && dict["HostPublicAddress"] != nil {
            self.hostPublicAddress = dict["HostPublicAddress"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("OSType") && dict["OSType"] != nil {
            self.OSType = dict["OSType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyHostResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyHostAccountRequest : Tea.TeaModel {
    public var hostAccountId: String?

    public var hostAccountName: String?

    public var hostShareKeyId: String?

    public var instanceId: String?

    public var passPhrase: String?

    public var password: String?

    public var privateKey: String?

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
        if self.hostAccountId != nil {
            map["HostAccountId"] = self.hostAccountId!
        }
        if self.hostAccountName != nil {
            map["HostAccountName"] = self.hostAccountName!
        }
        if self.hostShareKeyId != nil {
            map["HostShareKeyId"] = self.hostShareKeyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.passPhrase != nil {
            map["PassPhrase"] = self.passPhrase!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
            self.hostAccountId = dict["HostAccountId"] as! String
        }
        if dict.keys.contains("HostAccountName") && dict["HostAccountName"] != nil {
            self.hostAccountName = dict["HostAccountName"] as! String
        }
        if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
            self.hostShareKeyId = dict["HostShareKeyId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PassPhrase") && dict["PassPhrase"] != nil {
            self.passPhrase = dict["PassPhrase"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyHostAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyHostAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHostAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyHostAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyHostGroupRequest : Tea.TeaModel {
    public var comment: String?

    public var hostGroupId: String?

    public var hostGroupName: String?

    public var instanceId: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.hostGroupName != nil {
            map["HostGroupName"] = self.hostGroupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
            self.hostGroupName = dict["HostGroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyHostGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHostGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyHostShareKeyRequest : Tea.TeaModel {
    public var hostShareKeyId: String?

    public var hostShareKeyName: String?

    public var instanceId: String?

    public var passPhrase: String?

    public var privateKey: String?

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
        if self.hostShareKeyId != nil {
            map["HostShareKeyId"] = self.hostShareKeyId!
        }
        if self.hostShareKeyName != nil {
            map["HostShareKeyName"] = self.hostShareKeyName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.passPhrase != nil {
            map["PassPhrase"] = self.passPhrase!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostShareKeyId") && dict["HostShareKeyId"] != nil {
            self.hostShareKeyId = dict["HostShareKeyId"] as! String
        }
        if dict.keys.contains("HostShareKeyName") && dict["HostShareKeyName"] != nil {
            self.hostShareKeyName = dict["HostShareKeyName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PassPhrase") && dict["PassPhrase"] != nil {
            self.passPhrase = dict["PassPhrase"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyHostShareKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyHostShareKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHostShareKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyHostShareKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyHostsActiveAddressTypeRequest : Tea.TeaModel {
    public var activeAddressType: String?

    public var hostIds: String?

    public var instanceId: String?

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
        if self.activeAddressType != nil {
            map["ActiveAddressType"] = self.activeAddressType!
        }
        if self.hostIds != nil {
            map["HostIds"] = self.hostIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActiveAddressType") && dict["ActiveAddressType"] != nil {
            self.activeAddressType = dict["ActiveAddressType"] as! String
        }
        if dict.keys.contains("HostIds") && dict["HostIds"] != nil {
            self.hostIds = dict["HostIds"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyHostsActiveAddressTypeResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var hostId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [ModifyHostsActiveAddressTypeResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [ModifyHostsActiveAddressTypeResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = ModifyHostsActiveAddressTypeResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class ModifyHostsActiveAddressTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHostsActiveAddressTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyHostsActiveAddressTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyHostsPortRequest : Tea.TeaModel {
    public var hostIds: String?

    public var instanceId: String?

    public var port: String?

    public var protocolName: String?

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
        if self.hostIds != nil {
            map["HostIds"] = self.hostIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.protocolName != nil {
            map["ProtocolName"] = self.protocolName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostIds") && dict["HostIds"] != nil {
            self.hostIds = dict["HostIds"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("ProtocolName") && dict["ProtocolName"] != nil {
            self.protocolName = dict["ProtocolName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyHostsPortResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var hostId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [ModifyHostsPortResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [ModifyHostsPortResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = ModifyHostsPortResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class ModifyHostsPortResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHostsPortResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyHostsPortResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceADAuthServerRequest : Tea.TeaModel {
    public var account: String?

    public var baseDN: String?

    public var domain: String?

    public var emailMapping: String?

    public var filter: String?

    public var instanceId: String?

    public var isSSL: String?

    public var mobileMapping: String?

    public var nameMapping: String?

    public var password: String?

    public var port: String?

    public var regionId: String?

    public var server: String?

    public var standbyServer: String?

    public override init() {
        super.init()
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
            map["Account"] = self.account!
        }
        if self.baseDN != nil {
            map["BaseDN"] = self.baseDN!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.emailMapping != nil {
            map["EmailMapping"] = self.emailMapping!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSSL != nil {
            map["IsSSL"] = self.isSSL!
        }
        if self.mobileMapping != nil {
            map["MobileMapping"] = self.mobileMapping!
        }
        if self.nameMapping != nil {
            map["NameMapping"] = self.nameMapping!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.server != nil {
            map["Server"] = self.server!
        }
        if self.standbyServer != nil {
            map["StandbyServer"] = self.standbyServer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") && dict["Account"] != nil {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("BaseDN") && dict["BaseDN"] != nil {
            self.baseDN = dict["BaseDN"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EmailMapping") && dict["EmailMapping"] != nil {
            self.emailMapping = dict["EmailMapping"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSSL") && dict["IsSSL"] != nil {
            self.isSSL = dict["IsSSL"] as! String
        }
        if dict.keys.contains("MobileMapping") && dict["MobileMapping"] != nil {
            self.mobileMapping = dict["MobileMapping"] as! String
        }
        if dict.keys.contains("NameMapping") && dict["NameMapping"] != nil {
            self.nameMapping = dict["NameMapping"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Server") && dict["Server"] != nil {
            self.server = dict["Server"] as! String
        }
        if dict.keys.contains("StandbyServer") && dict["StandbyServer"] != nil {
            self.standbyServer = dict["StandbyServer"] as! String
        }
    }
}

public class ModifyInstanceADAuthServerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyInstanceADAuthServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceADAuthServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyInstanceADAuthServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceAttributeRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyInstanceAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceLDAPAuthServerRequest : Tea.TeaModel {
    public var account: String?

    public var baseDN: String?

    public var emailMapping: String?

    public var filter: String?

    public var instanceId: String?

    public var isSSL: String?

    public var loginNameMapping: String?

    public var mobileMapping: String?

    public var nameMapping: String?

    public var password: String?

    public var port: String?

    public var regionId: String?

    public var server: String?

    public var standbyServer: String?

    public override init() {
        super.init()
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
            map["Account"] = self.account!
        }
        if self.baseDN != nil {
            map["BaseDN"] = self.baseDN!
        }
        if self.emailMapping != nil {
            map["EmailMapping"] = self.emailMapping!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSSL != nil {
            map["IsSSL"] = self.isSSL!
        }
        if self.loginNameMapping != nil {
            map["LoginNameMapping"] = self.loginNameMapping!
        }
        if self.mobileMapping != nil {
            map["MobileMapping"] = self.mobileMapping!
        }
        if self.nameMapping != nil {
            map["NameMapping"] = self.nameMapping!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.server != nil {
            map["Server"] = self.server!
        }
        if self.standbyServer != nil {
            map["StandbyServer"] = self.standbyServer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") && dict["Account"] != nil {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("BaseDN") && dict["BaseDN"] != nil {
            self.baseDN = dict["BaseDN"] as! String
        }
        if dict.keys.contains("EmailMapping") && dict["EmailMapping"] != nil {
            self.emailMapping = dict["EmailMapping"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSSL") && dict["IsSSL"] != nil {
            self.isSSL = dict["IsSSL"] as! String
        }
        if dict.keys.contains("LoginNameMapping") && dict["LoginNameMapping"] != nil {
            self.loginNameMapping = dict["LoginNameMapping"] as! String
        }
        if dict.keys.contains("MobileMapping") && dict["MobileMapping"] != nil {
            self.mobileMapping = dict["MobileMapping"] as! String
        }
        if dict.keys.contains("NameMapping") && dict["NameMapping"] != nil {
            self.nameMapping = dict["NameMapping"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Server") && dict["Server"] != nil {
            self.server = dict["Server"] as! String
        }
        if dict.keys.contains("StandbyServer") && dict["StandbyServer"] != nil {
            self.standbyServer = dict["StandbyServer"] as! String
        }
    }
}

public class ModifyInstanceLDAPAuthServerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyInstanceLDAPAuthServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceLDAPAuthServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyInstanceLDAPAuthServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyInstanceTwoFactorRequest : Tea.TeaModel {
    public var enableTwoFactor: String?

    public var instanceId: String?

    public var regionId: String?

    public var skipTwoFactorTime: String?

    public var twoFactorMethods: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableTwoFactor != nil {
            map["EnableTwoFactor"] = self.enableTwoFactor!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.skipTwoFactorTime != nil {
            map["SkipTwoFactorTime"] = self.skipTwoFactorTime!
        }
        if self.twoFactorMethods != nil {
            map["TwoFactorMethods"] = self.twoFactorMethods!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableTwoFactor") && dict["EnableTwoFactor"] != nil {
            self.enableTwoFactor = dict["EnableTwoFactor"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SkipTwoFactorTime") && dict["SkipTwoFactorTime"] != nil {
            self.skipTwoFactorTime = dict["SkipTwoFactorTime"] as! String
        }
        if dict.keys.contains("TwoFactorMethods") && dict["TwoFactorMethods"] != nil {
            self.twoFactorMethods = dict["TwoFactorMethods"] as! String
        }
    }
}

public class ModifyInstanceTwoFactorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyInstanceTwoFactorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceTwoFactorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyInstanceTwoFactorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyNetworkDomainRequest : Tea.TeaModel {
    public class Proxies : Tea.TeaModel {
        public var address: String?

        public var nodeType: String?

        public var password: String?

        public var port: Int32?

        public var proxyType: String?

        public var user: String?

        public override init() {
            super.init()
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
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.proxyType != nil {
                map["ProxyType"] = self.proxyType!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("NodeType") && dict["NodeType"] != nil {
                self.nodeType = dict["NodeType"] as! String
            }
            if dict.keys.contains("Password") && dict["Password"] != nil {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ProxyType") && dict["ProxyType"] != nil {
                self.proxyType = dict["ProxyType"] as! String
            }
            if dict.keys.contains("User") && dict["User"] != nil {
                self.user = dict["User"] as! String
            }
        }
    }
    public var comment: String?

    public var instanceId: String?

    public var networkDomainId: String?

    public var networkDomainName: String?

    public var networkDomainType: String?

    public var proxies: [ModifyNetworkDomainRequest.Proxies]?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.networkDomainName != nil {
            map["NetworkDomainName"] = self.networkDomainName!
        }
        if self.networkDomainType != nil {
            map["NetworkDomainType"] = self.networkDomainType!
        }
        if self.proxies != nil {
            var tmp : [Any] = []
            for k in self.proxies! {
                tmp.append(k.toMap())
            }
            map["Proxies"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("NetworkDomainName") && dict["NetworkDomainName"] != nil {
            self.networkDomainName = dict["NetworkDomainName"] as! String
        }
        if dict.keys.contains("NetworkDomainType") && dict["NetworkDomainType"] != nil {
            self.networkDomainType = dict["NetworkDomainType"] as! String
        }
        if dict.keys.contains("Proxies") && dict["Proxies"] != nil {
            var tmp : [ModifyNetworkDomainRequest.Proxies] = []
            for v in dict["Proxies"] as! [Any] {
                var model = ModifyNetworkDomainRequest.Proxies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.proxies = tmp
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyNetworkDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyNetworkDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNetworkDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyNetworkDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPolicyRequest : Tea.TeaModel {
    public var comment: String?

    public var instanceId: String?

    public var policyId: String?

    public var policyName: String?

    public var priority: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyRuleRequest : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var databaseAccountIds: [String]?

        public var databaseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.databaseAccountIds != nil {
                map["DatabaseAccountIds"] = self.databaseAccountIds!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DatabaseAccountIds") && dict["DatabaseAccountIds"] != nil {
                self.databaseAccountIds = dict["DatabaseAccountIds"] as! [String]
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
        }
    }
    public class HostGroups : Tea.TeaModel {
        public var hostAccountNames: [String]?

        public var hostGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostAccountNames != nil {
                map["HostAccountNames"] = self.hostAccountNames!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostAccountNames") && dict["HostAccountNames"] != nil {
                self.hostAccountNames = dict["HostAccountNames"] as! [String]
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
        }
    }
    public class Hosts : Tea.TeaModel {
        public var hostAccountIds: [String]?

        public var hostId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostAccountIds != nil {
                map["HostAccountIds"] = self.hostAccountIds!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostAccountIds") && dict["HostAccountIds"] != nil {
                self.hostAccountIds = dict["HostAccountIds"] as! [String]
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
        }
    }
    public var comment: String?

    public var databases: [ModifyRuleRequest.Databases]?

    public var effectiveEndTime: Int64?

    public var effectiveStartTime: Int64?

    public var hostGroups: [ModifyRuleRequest.HostGroups]?

    public var hosts: [ModifyRuleRequest.Hosts]?

    public var instanceId: String?

    public var regionId: String?

    public var ruleId: String?

    public var ruleName: String?

    public var userGroupIds: [String]?

    public var userIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
        }
        if self.effectiveEndTime != nil {
            map["EffectiveEndTime"] = self.effectiveEndTime!
        }
        if self.effectiveStartTime != nil {
            map["EffectiveStartTime"] = self.effectiveStartTime!
        }
        if self.hostGroups != nil {
            var tmp : [Any] = []
            for k in self.hostGroups! {
                tmp.append(k.toMap())
            }
            map["HostGroups"] = tmp
        }
        if self.hosts != nil {
            var tmp : [Any] = []
            for k in self.hosts! {
                tmp.append(k.toMap())
            }
            map["Hosts"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [ModifyRuleRequest.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = ModifyRuleRequest.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("EffectiveEndTime") && dict["EffectiveEndTime"] != nil {
            self.effectiveEndTime = dict["EffectiveEndTime"] as! Int64
        }
        if dict.keys.contains("EffectiveStartTime") && dict["EffectiveStartTime"] != nil {
            self.effectiveStartTime = dict["EffectiveStartTime"] as! Int64
        }
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            var tmp : [ModifyRuleRequest.HostGroups] = []
            for v in dict["HostGroups"] as! [Any] {
                var model = ModifyRuleRequest.HostGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostGroups = tmp
        }
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            var tmp : [ModifyRuleRequest.Hosts] = []
            for v in dict["Hosts"] as! [Any] {
                var model = ModifyRuleRequest.Hosts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hosts = tmp
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class ModifyRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserRequest : Tea.TeaModel {
    public var comment: String?

    public var displayName: String?

    public var effectiveEndTime: Int64?

    public var effectiveStartTime: Int64?

    public var email: String?

    public var instanceId: String?

    public var language: String?

    public var languageStatus: String?

    public var mobile: String?

    public var mobileCountryCode: String?

    public var needResetPassword: Bool?

    public var password: String?

    public var regionId: String?

    public var twoFactorMethods: String?

    public var twoFactorStatus: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.effectiveEndTime != nil {
            map["EffectiveEndTime"] = self.effectiveEndTime!
        }
        if self.effectiveStartTime != nil {
            map["EffectiveStartTime"] = self.effectiveStartTime!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.languageStatus != nil {
            map["LanguageStatus"] = self.languageStatus!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.mobileCountryCode != nil {
            map["MobileCountryCode"] = self.mobileCountryCode!
        }
        if self.needResetPassword != nil {
            map["NeedResetPassword"] = self.needResetPassword!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.twoFactorMethods != nil {
            map["TwoFactorMethods"] = self.twoFactorMethods!
        }
        if self.twoFactorStatus != nil {
            map["TwoFactorStatus"] = self.twoFactorStatus!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EffectiveEndTime") && dict["EffectiveEndTime"] != nil {
            self.effectiveEndTime = dict["EffectiveEndTime"] as! Int64
        }
        if dict.keys.contains("EffectiveStartTime") && dict["EffectiveStartTime"] != nil {
            self.effectiveStartTime = dict["EffectiveStartTime"] as! Int64
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("LanguageStatus") && dict["LanguageStatus"] != nil {
            self.languageStatus = dict["LanguageStatus"] as! String
        }
        if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("MobileCountryCode") && dict["MobileCountryCode"] != nil {
            self.mobileCountryCode = dict["MobileCountryCode"] as! String
        }
        if dict.keys.contains("NeedResetPassword") && dict["NeedResetPassword"] != nil {
            self.needResetPassword = dict["NeedResetPassword"] as! Bool
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TwoFactorMethods") && dict["TwoFactorMethods"] != nil {
            self.twoFactorMethods = dict["TwoFactorMethods"] as! String
        }
        if dict.keys.contains("TwoFactorStatus") && dict["TwoFactorStatus"] != nil {
            self.twoFactorStatus = dict["TwoFactorStatus"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ModifyUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserGroupRequest : Tea.TeaModel {
    public var comment: String?

    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public var userGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userGroupName != nil {
            map["UserGroupName"] = self.userGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
            self.userGroupName = dict["UserGroupName"] as! String
        }
    }
}

public class ModifyUserGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserPublicKeyRequest : Tea.TeaModel {
    public var comment: String?

    public var instanceId: String?

    public var publicKey: String?

    public var publicKeyId: String?

    public var publicKeyName: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.publicKey != nil {
            map["PublicKey"] = self.publicKey!
        }
        if self.publicKeyId != nil {
            map["PublicKeyId"] = self.publicKeyId!
        }
        if self.publicKeyName != nil {
            map["PublicKeyName"] = self.publicKeyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") && dict["Comment"] != nil {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
            self.publicKey = dict["PublicKey"] as! String
        }
        if dict.keys.contains("PublicKeyId") && dict["PublicKeyId"] != nil {
            self.publicKeyId = dict["PublicKeyId"] as! String
        }
        if dict.keys.contains("PublicKeyName") && dict["PublicKeyName"] != nil {
            self.publicKeyName = dict["PublicKeyName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyUserPublicKeyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ModifyUserPublicKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserPublicKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyUserPublicKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveDatabasesToNetworkDomainRequest : Tea.TeaModel {
    public var databaseIds: [String]?

    public var instanceId: String?

    public var networkDomainId: String?

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
        if self.databaseIds != nil {
            map["DatabaseIds"] = self.databaseIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseIds") && dict["DatabaseIds"] != nil {
            self.databaseIds = dict["DatabaseIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class MoveDatabasesToNetworkDomainResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var databaseId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [MoveDatabasesToNetworkDomainResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [MoveDatabasesToNetworkDomainResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = MoveDatabasesToNetworkDomainResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class MoveDatabasesToNetworkDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveDatabasesToNetworkDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = MoveDatabasesToNetworkDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveHostsToNetworkDomainRequest : Tea.TeaModel {
    public var hostIds: [String]?

    public var instanceId: String?

    public var networkDomainId: String?

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
        if self.hostIds != nil {
            map["HostIds"] = self.hostIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkDomainId != nil {
            map["NetworkDomainId"] = self.networkDomainId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostIds") && dict["HostIds"] != nil {
            self.hostIds = dict["HostIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkDomainId") && dict["NetworkDomainId"] != nil {
            self.networkDomainId = dict["NetworkDomainId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class MoveHostsToNetworkDomainResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var hostId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [MoveHostsToNetworkDomainResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [MoveHostsToNetworkDomainResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = MoveHostsToNetworkDomainResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class MoveHostsToNetworkDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveHostsToNetworkDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = MoveHostsToNetworkDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
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

public class RejectApproveCommandRequest : Tea.TeaModel {
    public var commandId: String?

    public var instanceId: String?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandId") && dict["CommandId"] != nil {
            self.commandId = dict["CommandId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RejectApproveCommandResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RejectApproveCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RejectApproveCommandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RejectApproveCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RejectOperationTicketRequest : Tea.TeaModel {
    public var instanceId: String?

    public var operationTicketId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.operationTicketId != nil {
            map["OperationTicketId"] = self.operationTicketId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OperationTicketId") && dict["OperationTicketId"] != nil {
            self.operationTicketId = dict["OperationTicketId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RejectOperationTicketResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RejectOperationTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RejectOperationTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RejectOperationTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveDatabasesFromGroupRequest : Tea.TeaModel {
    public var databaseIds: [String]?

    public var hostGroupId: String?

    public var instanceId: String?

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
        if self.databaseIds != nil {
            map["DatabaseIds"] = self.databaseIds!
        }
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatabaseIds") && dict["DatabaseIds"] != nil {
            self.databaseIds = dict["DatabaseIds"] as! [String]
        }
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RemoveDatabasesFromGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var databaseId: String?

        public var hostGroupId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [RemoveDatabasesFromGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [RemoveDatabasesFromGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = RemoveDatabasesFromGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class RemoveDatabasesFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveDatabasesFromGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveDatabasesFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveHostsFromGroupRequest : Tea.TeaModel {
    public var hostGroupId: String?

    public var hostIds: String?

    public var instanceId: String?

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
        if self.hostGroupId != nil {
            map["HostGroupId"] = self.hostGroupId!
        }
        if self.hostIds != nil {
            map["HostIds"] = self.hostIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
            self.hostGroupId = dict["HostGroupId"] as! String
        }
        if dict.keys.contains("HostIds") && dict["HostIds"] != nil {
            self.hostIds = dict["HostIds"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RemoveHostsFromGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var hostGroupId: String?

        public var hostId: String?

        public var message: String?

        public override init() {
            super.init()
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
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [RemoveHostsFromGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [RemoveHostsFromGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = RemoveHostsFromGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class RemoveHostsFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveHostsFromGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveHostsFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUsersFromGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var userGroupId: String?

    public var userIds: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! String
        }
    }
}

public class RemoveUsersFromGroupResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public var userGroupId: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [RemoveUsersFromGroupResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [RemoveUsersFromGroupResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = RemoveUsersFromGroupResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class RemoveUsersFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUsersFromGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveUsersFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewAssetOperationTokenRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var tokenId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tokenId != nil {
            map["TokenId"] = self.tokenId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TokenId") && dict["TokenId"] != nil {
            self.tokenId = dict["TokenId"] as! String
        }
    }
}

public class RenewAssetOperationTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RenewAssetOperationTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewAssetOperationTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RenewAssetOperationTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetHostAccountCredentialRequest : Tea.TeaModel {
    public var credentialType: String?

    public var hostAccountId: String?

    public var instanceId: String?

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
        if self.credentialType != nil {
            map["CredentialType"] = self.credentialType!
        }
        if self.hostAccountId != nil {
            map["HostAccountId"] = self.hostAccountId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialType") && dict["CredentialType"] != nil {
            self.credentialType = dict["CredentialType"] as! String
        }
        if dict.keys.contains("HostAccountId") && dict["HostAccountId"] != nil {
            self.hostAccountId = dict["HostAccountId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResetHostAccountCredentialResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ResetHostAccountCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetHostAccountCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ResetHostAccountCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPolicyAccessTimeRangeConfigRequest : Tea.TeaModel {
    public class AccessTimeRangeConfig : Tea.TeaModel {
        public class EffectiveTime : Tea.TeaModel {
            public var days: [Int32]?

            public var hours: [Int32]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.days != nil {
                    map["Days"] = self.days!
                }
                if self.hours != nil {
                    map["Hours"] = self.hours!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Days") && dict["Days"] != nil {
                    self.days = dict["Days"] as! [Int32]
                }
                if dict.keys.contains("Hours") && dict["Hours"] != nil {
                    self.hours = dict["Hours"] as! [Int32]
                }
            }
        }
        public var effectiveTime: [SetPolicyAccessTimeRangeConfigRequest.AccessTimeRangeConfig.EffectiveTime]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.effectiveTime != nil {
                var tmp : [Any] = []
                for k in self.effectiveTime! {
                    tmp.append(k.toMap())
                }
                map["EffectiveTime"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EffectiveTime") && dict["EffectiveTime"] != nil {
                var tmp : [SetPolicyAccessTimeRangeConfigRequest.AccessTimeRangeConfig.EffectiveTime] = []
                for v in dict["EffectiveTime"] as! [Any] {
                    var model = SetPolicyAccessTimeRangeConfigRequest.AccessTimeRangeConfig.EffectiveTime()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.effectiveTime = tmp
            }
        }
    }
    public var accessTimeRangeConfig: SetPolicyAccessTimeRangeConfigRequest.AccessTimeRangeConfig?

    public var instanceId: String?

    public var policyId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessTimeRangeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTimeRangeConfig != nil {
            map["AccessTimeRangeConfig"] = self.accessTimeRangeConfig?.toMap()
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessTimeRangeConfig") && dict["AccessTimeRangeConfig"] != nil {
            var model = SetPolicyAccessTimeRangeConfigRequest.AccessTimeRangeConfig()
            model.fromMap(dict["AccessTimeRangeConfig"] as! [String: Any])
            self.accessTimeRangeConfig = model
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyAccessTimeRangeConfigShrinkRequest : Tea.TeaModel {
    public var accessTimeRangeConfigShrink: String?

    public var instanceId: String?

    public var policyId: String?

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
        if self.accessTimeRangeConfigShrink != nil {
            map["AccessTimeRangeConfig"] = self.accessTimeRangeConfigShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessTimeRangeConfig") && dict["AccessTimeRangeConfig"] != nil {
            self.accessTimeRangeConfigShrink = dict["AccessTimeRangeConfig"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyAccessTimeRangeConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPolicyAccessTimeRangeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPolicyAccessTimeRangeConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPolicyAccessTimeRangeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPolicyApprovalConfigRequest : Tea.TeaModel {
    public class ApprovalConfig : Tea.TeaModel {
        public var switchStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.switchStatus != nil {
                map["SwitchStatus"] = self.switchStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SwitchStatus") && dict["SwitchStatus"] != nil {
                self.switchStatus = dict["SwitchStatus"] as! String
            }
        }
    }
    public var approvalConfig: SetPolicyApprovalConfigRequest.ApprovalConfig?

    public var instanceId: String?

    public var policyId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.approvalConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalConfig != nil {
            map["ApprovalConfig"] = self.approvalConfig?.toMap()
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalConfig") && dict["ApprovalConfig"] != nil {
            var model = SetPolicyApprovalConfigRequest.ApprovalConfig()
            model.fromMap(dict["ApprovalConfig"] as! [String: Any])
            self.approvalConfig = model
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyApprovalConfigShrinkRequest : Tea.TeaModel {
    public var approvalConfigShrink: String?

    public var instanceId: String?

    public var policyId: String?

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
        if self.approvalConfigShrink != nil {
            map["ApprovalConfig"] = self.approvalConfigShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalConfig") && dict["ApprovalConfig"] != nil {
            self.approvalConfigShrink = dict["ApprovalConfig"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyApprovalConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPolicyApprovalConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPolicyApprovalConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPolicyApprovalConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPolicyAssetScopeRequest : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public var accountScopeType: String?

        public var databaseAccountIds: [String]?

        public var databaseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountScopeType != nil {
                map["AccountScopeType"] = self.accountScopeType!
            }
            if self.databaseAccountIds != nil {
                map["DatabaseAccountIds"] = self.databaseAccountIds!
            }
            if self.databaseId != nil {
                map["DatabaseId"] = self.databaseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountScopeType") && dict["AccountScopeType"] != nil {
                self.accountScopeType = dict["AccountScopeType"] as! String
            }
            if dict.keys.contains("DatabaseAccountIds") && dict["DatabaseAccountIds"] != nil {
                self.databaseAccountIds = dict["DatabaseAccountIds"] as! [String]
            }
            if dict.keys.contains("DatabaseId") && dict["DatabaseId"] != nil {
                self.databaseId = dict["DatabaseId"] as! String
            }
        }
    }
    public class HostGroups : Tea.TeaModel {
        public var accountNames: [String]?

        public var accountScopeType: String?

        public var hostGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountNames != nil {
                map["AccountNames"] = self.accountNames!
            }
            if self.accountScopeType != nil {
                map["AccountScopeType"] = self.accountScopeType!
            }
            if self.hostGroupId != nil {
                map["HostGroupId"] = self.hostGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountNames") && dict["AccountNames"] != nil {
                self.accountNames = dict["AccountNames"] as! [String]
            }
            if dict.keys.contains("AccountScopeType") && dict["AccountScopeType"] != nil {
                self.accountScopeType = dict["AccountScopeType"] as! String
            }
            if dict.keys.contains("HostGroupId") && dict["HostGroupId"] != nil {
                self.hostGroupId = dict["HostGroupId"] as! String
            }
        }
    }
    public class Hosts : Tea.TeaModel {
        public var accountScopeType: String?

        public var hostAccountIds: [String]?

        public var hostId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountScopeType != nil {
                map["AccountScopeType"] = self.accountScopeType!
            }
            if self.hostAccountIds != nil {
                map["HostAccountIds"] = self.hostAccountIds!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountScopeType") && dict["AccountScopeType"] != nil {
                self.accountScopeType = dict["AccountScopeType"] as! String
            }
            if dict.keys.contains("HostAccountIds") && dict["HostAccountIds"] != nil {
                self.hostAccountIds = dict["HostAccountIds"] as! [String]
            }
            if dict.keys.contains("HostId") && dict["HostId"] != nil {
                self.hostId = dict["HostId"] as! String
            }
        }
    }
    public var databases: [SetPolicyAssetScopeRequest.Databases]?

    public var hostGroups: [SetPolicyAssetScopeRequest.HostGroups]?

    public var hosts: [SetPolicyAssetScopeRequest.Hosts]?

    public var instanceId: String?

    public var policyId: String?

    public var regionId: String?

    public var scopeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
        }
        if self.hostGroups != nil {
            var tmp : [Any] = []
            for k in self.hostGroups! {
                tmp.append(k.toMap())
            }
            map["HostGroups"] = tmp
        }
        if self.hosts != nil {
            var tmp : [Any] = []
            for k in self.hosts! {
                tmp.append(k.toMap())
            }
            map["Hosts"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scopeType != nil {
            map["ScopeType"] = self.scopeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var tmp : [SetPolicyAssetScopeRequest.Databases] = []
            for v in dict["Databases"] as! [Any] {
                var model = SetPolicyAssetScopeRequest.Databases()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.databases = tmp
        }
        if dict.keys.contains("HostGroups") && dict["HostGroups"] != nil {
            var tmp : [SetPolicyAssetScopeRequest.HostGroups] = []
            for v in dict["HostGroups"] as! [Any] {
                var model = SetPolicyAssetScopeRequest.HostGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostGroups = tmp
        }
        if dict.keys.contains("Hosts") && dict["Hosts"] != nil {
            var tmp : [SetPolicyAssetScopeRequest.Hosts] = []
            for v in dict["Hosts"] as! [Any] {
                var model = SetPolicyAssetScopeRequest.Hosts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hosts = tmp
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
            self.scopeType = dict["ScopeType"] as! String
        }
    }
}

public class SetPolicyAssetScopeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPolicyAssetScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPolicyAssetScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPolicyAssetScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPolicyCommandConfigRequest : Tea.TeaModel {
    public class CommandConfig : Tea.TeaModel {
        public class Approval : Tea.TeaModel {
            public var commands: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commands != nil {
                    map["Commands"] = self.commands!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Commands") && dict["Commands"] != nil {
                    self.commands = dict["Commands"] as! [String]
                }
            }
        }
        public class Deny : Tea.TeaModel {
            public var aclType: String?

            public var commands: [String]?

            public override init() {
                super.init()
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
                if self.commands != nil {
                    map["Commands"] = self.commands!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AclType") && dict["AclType"] != nil {
                    self.aclType = dict["AclType"] as! String
                }
                if dict.keys.contains("Commands") && dict["Commands"] != nil {
                    self.commands = dict["Commands"] as! [String]
                }
            }
        }
        public var approval: SetPolicyCommandConfigRequest.CommandConfig.Approval?

        public var deny: SetPolicyCommandConfigRequest.CommandConfig.Deny?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.approval?.validate()
            try self.deny?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approval != nil {
                map["Approval"] = self.approval?.toMap()
            }
            if self.deny != nil {
                map["Deny"] = self.deny?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Approval") && dict["Approval"] != nil {
                var model = SetPolicyCommandConfigRequest.CommandConfig.Approval()
                model.fromMap(dict["Approval"] as! [String: Any])
                self.approval = model
            }
            if dict.keys.contains("Deny") && dict["Deny"] != nil {
                var model = SetPolicyCommandConfigRequest.CommandConfig.Deny()
                model.fromMap(dict["Deny"] as! [String: Any])
                self.deny = model
            }
        }
    }
    public var commandConfig: SetPolicyCommandConfigRequest.CommandConfig?

    public var instanceId: String?

    public var policyId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.commandConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandConfig != nil {
            map["CommandConfig"] = self.commandConfig?.toMap()
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandConfig") && dict["CommandConfig"] != nil {
            var model = SetPolicyCommandConfigRequest.CommandConfig()
            model.fromMap(dict["CommandConfig"] as! [String: Any])
            self.commandConfig = model
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyCommandConfigShrinkRequest : Tea.TeaModel {
    public var commandConfigShrink: String?

    public var instanceId: String?

    public var policyId: String?

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
        if self.commandConfigShrink != nil {
            map["CommandConfig"] = self.commandConfigShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandConfig") && dict["CommandConfig"] != nil {
            self.commandConfigShrink = dict["CommandConfig"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyCommandConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPolicyCommandConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPolicyCommandConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPolicyCommandConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPolicyIPAclConfigRequest : Tea.TeaModel {
    public class IPAclConfig : Tea.TeaModel {
        public var aclType: String?

        public var IPs: [String]?

        public override init() {
            super.init()
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
            if self.IPs != nil {
                map["IPs"] = self.IPs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclType") && dict["AclType"] != nil {
                self.aclType = dict["AclType"] as! String
            }
            if dict.keys.contains("IPs") && dict["IPs"] != nil {
                self.IPs = dict["IPs"] as! [String]
            }
        }
    }
    public var IPAclConfig: SetPolicyIPAclConfigRequest.IPAclConfig?

    public var instanceId: String?

    public var policyId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.IPAclConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.IPAclConfig != nil {
            map["IPAclConfig"] = self.IPAclConfig?.toMap()
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IPAclConfig") && dict["IPAclConfig"] != nil {
            var model = SetPolicyIPAclConfigRequest.IPAclConfig()
            model.fromMap(dict["IPAclConfig"] as! [String: Any])
            self.IPAclConfig = model
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyIPAclConfigShrinkRequest : Tea.TeaModel {
    public var IPAclConfigShrink: String?

    public var instanceId: String?

    public var policyId: String?

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
        if self.IPAclConfigShrink != nil {
            map["IPAclConfig"] = self.IPAclConfigShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IPAclConfig") && dict["IPAclConfig"] != nil {
            self.IPAclConfigShrink = dict["IPAclConfig"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyIPAclConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPolicyIPAclConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPolicyIPAclConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPolicyIPAclConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPolicyProtocolConfigRequest : Tea.TeaModel {
    public class ProtocolConfig : Tea.TeaModel {
        public class RDP : Tea.TeaModel {
            public var clipboardDownload: String?

            public var clipboardUpload: String?

            public var diskRedirection: String?

            public var recordKeyboard: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clipboardDownload != nil {
                    map["ClipboardDownload"] = self.clipboardDownload!
                }
                if self.clipboardUpload != nil {
                    map["ClipboardUpload"] = self.clipboardUpload!
                }
                if self.diskRedirection != nil {
                    map["DiskRedirection"] = self.diskRedirection!
                }
                if self.recordKeyboard != nil {
                    map["RecordKeyboard"] = self.recordKeyboard!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClipboardDownload") && dict["ClipboardDownload"] != nil {
                    self.clipboardDownload = dict["ClipboardDownload"] as! String
                }
                if dict.keys.contains("ClipboardUpload") && dict["ClipboardUpload"] != nil {
                    self.clipboardUpload = dict["ClipboardUpload"] as! String
                }
                if dict.keys.contains("DiskRedirection") && dict["DiskRedirection"] != nil {
                    self.diskRedirection = dict["DiskRedirection"] as! String
                }
                if dict.keys.contains("RecordKeyboard") && dict["RecordKeyboard"] != nil {
                    self.recordKeyboard = dict["RecordKeyboard"] as! String
                }
            }
        }
        public class SSH : Tea.TeaModel {
            public var execCommand: String?

            public var SFTPChannel: String?

            public var SFTPDownloadFile: String?

            public var SFTPMkdir: String?

            public var SFTPRemoveFile: String?

            public var SFTPRenameFile: String?

            public var SFTPRmdir: String?

            public var SFTPUploadFile: String?

            public var SSHChannel: String?

            public var x11Forwarding: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.execCommand != nil {
                    map["ExecCommand"] = self.execCommand!
                }
                if self.SFTPChannel != nil {
                    map["SFTPChannel"] = self.SFTPChannel!
                }
                if self.SFTPDownloadFile != nil {
                    map["SFTPDownloadFile"] = self.SFTPDownloadFile!
                }
                if self.SFTPMkdir != nil {
                    map["SFTPMkdir"] = self.SFTPMkdir!
                }
                if self.SFTPRemoveFile != nil {
                    map["SFTPRemoveFile"] = self.SFTPRemoveFile!
                }
                if self.SFTPRenameFile != nil {
                    map["SFTPRenameFile"] = self.SFTPRenameFile!
                }
                if self.SFTPRmdir != nil {
                    map["SFTPRmdir"] = self.SFTPRmdir!
                }
                if self.SFTPUploadFile != nil {
                    map["SFTPUploadFile"] = self.SFTPUploadFile!
                }
                if self.SSHChannel != nil {
                    map["SSHChannel"] = self.SSHChannel!
                }
                if self.x11Forwarding != nil {
                    map["X11Forwarding"] = self.x11Forwarding!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExecCommand") && dict["ExecCommand"] != nil {
                    self.execCommand = dict["ExecCommand"] as! String
                }
                if dict.keys.contains("SFTPChannel") && dict["SFTPChannel"] != nil {
                    self.SFTPChannel = dict["SFTPChannel"] as! String
                }
                if dict.keys.contains("SFTPDownloadFile") && dict["SFTPDownloadFile"] != nil {
                    self.SFTPDownloadFile = dict["SFTPDownloadFile"] as! String
                }
                if dict.keys.contains("SFTPMkdir") && dict["SFTPMkdir"] != nil {
                    self.SFTPMkdir = dict["SFTPMkdir"] as! String
                }
                if dict.keys.contains("SFTPRemoveFile") && dict["SFTPRemoveFile"] != nil {
                    self.SFTPRemoveFile = dict["SFTPRemoveFile"] as! String
                }
                if dict.keys.contains("SFTPRenameFile") && dict["SFTPRenameFile"] != nil {
                    self.SFTPRenameFile = dict["SFTPRenameFile"] as! String
                }
                if dict.keys.contains("SFTPRmdir") && dict["SFTPRmdir"] != nil {
                    self.SFTPRmdir = dict["SFTPRmdir"] as! String
                }
                if dict.keys.contains("SFTPUploadFile") && dict["SFTPUploadFile"] != nil {
                    self.SFTPUploadFile = dict["SFTPUploadFile"] as! String
                }
                if dict.keys.contains("SSHChannel") && dict["SSHChannel"] != nil {
                    self.SSHChannel = dict["SSHChannel"] as! String
                }
                if dict.keys.contains("X11Forwarding") && dict["X11Forwarding"] != nil {
                    self.x11Forwarding = dict["X11Forwarding"] as! String
                }
            }
        }
        public var RDP: SetPolicyProtocolConfigRequest.ProtocolConfig.RDP?

        public var SSH: SetPolicyProtocolConfigRequest.ProtocolConfig.SSH?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.RDP?.validate()
            try self.SSH?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.RDP != nil {
                map["RDP"] = self.RDP?.toMap()
            }
            if self.SSH != nil {
                map["SSH"] = self.SSH?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RDP") && dict["RDP"] != nil {
                var model = SetPolicyProtocolConfigRequest.ProtocolConfig.RDP()
                model.fromMap(dict["RDP"] as! [String: Any])
                self.RDP = model
            }
            if dict.keys.contains("SSH") && dict["SSH"] != nil {
                var model = SetPolicyProtocolConfigRequest.ProtocolConfig.SSH()
                model.fromMap(dict["SSH"] as! [String: Any])
                self.SSH = model
            }
        }
    }
    public var instanceId: String?

    public var policyId: String?

    public var protocolConfig: SetPolicyProtocolConfigRequest.ProtocolConfig?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.protocolConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.protocolConfig != nil {
            map["ProtocolConfig"] = self.protocolConfig?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("ProtocolConfig") && dict["ProtocolConfig"] != nil {
            var model = SetPolicyProtocolConfigRequest.ProtocolConfig()
            model.fromMap(dict["ProtocolConfig"] as! [String: Any])
            self.protocolConfig = model
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyProtocolConfigShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var policyId: String?

    public var protocolConfigShrink: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.protocolConfigShrink != nil {
            map["ProtocolConfig"] = self.protocolConfigShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("ProtocolConfig") && dict["ProtocolConfig"] != nil {
            self.protocolConfigShrink = dict["ProtocolConfig"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPolicyProtocolConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPolicyProtocolConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPolicyProtocolConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPolicyProtocolConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPolicyUserScopeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var policyId: String?

    public var regionId: String?

    public var scopeType: String?

    public var userGroupIds: [String]?

    public var userIds: [String]?

    public override init() {
        super.init()
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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scopeType != nil {
            map["ScopeType"] = self.scopeType!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ScopeType") && dict["ScopeType"] != nil {
            self.scopeType = dict["ScopeType"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class SetPolicyUserScopeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPolicyUserScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPolicyUserScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPolicyUserScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var securityGroupIds: [String]?

    public var vswitchId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
            self.securityGroupIds = dict["SecurityGroupIds"] as! [String]
        }
        if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
            self.vswitchId = dict["VswitchId"] as! String
        }
    }
}

public class StartInstanceResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartInstanceResponseBody()
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
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
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

public class UnlockUsersRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var userIds: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! String
        }
    }
}

public class UnlockUsersResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var results: [UnlockUsersResponseBody.Results]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            var tmp : [UnlockUsersResponseBody.Results] = []
            for v in dict["Results"] as! [Any] {
                var model = UnlockUsersResponseBody.Results()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.results = tmp
        }
    }
}

public class UnlockUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UnlockUsersResponseBody()
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
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyInstanceADAuthServerRequest : Tea.TeaModel {
    public var account: String?

    public var baseDN: String?

    public var domain: String?

    public var filter: String?

    public var instanceId: String?

    public var isSSL: String?

    public var password: String?

    public var port: String?

    public var regionId: String?

    public var server: String?

    public var standbyServer: String?

    public override init() {
        super.init()
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
            map["Account"] = self.account!
        }
        if self.baseDN != nil {
            map["BaseDN"] = self.baseDN!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSSL != nil {
            map["IsSSL"] = self.isSSL!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.server != nil {
            map["Server"] = self.server!
        }
        if self.standbyServer != nil {
            map["StandbyServer"] = self.standbyServer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") && dict["Account"] != nil {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("BaseDN") && dict["BaseDN"] != nil {
            self.baseDN = dict["BaseDN"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSSL") && dict["IsSSL"] != nil {
            self.isSSL = dict["IsSSL"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Server") && dict["Server"] != nil {
            self.server = dict["Server"] as! String
        }
        if dict.keys.contains("StandbyServer") && dict["StandbyServer"] != nil {
            self.standbyServer = dict["StandbyServer"] as! String
        }
    }
}

public class VerifyInstanceADAuthServerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class VerifyInstanceADAuthServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyInstanceADAuthServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VerifyInstanceADAuthServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyInstanceLDAPAuthServerRequest : Tea.TeaModel {
    public var account: String?

    public var baseDN: String?

    public var filter: String?

    public var instanceId: String?

    public var isSSL: String?

    public var password: String?

    public var port: String?

    public var regionId: String?

    public var server: String?

    public var standbyServer: String?

    public override init() {
        super.init()
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
            map["Account"] = self.account!
        }
        if self.baseDN != nil {
            map["BaseDN"] = self.baseDN!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSSL != nil {
            map["IsSSL"] = self.isSSL!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.server != nil {
            map["Server"] = self.server!
        }
        if self.standbyServer != nil {
            map["StandbyServer"] = self.standbyServer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") && dict["Account"] != nil {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("BaseDN") && dict["BaseDN"] != nil {
            self.baseDN = dict["BaseDN"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSSL") && dict["IsSSL"] != nil {
            self.isSSL = dict["IsSSL"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Server") && dict["Server"] != nil {
            self.server = dict["Server"] as! String
        }
        if dict.keys.contains("StandbyServer") && dict["StandbyServer"] != nil {
            self.standbyServer = dict["StandbyServer"] as! String
        }
    }
}

public class VerifyInstanceLDAPAuthServerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class VerifyInstanceLDAPAuthServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyInstanceLDAPAuthServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VerifyInstanceLDAPAuthServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
