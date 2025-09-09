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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AcceptApproveCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AcceptOperationTicketRequest : Tea.TeaModel {
    public var comment: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["EffectCount"] as? String {
            self.effectCount = value
        }
        if let value = dict["EffectEndTime"] as? String {
            self.effectEndTime = value
        }
        if let value = dict["EffectStartTime"] as? String {
            self.effectStartTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OperationTicketId"] as? String {
            self.operationTicketId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AcceptOperationTicketResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseIds"] as? [String] {
            self.databaseIds = value
        }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AddDatabasesToGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AddDatabasesToGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddDatabasesToGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["HostIds"] as? String {
            self.hostIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AddHostsToGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AddHostsToGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddHostsToGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddInstanceRdMemberRequest : Tea.TeaModel {
    public var instanceId: String?

    public var memberId: String?

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
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MemberId"] as? String {
            self.memberId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddInstanceRdMemberResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AddInstanceRdMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddInstanceRdMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddInstanceRdMemberResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AddUsersToGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AddUsersToGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddUsersToGroupResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountIds"] as? [String] {
                self.databaseAccountIds = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [AttachDatabaseAccountsToUserRequest.Databases] = []
            for v in value {
                if v != nil {
                    var model = AttachDatabaseAccountsToUserRequest.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DatabaseAccountId"] as? String {
                    self.databaseAccountId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["DatabaseAccounts"] as? [Any?] {
                var tmp : [AttachDatabaseAccountsToUserResponseBody.Results.DatabaseAccounts] = []
                for v in value {
                    if v != nil {
                        var model = AttachDatabaseAccountsToUserResponseBody.Results.DatabaseAccounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.databaseAccounts = tmp
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AttachDatabaseAccountsToUserResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AttachDatabaseAccountsToUserResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachDatabaseAccountsToUserResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountIds"] as? [String] {
                self.databaseAccountIds = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [AttachDatabaseAccountsToUserGroupRequest.Databases] = []
            for v in value {
                if v != nil {
                    var model = AttachDatabaseAccountsToUserGroupRequest.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DatabaseAccountId"] as? String {
                    self.databaseAccountId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["DatabaseAccounts"] as? [Any?] {
                var tmp : [AttachDatabaseAccountsToUserGroupResponseBody.Results.DatabaseAccounts] = []
                for v in value {
                    if v != nil {
                        var model = AttachDatabaseAccountsToUserGroupResponseBody.Results.DatabaseAccounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.databaseAccounts = tmp
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AttachDatabaseAccountsToUserGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AttachDatabaseAccountsToUserGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachDatabaseAccountsToUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountIds"] as? String {
            self.hostAccountIds = value
        }
        if let value = dict["HostShareKeyId"] as? String {
            self.hostShareKeyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccountId"] as? String {
                self.hostAccountId = value
            }
            if let value = dict["HostShareKeyId"] as? String {
                self.hostShareKeyId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AttachHostAccountsToHostShareKeyResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AttachHostAccountsToHostShareKeyResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachHostAccountsToHostShareKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hosts"] as? String {
            self.hosts = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["HostAccountId"] as? String {
                    self.hostAccountId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccounts"] as? [Any?] {
                var tmp : [AttachHostAccountsToUserResponseBody.Results.HostAccounts] = []
                for v in value {
                    if v != nil {
                        var model = AttachHostAccountsToUserResponseBody.Results.HostAccounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAccounts = tmp
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AttachHostAccountsToUserResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AttachHostAccountsToUserResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachHostAccountsToUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hosts"] as? String {
            self.hosts = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["HostAccountId"] as? String {
                    self.hostAccountId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccounts"] as? [Any?] {
                var tmp : [AttachHostAccountsToUserGroupResponseBody.Results.HostAccounts] = []
                for v in value {
                    if v != nil {
                        var model = AttachHostAccountsToUserGroupResponseBody.Results.HostAccounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAccounts = tmp
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AttachHostAccountsToUserGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AttachHostAccountsToUserGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachHostAccountsToUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroups"] as? String {
            self.hostGroups = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["HostAccountName"] as? String {
                    self.hostAccountName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccountNames"] as? [Any?] {
                var tmp : [AttachHostGroupAccountsToUserResponseBody.Results.HostAccountNames] = []
                for v in value {
                    if v != nil {
                        var model = AttachHostGroupAccountsToUserResponseBody.Results.HostAccountNames()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAccountNames = tmp
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AttachHostGroupAccountsToUserResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AttachHostGroupAccountsToUserResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachHostGroupAccountsToUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroups"] as? String {
            self.hostGroups = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["HostAccountName"] as? String {
                    self.hostAccountName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccountNames"] as? [Any?] {
                var tmp : [AttachHostGroupAccountsToUserGroupResponseBody.Results.HostAccountNames] = []
                for v in value {
                    if v != nil {
                        var model = AttachHostGroupAccountsToUserGroupResponseBody.Results.HostAccountNames()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAccountNames = tmp
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AttachHostGroupAccountsToUserGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AttachHostGroupAccountsToUserGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachHostGroupAccountsToUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizedSecurityGroups"] as? [String] {
            self.authorizedSecurityGroups = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConfigInstanceSecurityGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigInstanceWhiteListRequest : Tea.TeaModel {
    public class WhiteListPolicies : Tea.TeaModel {
        public var description_: String?

        public var entry: String?

        public override init() {
            super.init()
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
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Entry"] as? String {
                self.entry = value
            }
        }
    }
    public var instanceId: String?

    public var regionId: String?

    public var whiteList: [String]?

    public var whiteListPolicies: [ConfigInstanceWhiteListRequest.WhiteListPolicies]?

    public override init() {
        super.init()
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
        if self.whiteListPolicies != nil {
            var tmp : [Any] = []
            for k in self.whiteListPolicies! {
                tmp.append(k.toMap())
            }
            map["WhiteListPolicies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WhiteList"] as? [String] {
            self.whiteList = value
        }
        if let value = dict["WhiteListPolicies"] as? [Any?] {
            var tmp : [ConfigInstanceWhiteListRequest.WhiteListPolicies] = []
            for v in value {
                if v != nil {
                    var model = ConfigInstanceWhiteListRequest.WhiteListPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.whiteListPolicies = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConfigInstanceWhiteListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActiveAddressType"] as? String {
            self.activeAddressType = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["DatabasePort"] as? Int32 {
            self.databasePort = value
        }
        if let value = dict["DatabasePrivateAddress"] as? String {
            self.databasePrivateAddress = value
        }
        if let value = dict["DatabasePublicAddress"] as? String {
            self.databasePublicAddress = value
        }
        if let value = dict["DatabaseType"] as? String {
            self.databaseType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["PolarDBEndpointType"] as? String {
            self.polarDBEndpointType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceInstanceId"] as? String {
            self.sourceInstanceId = value
        }
        if let value = dict["SourceInstanceRegionId"] as? String {
            self.sourceInstanceRegionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseId"] as? String {
            self.databaseId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDatabaseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccountName"] as? String {
            self.databaseAccountName = value
        }
        if let value = dict["DatabaseId"] as? String {
            self.databaseId = value
        }
        if let value = dict["DatabaseSchema"] as? String {
            self.databaseSchema = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LoginAttribute"] as? String {
            self.loginAttribute = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccountId"] as? String {
            self.databaseAccountId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDatabaseAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExportConfigJobRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateExportConfigJobResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateExportConfigJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExportConfigJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateExportConfigJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActiveAddressType"] as? String {
            self.activeAddressType = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["HostPrivateAddress"] as? String {
            self.hostPrivateAddress = value
        }
        if let value = dict["HostPublicAddress"] as? String {
            self.hostPublicAddress = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceRegionId"] as? String {
            self.instanceRegionId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["OSType"] as? String {
            self.OSType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceInstanceId"] as? String {
            self.sourceInstanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHostResponseBody()
            model.fromMap(value)
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

    public var privilegeType: String?

    public var protocolName: String?

    public var regionId: String?

    public var rotationMode: String?

    public override init() {
        super.init()
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
        if self.privilegeType != nil {
            map["PrivilegeType"] = self.privilegeType!
        }
        if self.protocolName != nil {
            map["ProtocolName"] = self.protocolName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rotationMode != nil {
            map["RotationMode"] = self.rotationMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountName"] as? String {
            self.hostAccountName = value
        }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["HostShareKeyId"] as? String {
            self.hostShareKeyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PassPhrase"] as? String {
            self.passPhrase = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["PrivilegeType"] as? String {
            self.privilegeType = value
        }
        if let value = dict["ProtocolName"] as? String {
            self.protocolName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RotationMode"] as? String {
            self.rotationMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountId"] as? String {
            self.hostAccountId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHostAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["HostGroupName"] as? String {
            self.hostGroupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHostGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostShareKeyName"] as? String {
            self.hostShareKeyName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PassPhrase"] as? String {
            self.passPhrase = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostShareKeyId"] as? Int64 {
            self.hostShareKeyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHostShareKeyResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["NodeType"] as? String {
                self.nodeType = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["ProxyType"] as? String {
                self.proxyType = value
            }
            if let value = dict["User"] as? String {
                self.user = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainName"] as? String {
            self.networkDomainName = value
        }
        if let value = dict["NetworkDomainType"] as? String {
            self.networkDomainType = value
        }
        if let value = dict["Proxies"] as? [Any?] {
            var tmp : [CreateNetworkDomainRequest.Proxies] = []
            for v in value {
                if v != nil {
                    var model = CreateNetworkDomainRequest.Proxies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.proxies = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateNetworkDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOperationTicketRequest : Tea.TeaModel {
    public var approveComment: String?

    public var assetAccountName: String?

    public var assetId: String?

    public var effectEndTime: Int64?

    public var effectStartTime: Int64?

    public var instanceId: String?

    public var isOneTimeEffect: Bool?

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
        if self.approveComment != nil {
            map["ApproveComment"] = self.approveComment!
        }
        if self.assetAccountName != nil {
            map["AssetAccountName"] = self.assetAccountName!
        }
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
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
        if self.isOneTimeEffect != nil {
            map["IsOneTimeEffect"] = self.isOneTimeEffect!
        }
        if self.protocolName != nil {
            map["ProtocolName"] = self.protocolName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApproveComment"] as? String {
            self.approveComment = value
        }
        if let value = dict["AssetAccountName"] as? String {
            self.assetAccountName = value
        }
        if let value = dict["AssetId"] as? String {
            self.assetId = value
        }
        if let value = dict["EffectEndTime"] as? Int64 {
            self.effectEndTime = value
        }
        if let value = dict["EffectStartTime"] as? Int64 {
            self.effectStartTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsOneTimeEffect"] as? Bool {
            self.isOneTimeEffect = value
        }
        if let value = dict["ProtocolName"] as? String {
            self.protocolName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateOperationTicketResponseBody : Tea.TeaModel {
    public var operationTicketId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationTicketId != nil {
            map["OperationTicketId"] = self.operationTicketId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationTicketId"] as? String {
            self.operationTicketId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOperationTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOperationTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateOperationTicketResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["Priority"] as? String {
            self.priority = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePolicyResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountIds"] as? [String] {
                self.databaseAccountIds = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostAccountNames"] as? [String] {
                self.hostAccountNames = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostAccountIds"] as? [String] {
                self.hostAccountIds = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [CreateRuleRequest.Databases] = []
            for v in value {
                if v != nil {
                    var model = CreateRuleRequest.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["EffectiveEndTime"] as? Int64 {
            self.effectiveEndTime = value
        }
        if let value = dict["EffectiveStartTime"] as? Int64 {
            self.effectiveStartTime = value
        }
        if let value = dict["HostGroups"] as? [Any?] {
            var tmp : [CreateRuleRequest.HostGroups] = []
            for v in value {
                if v != nil {
                    var model = CreateRuleRequest.HostGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostGroups = tmp
        }
        if let value = dict["Hosts"] as? [Any?] {
            var tmp : [CreateRuleRequest.Hosts] = []
            for v in value {
                if v != nil {
                    var model = CreateRuleRequest.Hosts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hosts = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["UserGroupIds"] as? [String] {
            self.userGroupIds = value
        }
        if let value = dict["UserIds"] as? [String] {
            self.userIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["EffectiveEndTime"] as? Int64 {
            self.effectiveEndTime = value
        }
        if let value = dict["EffectiveStartTime"] as? Int64 {
            self.effectiveStartTime = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["LanguageStatus"] as? String {
            self.languageStatus = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["MobileCountryCode"] as? String {
            self.mobileCountryCode = value
        }
        if let value = dict["NeedResetPassword"] as? Bool {
            self.needResetPassword = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceUserId"] as? String {
            self.sourceUserId = value
        }
        if let value = dict["TwoFactorMethods"] as? String {
            self.twoFactorMethods = value
        }
        if let value = dict["TwoFactorStatus"] as? String {
            self.twoFactorStatus = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupName"] as? String {
            self.userGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PublicKey"] as? String {
            self.publicKey = value
        }
        if let value = dict["PublicKeyName"] as? String {
            self.publicKeyName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PublicKeyId"] as? String {
            self.publicKeyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUserPublicKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseId"] as? String {
            self.databaseId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDatabaseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccountId"] as? String {
            self.databaseAccountId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDatabaseAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHostResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountId"] as? String {
            self.hostAccountId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHostAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHostGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostShareKeyId"] as? String {
            self.hostShareKeyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHostShareKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteNetworkDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PublicKeyId"] as? String {
            self.publicKeyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserPublicKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomPort"] as? Int32 {
                    self.customPort = value
                }
                if let value = dict["StandardPort"] as? Int32 {
                    self.standardPort = value
                }
            }
        }
        public class WhiteListPolicies : Tea.TeaModel {
            public var description_: String?

            public var entry: String?

            public override init() {
                super.init()
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
                if self.entry != nil {
                    map["Entry"] = self.entry!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Entry"] as? String {
                    self.entry = value
                }
            }
        }
        public var appOperationModule: String?

        public var authorizedSecurityGroups: [String]?

        public var bandwidth: String?

        public var bandwidthPackage: String?

        public var dbOperationModule: String?

        public var description_: String?

        public var eniInstanceId: String?

        public var expireTime: Int64?

        public var HSMModule: String?

        public var IDaaSModule: String?

        public var instanceId: String?

        public var instanceStatus: String?

        public var internetEndpoint: String?

        public var intranetEndpoint: String?

        public var kmsSecretModule: String?

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

        public var RDModule: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var routerRules: [String]?

        public var scriptDeliverModule: String?

        public var securityGroupIds: [String]?

        public var slaveVswitchId: String?

        public var startTime: Int64?

        public var storage: Int64?

        public var vpcId: String?

        public var vswitchId: String?

        public var webTerminalModule: String?

        public var whiteListPolicies: [DescribeInstanceAttributeResponseBody.InstanceAttribute.WhiteListPolicies]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appOperationModule != nil {
                map["AppOperationModule"] = self.appOperationModule!
            }
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
            if self.HSMModule != nil {
                map["HSMModule"] = self.HSMModule!
            }
            if self.IDaaSModule != nil {
                map["IDaaSModule"] = self.IDaaSModule!
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
            if self.kmsSecretModule != nil {
                map["KmsSecretModule"] = self.kmsSecretModule!
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
            if self.RDModule != nil {
                map["RDModule"] = self.RDModule!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.routerRules != nil {
                map["RouterRules"] = self.routerRules!
            }
            if self.scriptDeliverModule != nil {
                map["ScriptDeliverModule"] = self.scriptDeliverModule!
            }
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.slaveVswitchId != nil {
                map["SlaveVswitchId"] = self.slaveVswitchId!
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
            if self.whiteListPolicies != nil {
                var tmp : [Any] = []
                for k in self.whiteListPolicies! {
                    tmp.append(k.toMap())
                }
                map["WhiteListPolicies"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppOperationModule"] as? String {
                self.appOperationModule = value
            }
            if let value = dict["AuthorizedSecurityGroups"] as? [String] {
                self.authorizedSecurityGroups = value
            }
            if let value = dict["Bandwidth"] as? String {
                self.bandwidth = value
            }
            if let value = dict["BandwidthPackage"] as? String {
                self.bandwidthPackage = value
            }
            if let value = dict["DbOperationModule"] as? String {
                self.dbOperationModule = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EniInstanceId"] as? String {
                self.eniInstanceId = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["HSMModule"] as? String {
                self.HSMModule = value
            }
            if let value = dict["IDaaSModule"] as? String {
                self.IDaaSModule = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["InternetEndpoint"] as? String {
                self.internetEndpoint = value
            }
            if let value = dict["IntranetEndpoint"] as? String {
                self.intranetEndpoint = value
            }
            if let value = dict["KmsSecretModule"] as? String {
                self.kmsSecretModule = value
            }
            if let value = dict["LicenseCode"] as? String {
                self.licenseCode = value
            }
            if let value = dict["ModifyPasswordModule"] as? String {
                self.modifyPasswordModule = value
            }
            if let value = dict["NetworkProxyModule"] as? String {
                self.networkProxyModule = value
            }
            if let value = dict["Ports"] as? [Any?] {
                var tmp : [DescribeInstanceAttributeResponseBody.InstanceAttribute.Ports] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceAttributeResponseBody.InstanceAttribute.Ports()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ports = tmp
            }
            if let value = dict["PrivateExportIps"] as? [String] {
                self.privateExportIps = value
            }
            if let value = dict["PrivateWhiteList"] as? [String] {
                self.privateWhiteList = value
            }
            if let value = dict["PublicExportIps"] as? [String] {
                self.publicExportIps = value
            }
            if let value = dict["PublicIps"] as? [String] {
                self.publicIps = value
            }
            if let value = dict["PublicNetworkAccess"] as? Bool {
                self.publicNetworkAccess = value
            }
            if let value = dict["PublicWhiteList"] as? [String] {
                self.publicWhiteList = value
            }
            if let value = dict["RDModule"] as? String {
                self.RDModule = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RouterRules"] as? [String] {
                self.routerRules = value
            }
            if let value = dict["ScriptDeliverModule"] as? String {
                self.scriptDeliverModule = value
            }
            if let value = dict["SecurityGroupIds"] as? [String] {
                self.securityGroupIds = value
            }
            if let value = dict["SlaveVswitchId"] as? String {
                self.slaveVswitchId = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Storage"] as? Int64 {
                self.storage = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
            }
            if let value = dict["WebTerminalModule"] as? String {
                self.webTerminalModule = value
            }
            if let value = dict["WhiteListPolicies"] as? [Any?] {
                var tmp : [DescribeInstanceAttributeResponseBody.InstanceAttribute.WhiteListPolicies] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceAttributeResponseBody.InstanceAttribute.WhiteListPolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.whiteListPolicies = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceAttribute"] as? [String: Any?] {
            var model = DescribeInstanceAttributeResponseBody.InstanceAttribute()
            model.fromMap(value)
            self.instanceAttribute = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceAttributeResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? [String] {
            self.instanceId = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
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
        public var bandWidth: Int64?

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

        public var slaveVswitchId: String?

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
            if self.bandWidth != nil {
                map["BandWidth"] = self.bandWidth!
            }
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
            if self.slaveVswitchId != nil {
                map["SlaveVswitchId"] = self.slaveVswitchId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BandWidth"] as? Int64 {
                self.bandWidth = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["ImageVersion"] as? String {
                self.imageVersion = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceStatus"] as? String {
                self.instanceStatus = value
            }
            if let value = dict["InternetEndpoint"] as? String {
                self.internetEndpoint = value
            }
            if let value = dict["IntranetEndpoint"] as? String {
                self.intranetEndpoint = value
            }
            if let value = dict["Legacy"] as? Bool {
                self.legacy = value
            }
            if let value = dict["LicenseCode"] as? String {
                self.licenseCode = value
            }
            if let value = dict["PlanCode"] as? String {
                self.planCode = value
            }
            if let value = dict["PublicNetworkAccess"] as? Bool {
                self.publicNetworkAccess = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SlaveVswitchId"] as? String {
                self.slaveVswitchId = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [DescribeInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountIds"] as? [String] {
                self.databaseAccountIds = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [DetachDatabaseAccountsFromUserRequest.Databases] = []
            for v in value {
                if v != nil {
                    var model = DetachDatabaseAccountsFromUserRequest.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DatabaseAccountId"] as? String {
                    self.databaseAccountId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["DatabaseAccounts"] as? [Any?] {
                var tmp : [DetachDatabaseAccountsFromUserResponseBody.Results.DatabaseAccounts] = []
                for v in value {
                    if v != nil {
                        var model = DetachDatabaseAccountsFromUserResponseBody.Results.DatabaseAccounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.databaseAccounts = tmp
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [DetachDatabaseAccountsFromUserResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = DetachDatabaseAccountsFromUserResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachDatabaseAccountsFromUserResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountIds"] as? [String] {
                self.databaseAccountIds = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [DetachDatabaseAccountsFromUserGroupRequest.Databases] = []
            for v in value {
                if v != nil {
                    var model = DetachDatabaseAccountsFromUserGroupRequest.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DatabaseAccountId"] as? String {
                    self.databaseAccountId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["DatabaseAccounts"] as? [Any?] {
                var tmp : [DetachDatabaseAccountsFromUserGroupResponseBody.Results.DatabaseAccounts] = []
                for v in value {
                    if v != nil {
                        var model = DetachDatabaseAccountsFromUserGroupResponseBody.Results.DatabaseAccounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.databaseAccounts = tmp
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [DetachDatabaseAccountsFromUserGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = DetachDatabaseAccountsFromUserGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachDatabaseAccountsFromUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountIds"] as? String {
            self.hostAccountIds = value
        }
        if let value = dict["HostShareKeyId"] as? String {
            self.hostShareKeyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccountId"] as? String {
                self.hostAccountId = value
            }
            if let value = dict["HostShareKeyId"] as? String {
                self.hostShareKeyId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [DetachHostAccountsFromHostShareKeyResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = DetachHostAccountsFromHostShareKeyResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachHostAccountsFromHostShareKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hosts"] as? String {
            self.hosts = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["HostAccountId"] as? String {
                    self.hostAccountId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccounts"] as? [Any?] {
                var tmp : [DetachHostAccountsFromUserResponseBody.Results.HostAccounts] = []
                for v in value {
                    if v != nil {
                        var model = DetachHostAccountsFromUserResponseBody.Results.HostAccounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAccounts = tmp
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [DetachHostAccountsFromUserResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = DetachHostAccountsFromUserResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachHostAccountsFromUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hosts"] as? String {
            self.hosts = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["HostAccountId"] as? String {
                    self.hostAccountId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccounts"] as? [Any?] {
                var tmp : [DetachHostAccountsFromUserGroupResponseBody.Results.HostAccounts] = []
                for v in value {
                    if v != nil {
                        var model = DetachHostAccountsFromUserGroupResponseBody.Results.HostAccounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAccounts = tmp
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [DetachHostAccountsFromUserGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = DetachHostAccountsFromUserGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachHostAccountsFromUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroups"] as? String {
            self.hostGroups = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["HostAccountName"] as? String {
                    self.hostAccountName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccountNames"] as? [Any?] {
                var tmp : [DetachHostGroupAccountsFromUserResponseBody.Results.HostAccountNames] = []
                for v in value {
                    if v != nil {
                        var model = DetachHostGroupAccountsFromUserResponseBody.Results.HostAccountNames()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAccountNames = tmp
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [DetachHostGroupAccountsFromUserResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = DetachHostGroupAccountsFromUserResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachHostGroupAccountsFromUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroups"] as? String {
            self.hostGroups = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["HostAccountName"] as? String {
                    self.hostAccountName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostAccountNames"] as? [Any?] {
                var tmp : [DetachHostGroupAccountsFromUserGroupResponseBody.Results.HostAccountNames] = []
                for v in value {
                    if v != nil {
                        var model = DetachHostGroupAccountsFromUserGroupResponseBody.Results.HostAccountNames()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAccountNames = tmp
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [DetachHostGroupAccountsFromUserGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = DetachHostGroupAccountsFromUserGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachHostGroupAccountsFromUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableInstancePublicAccessResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableInstancePublicAccessResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableRuleResponseBody()
            model.fromMap(value)
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

    public var databaseSchema: String?

    public var instanceId: String?

    public var loginAttribute: String?

    public var operationMode: String?

    public var operationNote: String?

    public var regionId: String?

    public var ssoClient: String?

    public override init() {
        super.init()
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
        if self.databaseSchema != nil {
            map["DatabaseSchema"] = self.databaseSchema!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.loginAttribute != nil {
            map["LoginAttribute"] = self.loginAttribute!
        }
        if self.operationMode != nil {
            map["OperationMode"] = self.operationMode!
        }
        if self.operationNote != nil {
            map["OperationNote"] = self.operationNote!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ssoClient != nil {
            map["SsoClient"] = self.ssoClient!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetAccountId"] as? String {
            self.assetAccountId = value
        }
        if let value = dict["AssetAccountName"] as? String {
            self.assetAccountName = value
        }
        if let value = dict["AssetAccountPassword"] as? String {
            self.assetAccountPassword = value
        }
        if let value = dict["AssetAccountProtocolName"] as? String {
            self.assetAccountProtocolName = value
        }
        if let value = dict["AssetId"] as? String {
            self.assetId = value
        }
        if let value = dict["AssetType"] as? String {
            self.assetType = value
        }
        if let value = dict["DatabaseSchema"] as? String {
            self.databaseSchema = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LoginAttribute"] as? String {
            self.loginAttribute = value
        }
        if let value = dict["OperationMode"] as? String {
            self.operationMode = value
        }
        if let value = dict["OperationNote"] as? String {
            self.operationNote = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SsoClient"] as? String {
            self.ssoClient = value
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

        public var ssoUrl: String?

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
            if self.ssoUrl != nil {
                map["SsoUrl"] = self.ssoUrl!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.tokenId != nil {
                map["TokenId"] = self.tokenId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CountLeft"] as? Int64 {
                self.countLeft = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["HasCountLimit"] as? Bool {
                self.hasCountLimit = value
            }
            if let value = dict["MaxRenewCount"] as? Int64 {
                self.maxRenewCount = value
            }
            if let value = dict["RenewCount"] as? Int64 {
                self.renewCount = value
            }
            if let value = dict["SsoUrl"] as? String {
                self.ssoUrl = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
            if let value = dict["TokenId"] as? String {
                self.tokenId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetOperationToken"] as? [String: Any?] {
            var model = GenerateAssetOperationTokenResponseBody.AssetOperationToken()
            model.fromMap(value)
            self.assetOperationToken = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateAssetOperationTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseId"] as? String {
            self.databaseId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["DatabaseName"] as? String {
                self.databaseName = value
            }
            if let value = dict["DatabasePort"] as? Int64 {
                self.databasePort = value
            }
            if let value = dict["DatabasePrivateAddress"] as? String {
                self.databasePrivateAddress = value
            }
            if let value = dict["DatabasePublicAddress"] as? String {
                self.databasePublicAddress = value
            }
            if let value = dict["DatabaseType"] as? String {
                self.databaseType = value
            }
            if let value = dict["NetworkDomainId"] as? String {
                self.networkDomainId = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceInstanceId"] as? String {
                self.sourceInstanceId = value
            }
            if let value = dict["SourceInstanceRegionId"] as? String {
                self.sourceInstanceRegionId = value
            }
            if let value = dict["SourceInstanceState"] as? String {
                self.sourceInstanceState = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Database"] as? [String: Any?] {
            var model = GetDatabaseResponseBody.Database()
            model.fromMap(value)
            self.database = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDatabaseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccountId"] as? String {
            self.databaseAccountId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountId"] as? String {
                self.databaseAccountId = value
            }
            if let value = dict["DatabaseAccountName"] as? String {
                self.databaseAccountName = value
            }
            if let value = dict["DatabaseSchema"] as? String {
                self.databaseSchema = value
            }
            if let value = dict["HasPassword"] as? Bool {
                self.hasPassword = value
            }
            if let value = dict["LoginAttribute"] as? String {
                self.loginAttribute = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccount"] as? [String: Any?] {
            var model = GetDatabaseAccountResponseBody.DatabaseAccount()
            model.fromMap(value)
            self.databaseAccount = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDatabaseAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExportConfigJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetExportConfigJobResponseBody : Tea.TeaModel {
    public var downloadUrl: String?

    public var expireTime: Int64?

    public var jobId: String?

    public var message: String?

    public var requestId: String?

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
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["DownloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetExportConfigJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExportConfigJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetExportConfigJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HostFingerPrint"] as? String {
                    self.hostFingerPrint = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ProtocolName"] as? String {
                    self.protocolName = value
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

        public var prefKex: String?

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
            if self.prefKex != nil {
                map["PrefKex"] = self.prefKex!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["HostPrivateAddress"] as? String {
                self.hostPrivateAddress = value
            }
            if let value = dict["HostPublicAddress"] as? String {
                self.hostPublicAddress = value
            }
            if let value = dict["NetworkDomainId"] as? String {
                self.networkDomainId = value
            }
            if let value = dict["OSType"] as? String {
                self.OSType = value
            }
            if let value = dict["PrefKex"] as? String {
                self.prefKex = value
            }
            if let value = dict["Protocols"] as? [Any?] {
                var tmp : [GetHostResponseBody.Host.Protocols] = []
                for v in value {
                    if v != nil {
                        var model = GetHostResponseBody.Host.Protocols()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.protocols = tmp
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceInstanceId"] as? String {
                self.sourceInstanceId = value
            }
            if let value = dict["SourceInstanceState"] as? String {
                self.sourceInstanceState = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Host"] as? [String: Any?] {
            var model = GetHostResponseBody.Host()
            model.fromMap(value)
            self.host = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetHostResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountId"] as? String {
            self.hostAccountId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public var privilegeType: String?

        public var protocolName: String?

        public var rotationMode: String?

        public override init() {
            super.init()
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
            if self.privilegeType != nil {
                map["PrivilegeType"] = self.privilegeType!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            if self.rotationMode != nil {
                map["RotationMode"] = self.rotationMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasPassword"] as? Bool {
                self.hasPassword = value
            }
            if let value = dict["HostAccountId"] as? String {
                self.hostAccountId = value
            }
            if let value = dict["HostAccountName"] as? String {
                self.hostAccountName = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["HostShareKeyId"] as? String {
                self.hostShareKeyId = value
            }
            if let value = dict["HostShareKeyName"] as? String {
                self.hostShareKeyName = value
            }
            if let value = dict["PrivateKeyFingerprint"] as? String {
                self.privateKeyFingerprint = value
            }
            if let value = dict["PrivilegeType"] as? String {
                self.privilegeType = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
            }
            if let value = dict["RotationMode"] as? String {
                self.rotationMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccount"] as? [String: Any?] {
            var model = GetHostAccountResponseBody.HostAccount()
            model.fromMap(value)
            self.hostAccount = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetHostAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["HostGroupName"] as? String {
                self.hostGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroup"] as? [String: Any?] {
            var model = GetHostGroupResponseBody.HostGroup()
            model.fromMap(value)
            self.hostGroup = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetHostGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostShareKeyId"] as? String {
            self.hostShareKeyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostShareKeyId"] as? String {
                self.hostShareKeyId = value
            }
            if let value = dict["HostShareKeyName"] as? String {
                self.hostShareKeyName = value
            }
            if let value = dict["LastModifyKeyAt"] as? Int64 {
                self.lastModifyKeyAt = value
            }
            if let value = dict["PrivateKeyFingerPrint"] as? String {
                self.privateKeyFingerPrint = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostShareKey"] as? [String: Any?] {
            var model = GetHostShareKeyResponseBody.HostShareKey()
            model.fromMap(value)
            self.hostShareKey = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetHostShareKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["BaseDN"] as? String {
                self.baseDN = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EmailMapping"] as? String {
                self.emailMapping = value
            }
            if let value = dict["Filter"] as? String {
                self.filter = value
            }
            if let value = dict["HasPassword"] as? Bool {
                self.hasPassword = value
            }
            if let value = dict["IsSSL"] as? Bool {
                self.isSSL = value
            }
            if let value = dict["MobileMapping"] as? String {
                self.mobileMapping = value
            }
            if let value = dict["NameMapping"] as? String {
                self.nameMapping = value
            }
            if let value = dict["Port"] as? Int64 {
                self.port = value
            }
            if let value = dict["Server"] as? String {
                self.server = value
            }
            if let value = dict["StandbyServer"] as? String {
                self.standbyServer = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AD"] as? [String: Any?] {
            var model = GetInstanceADAuthServerResponseBody.AD()
            model.fromMap(value)
            self.AD = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceADAuthServerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["BaseDN"] as? String {
                self.baseDN = value
            }
            if let value = dict["EmailMapping"] as? String {
                self.emailMapping = value
            }
            if let value = dict["Filter"] as? String {
                self.filter = value
            }
            if let value = dict["HasPassword"] as? String {
                self.hasPassword = value
            }
            if let value = dict["IsSSL"] as? Bool {
                self.isSSL = value
            }
            if let value = dict["LoginNameMapping"] as? String {
                self.loginNameMapping = value
            }
            if let value = dict["MobileMapping"] as? String {
                self.mobileMapping = value
            }
            if let value = dict["NameMapping"] as? String {
                self.nameMapping = value
            }
            if let value = dict["Port"] as? Int64 {
                self.port = value
            }
            if let value = dict["Server"] as? String {
                self.server = value
            }
            if let value = dict["StandbyServer"] as? String {
                self.standbyServer = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LDAP"] as? [String: Any?] {
            var model = GetInstanceLDAPAuthServerResponseBody.LDAP()
            model.fromMap(value)
            self.LDAP = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceLDAPAuthServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceStoreInfoRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetInstanceStoreInfoResponseBody : Tea.TeaModel {
    public var max: Int64?

    public var requestId: String?

    public var usage: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.max != nil {
            map["Max"] = self.max!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.usage != nil {
            map["Usage"] = self.usage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Max"] as? Int64 {
            self.max = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Usage"] as? Int64 {
            self.usage = value
        }
    }
}

public class GetInstanceStoreInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceStoreInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceStoreInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableTwoFactor"] as? Bool {
                self.enableTwoFactor = value
            }
            if let value = dict["SkipTwoFactorTime"] as? Int64 {
                self.skipTwoFactorTime = value
            }
            if let value = dict["TwoFactorMethods"] as? [String] {
                self.twoFactorMethods = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? [String: Any?] {
            var model = GetInstanceTwoFactorResponseBody.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceTwoFactorResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["HasPassword"] as? Bool {
                    self.hasPassword = value
                }
                if let value = dict["NodeType"] as? String {
                    self.nodeType = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ProxyState"] as? String {
                    self.proxyState = value
                }
                if let value = dict["ProxyStateErrorCode"] as? String {
                    self.proxyStateErrorCode = value
                }
                if let value = dict["ProxyType"] as? String {
                    self.proxyType = value
                }
                if let value = dict["User"] as? String {
                    self.user = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["Default"] as? Bool {
                self.default_ = value
            }
            if let value = dict["NetworkDomainId"] as? String {
                self.networkDomainId = value
            }
            if let value = dict["NetworkDomainName"] as? String {
                self.networkDomainName = value
            }
            if let value = dict["NetworkDomainType"] as? String {
                self.networkDomainType = value
            }
            if let value = dict["Proxies"] as? [Any?] {
                var tmp : [GetNetworkDomainResponseBody.NetworkDomain.Proxies] = []
                for v in value {
                    if v != nil {
                        var model = GetNetworkDomainResponseBody.NetworkDomain.Proxies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkDomain"] as? [String: Any?] {
            var model = GetNetworkDomainResponseBody.NetworkDomain()
            model.fromMap(value)
            self.networkDomain = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetNetworkDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Days"] as? [String] {
                        self.days = value
                    }
                    if let value = dict["Hours"] as? [String] {
                        self.hours = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EffectiveTime"] as? [Any?] {
                    var tmp : [GetPolicyResponseBody.Policy.AccessTimeRangeConfig.EffectiveTime] = []
                    for v in value {
                        if v != nil {
                            var model = GetPolicyResponseBody.Policy.AccessTimeRangeConfig.EffectiveTime()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SwitchStatus"] as? String {
                    self.switchStatus = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Commands"] as? [String] {
                        self.commands = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AclType"] as? String {
                        self.aclType = value
                    }
                    if let value = dict["Commands"] as? [String] {
                        self.commands = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Approval"] as? [String: Any?] {
                    var model = GetPolicyResponseBody.Policy.CommandConfig.Approval()
                    model.fromMap(value)
                    self.approval = model
                }
                if let value = dict["Deny"] as? [String: Any?] {
                    var model = GetPolicyResponseBody.Policy.CommandConfig.Deny()
                    model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AclType"] as? String {
                    self.aclType = value
                }
                if let value = dict["IPs"] as? [String] {
                    self.IPs = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClipboardDownload"] as? String {
                        self.clipboardDownload = value
                    }
                    if let value = dict["ClipboardUpload"] as? String {
                        self.clipboardUpload = value
                    }
                    if let value = dict["DiskRedirection"] as? String {
                        self.diskRedirection = value
                    }
                    if let value = dict["RecordKeyboard"] as? String {
                        self.recordKeyboard = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExecCommand"] as? String {
                        self.execCommand = value
                    }
                    if let value = dict["SFTPChannel"] as? String {
                        self.SFTPChannel = value
                    }
                    if let value = dict["SFTPDownloadFile"] as? String {
                        self.SFTPDownloadFile = value
                    }
                    if let value = dict["SFTPMkdir"] as? String {
                        self.SFTPMkdir = value
                    }
                    if let value = dict["SFTPRemoveFile"] as? String {
                        self.SFTPRemoveFile = value
                    }
                    if let value = dict["SFTPRenameFile"] as? String {
                        self.SFTPRenameFile = value
                    }
                    if let value = dict["SFTPRmdir"] as? String {
                        self.SFTPRmdir = value
                    }
                    if let value = dict["SFTPUploadFile"] as? String {
                        self.SFTPUploadFile = value
                    }
                    if let value = dict["SSHChannel"] as? String {
                        self.SSHChannel = value
                    }
                    if let value = dict["X11Forwarding"] as? String {
                        self.x11Forwarding = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RDP"] as? [String: Any?] {
                    var model = GetPolicyResponseBody.Policy.ProtocolConfig.RDP()
                    model.fromMap(value)
                    self.RDP = model
                }
                if let value = dict["SSH"] as? [String: Any?] {
                    var model = GetPolicyResponseBody.Policy.ProtocolConfig.SSH()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTimeRangeConfig"] as? [String: Any?] {
                var model = GetPolicyResponseBody.Policy.AccessTimeRangeConfig()
                model.fromMap(value)
                self.accessTimeRangeConfig = model
            }
            if let value = dict["ApprovalConfig"] as? [String: Any?] {
                var model = GetPolicyResponseBody.Policy.ApprovalConfig()
                model.fromMap(value)
                self.approvalConfig = model
            }
            if let value = dict["CommandConfig"] as? [String: Any?] {
                var model = GetPolicyResponseBody.Policy.CommandConfig()
                model.fromMap(value)
                self.commandConfig = model
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["IPAclConfig"] as? [String: Any?] {
                var model = GetPolicyResponseBody.Policy.IPAclConfig()
                model.fromMap(value)
                self.IPAclConfig = model
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["Priority"] as? Int64 {
                self.priority = value
            }
            if let value = dict["ProtocolConfig"] as? [String: Any?] {
                var model = GetPolicyResponseBody.Policy.ProtocolConfig()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = GetPolicyResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountScopeType"] as? String {
                    self.accountScopeType = value
                }
                if let value = dict["DatabaseAccountIds"] as? [String] {
                    self.databaseAccountIds = value
                }
                if let value = dict["DatabaseId"] as? String {
                    self.databaseId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountNames"] as? [String] {
                    self.accountNames = value
                }
                if let value = dict["AccountScopeType"] as? String {
                    self.accountScopeType = value
                }
                if let value = dict["HostGroupId"] as? String {
                    self.hostGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountScopeType"] as? String {
                    self.accountScopeType = value
                }
                if let value = dict["HostAccountIds"] as? [String] {
                    self.hostAccountIds = value
                }
                if let value = dict["HostId"] as? String {
                    self.hostId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Databases"] as? [Any?] {
                var tmp : [GetPolicyAssetScopeResponseBody.AssetScope.Databases] = []
                for v in value {
                    if v != nil {
                        var model = GetPolicyAssetScopeResponseBody.AssetScope.Databases()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.databases = tmp
            }
            if let value = dict["HostGroups"] as? [Any?] {
                var tmp : [GetPolicyAssetScopeResponseBody.AssetScope.HostGroups] = []
                for v in value {
                    if v != nil {
                        var model = GetPolicyAssetScopeResponseBody.AssetScope.HostGroups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostGroups = tmp
            }
            if let value = dict["Hosts"] as? [Any?] {
                var tmp : [GetPolicyAssetScopeResponseBody.AssetScope.Hosts] = []
                for v in value {
                    if v != nil {
                        var model = GetPolicyAssetScopeResponseBody.AssetScope.Hosts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hosts = tmp
            }
            if let value = dict["ScopeType"] as? String {
                self.scopeType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetScope"] as? [String: Any?] {
            var model = GetPolicyAssetScopeResponseBody.AssetScope()
            model.fromMap(value)
            self.assetScope = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPolicyAssetScopeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ScopeType"] as? String {
                self.scopeType = value
            }
            if let value = dict["UserGroupIds"] as? [String] {
                self.userGroupIds = value
            }
            if let value = dict["UserIds"] as? [String] {
                self.userIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserScope"] as? [String: Any?] {
            var model = GetPolicyUserScopeResponseBody.UserScope()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPolicyUserScopeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DatabaseAccountId"] as? String {
                        self.databaseAccountId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DatabaseAccounts"] as? [Any?] {
                    var tmp : [GetRuleResponseBody.Rule.Databases.DatabaseAccounts] = []
                    for v in value {
                        if v != nil {
                            var model = GetRuleResponseBody.Rule.Databases.DatabaseAccounts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.databaseAccounts = tmp
                }
                if let value = dict["DatabaseId"] as? String {
                    self.databaseId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HostAccountNames"] as? [String] {
                    self.hostAccountNames = value
                }
                if let value = dict["HostGroupId"] as? String {
                    self.hostGroupId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HostAccountId"] as? String {
                        self.hostAccountId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HostAccounts"] as? [Any?] {
                    var tmp : [GetRuleResponseBody.Rule.Hosts.HostAccounts] = []
                    for v in value {
                        if v != nil {
                            var model = GetRuleResponseBody.Rule.Hosts.HostAccounts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.hostAccounts = tmp
                }
                if let value = dict["HostId"] as? String {
                    self.hostId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["UserGroupId"] as? String {
                    self.userGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["Databases"] as? [Any?] {
                var tmp : [GetRuleResponseBody.Rule.Databases] = []
                for v in value {
                    if v != nil {
                        var model = GetRuleResponseBody.Rule.Databases()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.databases = tmp
            }
            if let value = dict["EffectiveEndTime"] as? String {
                self.effectiveEndTime = value
            }
            if let value = dict["EffectiveStartTime"] as? String {
                self.effectiveStartTime = value
            }
            if let value = dict["HostGroups"] as? [Any?] {
                var tmp : [GetRuleResponseBody.Rule.HostGroups] = []
                for v in value {
                    if v != nil {
                        var model = GetRuleResponseBody.Rule.HostGroups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostGroups = tmp
            }
            if let value = dict["Hosts"] as? [Any?] {
                var tmp : [GetRuleResponseBody.Rule.Hosts] = []
                for v in value {
                    if v != nil {
                        var model = GetRuleResponseBody.Rule.Hosts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hosts = tmp
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["UserGroups"] as? [Any?] {
                var tmp : [GetRuleResponseBody.Rule.UserGroups] = []
                for v in value {
                    if v != nil {
                        var model = GetRuleResponseBody.Rule.UserGroups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.userGroups = tmp
            }
            if let value = dict["Users"] as? [Any?] {
                var tmp : [GetRuleResponseBody.Rule.Users] = []
                for v in value {
                    if v != nil {
                        var model = GetRuleResponseBody.Rule.Users()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rule"] as? [String: Any?] {
            var model = GetRuleResponseBody.Rule()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["EffectiveEndTime"] as? Int64 {
                self.effectiveEndTime = value
            }
            if let value = dict["EffectiveStartTime"] as? Int64 {
                self.effectiveStartTime = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["LanguageStatus"] as? String {
                self.languageStatus = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["MobileCountryCode"] as? String {
                self.mobileCountryCode = value
            }
            if let value = dict["NeedResetPassword"] as? Bool {
                self.needResetPassword = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceUserId"] as? String {
                self.sourceUserId = value
            }
            if let value = dict["TwoFactorMethods"] as? [String] {
                self.twoFactorMethods = value
            }
            if let value = dict["TwoFactorStatus"] as? String {
                self.twoFactorStatus = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["UserState"] as? [String] {
                self.userState = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
            }
            if let value = dict["UserGroupName"] as? String {
                self.userGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserGroup"] as? [String: Any?] {
            var model = GetUserGroupResponseBody.UserGroup()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApproveCommandId"] as? String {
                self.approveCommandId = value
            }
            if let value = dict["AssetAccountName"] as? String {
                self.assetAccountName = value
            }
            if let value = dict["AssetIp"] as? String {
                self.assetIp = value
            }
            if let value = dict["AssetName"] as? String {
                self.assetName = value
            }
            if let value = dict["ClientIp"] as? String {
                self.clientIp = value
            }
            if let value = dict["ClientUser"] as? String {
                self.clientUser = value
            }
            if let value = dict["Command"] as? String {
                self.command = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["State"] as? String {
                self.state = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApproveCommands"] as? [Any?] {
            var tmp : [ListApproveCommandsResponseBody.ApproveCommands] = []
            for v in value {
                if v != nil {
                    var model = ListApproveCommandsResponseBody.ApproveCommands()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.approveCommands = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListApproveCommandsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccountName"] as? String {
            self.databaseAccountName = value
        }
        if let value = dict["DatabaseId"] as? String {
            self.databaseId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountId"] as? String {
                self.databaseAccountId = value
            }
            if let value = dict["DatabaseAccountName"] as? String {
                self.databaseAccountName = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["DatabaseSchema"] as? String {
                self.databaseSchema = value
            }
            if let value = dict["HasPassword"] as? String {
                self.hasPassword = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccounts"] as? [Any?] {
            var tmp : [ListDatabaseAccountsResponseBody.DatabaseAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListDatabaseAccountsResponseBody.DatabaseAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databaseAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatabaseAccountsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccountName"] as? String {
            self.databaseAccountName = value
        }
        if let value = dict["DatabaseId"] as? String {
            self.databaseId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountId"] as? String {
                self.databaseAccountId = value
            }
            if let value = dict["DatabaseAccountName"] as? String {
                self.databaseAccountName = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["IsAuthorized"] as? Bool {
                self.isAuthorized = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccounts"] as? [Any?] {
            var tmp : [ListDatabaseAccountsForUserResponseBody.DatabaseAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListDatabaseAccountsForUserResponseBody.DatabaseAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databaseAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatabaseAccountsForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccountName"] as? String {
            self.databaseAccountName = value
        }
        if let value = dict["DatabaseId"] as? String {
            self.databaseId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountId"] as? String {
                self.databaseAccountId = value
            }
            if let value = dict["DatabaseAccountName"] as? String {
                self.databaseAccountName = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["IsAuthorized"] as? Bool {
                self.isAuthorized = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccounts"] as? [Any?] {
            var tmp : [ListDatabaseAccountsForUserGroupResponseBody.DatabaseAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListDatabaseAccountsForUserGroupResponseBody.DatabaseAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databaseAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatabaseAccountsForUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseType"] as? String {
            self.databaseType = value
        }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["DatabaseName"] as? String {
                self.databaseName = value
            }
            if let value = dict["DatabasePort"] as? Int32 {
                self.databasePort = value
            }
            if let value = dict["DatabasePrivateAddress"] as? String {
                self.databasePrivateAddress = value
            }
            if let value = dict["DatabasePublicAddress"] as? String {
                self.databasePublicAddress = value
            }
            if let value = dict["DatabaseType"] as? String {
                self.databaseType = value
            }
            if let value = dict["NetworkDomainId"] as? String {
                self.networkDomainId = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceInstanceId"] as? String {
                self.sourceInstanceId = value
            }
            if let value = dict["SourceInstanceRegionId"] as? String {
                self.sourceInstanceRegionId = value
            }
            if let value = dict["SourceInstanceState"] as? String {
                self.sourceInstanceState = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [ListDatabasesResponseBody.Databases] = []
            for v in value {
                if v != nil {
                    var model = ListDatabasesResponseBody.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatabasesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAddress"] as? String {
            self.databaseAddress = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["DatabaseType"] as? String {
            self.databaseType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["DatabaseName"] as? String {
                self.databaseName = value
            }
            if let value = dict["DatabasePort"] as? Int64 {
                self.databasePort = value
            }
            if let value = dict["DatabasePrivateAddress"] as? String {
                self.databasePrivateAddress = value
            }
            if let value = dict["DatabasePublicAddress"] as? String {
                self.databasePublicAddress = value
            }
            if let value = dict["DatabaseType"] as? String {
                self.databaseType = value
            }
            if let value = dict["NetworkDomainId"] as? String {
                self.networkDomainId = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceInstanceId"] as? String {
                self.sourceInstanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [ListDatabasesForUserResponseBody.Databases] = []
            for v in value {
                if v != nil {
                    var model = ListDatabasesForUserResponseBody.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatabasesForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAddress"] as? String {
            self.databaseAddress = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["DatabaseType"] as? String {
            self.databaseType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["DatabaseAccountCount"] as? Int64 {
                self.databaseAccountCount = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["DatabaseName"] as? String {
                self.databaseName = value
            }
            if let value = dict["DatabasePort"] as? Int64 {
                self.databasePort = value
            }
            if let value = dict["DatabasePrivateAddress"] as? String {
                self.databasePrivateAddress = value
            }
            if let value = dict["DatabasePublicAddress"] as? String {
                self.databasePublicAddress = value
            }
            if let value = dict["DatabaseType"] as? String {
                self.databaseType = value
            }
            if let value = dict["NetworkDomainId"] as? String {
                self.networkDomainId = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceInstanceId"] as? String {
                self.sourceInstanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [ListDatabasesForUserGroupResponseBody.Databases] = []
            for v in value {
                if v != nil {
                    var model = ListDatabasesForUserGroupResponseBody.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDatabasesForUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListHostAccountsRequest : Tea.TeaModel {
    public var hostAccountName: String?

    public var hostId: String?

    public var hostIds: String?

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
        if self.hostIds != nil {
            map["HostIds"] = self.hostIds!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountName"] as? String {
            self.hostAccountName = value
        }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["HostIds"] as? String {
            self.hostIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ProtocolName"] as? String {
            self.protocolName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public var privilegeType: String?

        public var protocolName: String?

        public var rotationMode: String?

        public override init() {
            super.init()
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
            if self.privilegeType != nil {
                map["PrivilegeType"] = self.privilegeType!
            }
            if self.protocolName != nil {
                map["ProtocolName"] = self.protocolName!
            }
            if self.rotationMode != nil {
                map["RotationMode"] = self.rotationMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasPassword"] as? Bool {
                self.hasPassword = value
            }
            if let value = dict["HostAccountId"] as? String {
                self.hostAccountId = value
            }
            if let value = dict["HostAccountName"] as? String {
                self.hostAccountName = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["HostShareKeyId"] as? String {
                self.hostShareKeyId = value
            }
            if let value = dict["HostShareKeyName"] as? String {
                self.hostShareKeyName = value
            }
            if let value = dict["PrivateKeyFingerprint"] as? String {
                self.privateKeyFingerprint = value
            }
            if let value = dict["PrivilegeType"] as? String {
                self.privilegeType = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
            }
            if let value = dict["RotationMode"] as? String {
                self.rotationMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccounts"] as? [Any?] {
            var tmp : [ListHostAccountsResponseBody.HostAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListHostAccountsResponseBody.HostAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostAccountsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostShareKeyId"] as? String {
            self.hostShareKeyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostAccountName"] as? String {
                self.hostAccountName = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["HostsAccountId"] as? String {
                self.hostsAccountId = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccounts"] as? [Any?] {
            var tmp : [ListHostAccountsForHostShareKeyResponseBody.HostAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListHostAccountsForHostShareKeyResponseBody.HostAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostAccountsForHostShareKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountName"] as? String {
            self.hostAccountName = value
        }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostAccountId"] as? String {
                self.hostAccountId = value
            }
            if let value = dict["HostAccountName"] as? String {
                self.hostAccountName = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["IsAuthorized"] as? Bool {
                self.isAuthorized = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccounts"] as? [Any?] {
            var tmp : [ListHostAccountsForUserResponseBody.HostAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListHostAccountsForUserResponseBody.HostAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostAccountsForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountName"] as? String {
            self.hostAccountName = value
        }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostAccountId"] as? String {
                self.hostAccountId = value
            }
            if let value = dict["HostAccountName"] as? String {
                self.hostAccountName = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["IsAuthorized"] as? Bool {
                self.isAuthorized = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccounts"] as? [Any?] {
            var tmp : [ListHostAccountsForUserGroupResponseBody.HostAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListHostAccountsForUserGroupResponseBody.HostAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostAccountsForUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountNames"] as? [String] {
            self.hostAccountNames = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostGroupAccountNamesForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountNames"] as? [String] {
            self.hostAccountNames = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostGroupAccountNamesForUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupName"] as? String {
            self.hostGroupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["HostGroupName"] as? String {
                self.hostGroupName = value
            }
            if let value = dict["MemberCount"] as? Int32 {
                self.memberCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroups"] as? [Any?] {
            var tmp : [ListHostGroupsResponseBody.HostGroups] = []
            for v in value {
                if v != nil {
                    var model = ListHostGroupsResponseBody.HostGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostGroups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostGroupsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupName"] as? String {
            self.hostGroupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["HostGroupName"] as? String {
                self.hostGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroups"] as? [Any?] {
            var tmp : [ListHostGroupsForUserResponseBody.HostGroups] = []
            for v in value {
                if v != nil {
                    var model = ListHostGroupsForUserResponseBody.HostGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostGroups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostGroupsForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupName"] as? String {
            self.hostGroupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["HostGroupName"] as? String {
                self.hostGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroups"] as? [Any?] {
            var tmp : [ListHostGroupsForUserGroupResponseBody.HostGroups] = []
            for v in value {
                if v != nil {
                    var model = ListHostGroupsForUserGroupResponseBody.HostGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostGroups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostGroupsForUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostAccountCount"] as? Int64 {
                self.hostAccountCount = value
            }
            if let value = dict["HostShareKeyId"] as? String {
                self.hostShareKeyId = value
            }
            if let value = dict["HostShareKeyName"] as? String {
                self.hostShareKeyName = value
            }
            if let value = dict["LastModifyKeyAt"] as? Int64 {
                self.lastModifyKeyAt = value
            }
            if let value = dict["PrivateKeyFingerPrint"] as? String {
                self.privateKeyFingerPrint = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostShareKeys"] as? [Any?] {
            var tmp : [ListHostShareKeysResponseBody.HostShareKeys] = []
            for v in value {
                if v != nil {
                    var model = ListHostShareKeysResponseBody.HostShareKeys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostShareKeys = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostShareKeysResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAddress"] as? String {
            self.hostAddress = value
        }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OSType"] as? String {
            self.OSType = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceInstanceId"] as? String {
            self.sourceInstanceId = value
        }
        if let value = dict["SourceInstanceState"] as? String {
            self.sourceInstanceState = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["HostAccountCount"] as? Int32 {
                self.hostAccountCount = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["HostPrivateAddress"] as? String {
                self.hostPrivateAddress = value
            }
            if let value = dict["HostPublicAddress"] as? String {
                self.hostPublicAddress = value
            }
            if let value = dict["OSType"] as? String {
                self.OSType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceInstanceId"] as? String {
                self.sourceInstanceId = value
            }
            if let value = dict["SourceInstanceState"] as? String {
                self.sourceInstanceState = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hosts"] as? [Any?] {
            var tmp : [ListHostsResponseBody.Hosts] = []
            for v in value {
                if v != nil {
                    var model = ListHostsResponseBody.Hosts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hosts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAddress"] as? String {
            self.hostAddress = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["OSType"] as? String {
            self.OSType = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["HostPrivateAddress"] as? String {
                self.hostPrivateAddress = value
            }
            if let value = dict["HostPublicAddress"] as? String {
                self.hostPublicAddress = value
            }
            if let value = dict["OSType"] as? String {
                self.OSType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hosts"] as? [Any?] {
            var tmp : [ListHostsForUserResponseBody.Hosts] = []
            for v in value {
                if v != nil {
                    var model = ListHostsForUserResponseBody.Hosts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hosts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostsForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAddress"] as? String {
            self.hostAddress = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["OSType"] as? String {
            self.OSType = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["HostPrivateAddress"] as? String {
                self.hostPrivateAddress = value
            }
            if let value = dict["HostPublicAddress"] as? String {
                self.hostPublicAddress = value
            }
            if let value = dict["OSType"] as? String {
                self.OSType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hosts"] as? [Any?] {
            var tmp : [ListHostsForUserGroupResponseBody.Hosts] = []
            for v in value {
                if v != nil {
                    var model = ListHostsForUserGroupResponseBody.Hosts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hosts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHostsForUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceRdMembersRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListInstanceRdMembersResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberId != nil {
                map["MemberId"] = self.memberId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MemberId"] as? String {
                self.memberId = value
            }
        }
    }
    public var maxResults: Int32?

    public var members: [ListInstanceRdMembersResponseBody.Members]?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [ListInstanceRdMembersResponseBody.Members] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceRdMembersResponseBody.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstanceRdMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceRdMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceRdMembersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainName"] as? String {
            self.networkDomainName = value
        }
        if let value = dict["NetworkDomainType"] as? String {
            self.networkDomainType = value
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NodeType"] as? String {
                    self.nodeType = value
                }
                if let value = dict["ProxyState"] as? String {
                    self.proxyState = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["Default"] as? Bool {
                self.default_ = value
            }
            if let value = dict["NetworkDomainId"] as? String {
                self.networkDomainId = value
            }
            if let value = dict["NetworkDomainName"] as? String {
                self.networkDomainName = value
            }
            if let value = dict["NetworkDomainType"] as? String {
                self.networkDomainType = value
            }
            if let value = dict["ProxiesState"] as? [Any?] {
                var tmp : [ListNetworkDomainsResponseBody.NetworkDomains.ProxiesState] = []
                for v in value {
                    if v != nil {
                        var model = ListNetworkDomainsResponseBody.NetworkDomains.ProxiesState()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkDomains"] as? [Any?] {
            var tmp : [ListNetworkDomainsResponseBody.NetworkDomains] = []
            for v in value {
                if v != nil {
                    var model = ListNetworkDomainsResponseBody.NetworkDomains()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.networkDomains = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListNetworkDomainsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccountName"] as? String {
            self.databaseAccountName = value
        }
        if let value = dict["DatabaseId"] as? String {
            self.databaseId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBName"] as? String {
                self.DBName = value
            }
            if let value = dict["DatabaseAccountId"] as? String {
                self.databaseAccountId = value
            }
            if let value = dict["DatabaseAccountName"] as? String {
                self.databaseAccountName = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["HasPassword"] as? String {
                self.hasPassword = value
            }
            if let value = dict["LoginAttribute"] as? String {
                self.loginAttribute = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccounts"] as? [Any?] {
            var tmp : [ListOperationDatabaseAccountsResponseBody.DatabaseAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListOperationDatabaseAccountsResponseBody.DatabaseAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databaseAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOperationDatabaseAccountsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAddress"] as? String {
            self.databaseAddress = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["DatabaseType"] as? String {
            self.databaseType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceInstanceId"] as? String {
            self.sourceInstanceId = value
        }
        if let value = dict["SourceInstanceState"] as? String {
            self.sourceInstanceState = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["DatabaseName"] as? String {
                self.databaseName = value
            }
            if let value = dict["DatabasePort"] as? Int64 {
                self.databasePort = value
            }
            if let value = dict["DatabasePrivateAddress"] as? String {
                self.databasePrivateAddress = value
            }
            if let value = dict["DatabasePublicAddress"] as? String {
                self.databasePublicAddress = value
            }
            if let value = dict["DatabaseType"] as? String {
                self.databaseType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceInstanceId"] as? String {
                self.sourceInstanceId = value
            }
            if let value = dict["SourceInstanceRegionId"] as? String {
                self.sourceInstanceRegionId = value
            }
            if let value = dict["SourceInstanceState"] as? String {
                self.sourceInstanceState = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [ListOperationDatabasesResponseBody.Databases] = []
            for v in value {
                if v != nil {
                    var model = ListOperationDatabasesResponseBody.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOperationDatabasesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountName"] as? String {
            self.hostAccountName = value
        }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnableSFTPChannel"] as? Bool {
                    self.enableSFTPChannel = value
                }
                if let value = dict["EnableSSHChannel"] as? Bool {
                    self.enableSSHChannel = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasPassword"] as? Bool {
                self.hasPassword = value
            }
            if let value = dict["HostAccountId"] as? String {
                self.hostAccountId = value
            }
            if let value = dict["HostAccountName"] as? String {
                self.hostAccountName = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["HostShareKeyId"] as? String {
                self.hostShareKeyId = value
            }
            if let value = dict["PrivateKeyFingerprint"] as? String {
                self.privateKeyFingerprint = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
            }
            if let value = dict["SSHConfig"] as? [String: Any?] {
                var model = ListOperationHostAccountsResponseBody.HostAccounts.SSHConfig()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccounts"] as? [Any?] {
            var tmp : [ListOperationHostAccountsResponseBody.HostAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListOperationHostAccountsResponseBody.HostAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostAccounts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOperationHostAccountsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAddress"] as? String {
            self.hostAddress = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OSType"] as? String {
            self.OSType = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceInstanceId"] as? String {
            self.sourceInstanceId = value
        }
        if let value = dict["SourceInstanceState"] as? String {
            self.sourceInstanceState = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveAddressType"] as? String {
                self.activeAddressType = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["HostPrivateAddress"] as? String {
                self.hostPrivateAddress = value
            }
            if let value = dict["HostPublicAddress"] as? String {
                self.hostPublicAddress = value
            }
            if let value = dict["OSType"] as? String {
                self.OSType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceInstanceId"] as? String {
                self.sourceInstanceId = value
            }
            if let value = dict["SourceInstanceState"] as? String {
                self.sourceInstanceState = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hosts"] as? [Any?] {
            var tmp : [ListOperationHostsResponseBody.Hosts] = []
            for v in value {
                if v != nil {
                    var model = ListOperationHostsResponseBody.Hosts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hosts = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOperationHostsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetAddress"] as? String {
            self.assetAddress = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
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

public class ListOperationTicketsResponseBody : Tea.TeaModel {
    public class OperationTickets : Tea.TeaModel {
        public var applyUserId: String?

        public var applyUsername: String?

        public var approveComment: String?

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

        public var effectCount: Int32?

        public var effectEndTime: Int32?

        public var effectStartTime: Int32?

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
            if self.approveComment != nil {
                map["ApproveComment"] = self.approveComment!
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
            if self.effectCount != nil {
                map["EffectCount"] = self.effectCount!
            }
            if self.effectEndTime != nil {
                map["EffectEndTime"] = self.effectEndTime!
            }
            if self.effectStartTime != nil {
                map["EffectStartTime"] = self.effectStartTime!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplyUserId"] as? String {
                self.applyUserId = value
            }
            if let value = dict["ApplyUsername"] as? String {
                self.applyUsername = value
            }
            if let value = dict["ApproveComment"] as? String {
                self.approveComment = value
            }
            if let value = dict["AssetAccountId"] as? String {
                self.assetAccountId = value
            }
            if let value = dict["AssetAccountName"] as? String {
                self.assetAccountName = value
            }
            if let value = dict["AssetAddress"] as? String {
                self.assetAddress = value
            }
            if let value = dict["AssetId"] as? String {
                self.assetId = value
            }
            if let value = dict["AssetName"] as? String {
                self.assetName = value
            }
            if let value = dict["AssetNetworkDomainId"] as? String {
                self.assetNetworkDomainId = value
            }
            if let value = dict["AssetOs"] as? String {
                self.assetOs = value
            }
            if let value = dict["AssetSource"] as? String {
                self.assetSource = value
            }
            if let value = dict["AssetSourceInstanceId"] as? String {
                self.assetSourceInstanceId = value
            }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["EffectCount"] as? Int32 {
                self.effectCount = value
            }
            if let value = dict["EffectEndTime"] as? Int32 {
                self.effectEndTime = value
            }
            if let value = dict["EffectStartTime"] as? Int32 {
                self.effectStartTime = value
            }
            if let value = dict["OperationTicketId"] as? String {
                self.operationTicketId = value
            }
            if let value = dict["ProtocolName"] as? String {
                self.protocolName = value
            }
            if let value = dict["State"] as? String {
                self.state = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationTickets"] as? [Any?] {
            var tmp : [ListOperationTicketsResponseBody.OperationTickets] = []
            for v in value {
                if v != nil {
                    var model = ListOperationTicketsResponseBody.OperationTickets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.operationTickets = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListOperationTicketsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["Priority"] as? Int64 {
                self.priority = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policies"] as? [Any?] {
            var tmp : [ListPoliciesResponseBody.Policies] = []
            for v in value {
                if v != nil {
                    var model = ListPoliciesResponseBody.Policies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policies = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPoliciesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleState"] as? String {
            self.ruleState = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["EffectiveEndTime"] as? Int64 {
                self.effectiveEndTime = value
            }
            if let value = dict["EffectiveStartTime"] as? Int64 {
                self.effectiveStartTime = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleState"] as? String {
                self.ruleState = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [ListRulesResponseBody.Rules] = []
            for v in value {
                if v != nil {
                    var model = ListRulesResponseBody.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagCount"] as? Int32 {
                self.tagCount = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
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
        if let value = dict["TagKeys"] as? [Any?] {
            var tmp : [ListTagKeysResponseBody.TagKeys] = []
            for v in value {
                if v != nil {
                    var model = ListTagKeysResponseBody.TagKeys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagKeys = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagKeysResponseBody()
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

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupName"] as? String {
            self.userGroupName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["MemberCount"] as? Int32 {
                self.memberCount = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
            }
            if let value = dict["UserGroupName"] as? String {
                self.userGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["UserGroups"] as? [Any?] {
            var tmp : [ListUserGroupsResponseBody.UserGroups] = []
            for v in value {
                if v != nil {
                    var model = ListUserGroupsResponseBody.UserGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserGroupsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["FingerPrint"] as? String {
                self.fingerPrint = value
            }
            if let value = dict["PublicKeyId"] as? String {
                self.publicKeyId = value
            }
            if let value = dict["PublicKeyName"] as? String {
                self.publicKeyName = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PublicKeys"] as? [Any?] {
            var tmp : [ListUserPublicKeysResponseBody.PublicKeys] = []
            for v in value {
                if v != nil {
                    var model = ListUserPublicKeysResponseBody.PublicKeys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.publicKeys = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserPublicKeysResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceUserId"] as? String {
            self.sourceUserId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["UserState"] as? String {
            self.userState = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["EffectiveEndTime"] as? Int64 {
                self.effectiveEndTime = value
            }
            if let value = dict["EffectiveStartTime"] as? Int64 {
                self.effectiveStartTime = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["LanguageStatus"] as? String {
                self.languageStatus = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["MobileCountryCode"] as? String {
                self.mobileCountryCode = value
            }
            if let value = dict["NeedResetPassword"] as? Bool {
                self.needResetPassword = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceUserId"] as? String {
                self.sourceUserId = value
            }
            if let value = dict["TwoFactorMethods"] as? [String] {
                self.twoFactorMethods = value
            }
            if let value = dict["TwoFactorStatus"] as? String {
                self.twoFactorStatus = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["UserState"] as? [String] {
                self.userState = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [LockUsersResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = LockUsersResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = LockUsersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActiveAddressType"] as? String {
            self.activeAddressType = value
        }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["DatabaseId"] as? String {
            self.databaseId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["DatabasePort"] as? String {
            self.databasePort = value
        }
        if let value = dict["DatabasePrivateAddress"] as? String {
            self.databasePrivateAddress = value
        }
        if let value = dict["DatabasePublicAddress"] as? String {
            self.databasePublicAddress = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SourceInstanceId"] as? String {
            self.sourceInstanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDatabaseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseAccountId"] as? String {
            self.databaseAccountId = value
        }
        if let value = dict["DatabaseAccountName"] as? String {
            self.databaseAccountName = value
        }
        if let value = dict["DatabaseSchema"] as? String {
            self.databaseSchema = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDatabaseAccountResponseBody()
            model.fromMap(value)
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

    public var prefKex: String?

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
        if self.prefKex != nil {
            map["PrefKex"] = self.prefKex!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["HostId"] as? String {
            self.hostId = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["HostPrivateAddress"] as? String {
            self.hostPrivateAddress = value
        }
        if let value = dict["HostPublicAddress"] as? String {
            self.hostPublicAddress = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["OSType"] as? String {
            self.OSType = value
        }
        if let value = dict["PrefKex"] as? String {
            self.prefKex = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyHostResponseBody()
            model.fromMap(value)
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

    public var privilegeType: String?

    public var regionId: String?

    public var rotationMode: String?

    public override init() {
        super.init()
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
        if self.privilegeType != nil {
            map["PrivilegeType"] = self.privilegeType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rotationMode != nil {
            map["RotationMode"] = self.rotationMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostAccountId"] as? String {
            self.hostAccountId = value
        }
        if let value = dict["HostAccountName"] as? String {
            self.hostAccountName = value
        }
        if let value = dict["HostShareKeyId"] as? String {
            self.hostShareKeyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PassPhrase"] as? String {
            self.passPhrase = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["PrivilegeType"] as? String {
            self.privilegeType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RotationMode"] as? String {
            self.rotationMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyHostAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["HostGroupName"] as? String {
            self.hostGroupName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyHostGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostShareKeyId"] as? String {
            self.hostShareKeyId = value
        }
        if let value = dict["HostShareKeyName"] as? String {
            self.hostShareKeyName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PassPhrase"] as? String {
            self.passPhrase = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyHostShareKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActiveAddressType"] as? String {
            self.activeAddressType = value
        }
        if let value = dict["HostIds"] as? String {
            self.hostIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [ModifyHostsActiveAddressTypeResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = ModifyHostsActiveAddressTypeResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyHostsActiveAddressTypeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostIds"] as? String {
            self.hostIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["ProtocolName"] as? String {
            self.protocolName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [ModifyHostsPortResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = ModifyHostsPortResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyHostsPortResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["BaseDN"] as? String {
            self.baseDN = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EmailMapping"] as? String {
            self.emailMapping = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSSL"] as? String {
            self.isSSL = value
        }
        if let value = dict["MobileMapping"] as? String {
            self.mobileMapping = value
        }
        if let value = dict["NameMapping"] as? String {
            self.nameMapping = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Server"] as? String {
            self.server = value
        }
        if let value = dict["StandbyServer"] as? String {
            self.standbyServer = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceADAuthServerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["BaseDN"] as? String {
            self.baseDN = value
        }
        if let value = dict["EmailMapping"] as? String {
            self.emailMapping = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSSL"] as? String {
            self.isSSL = value
        }
        if let value = dict["LoginNameMapping"] as? String {
            self.loginNameMapping = value
        }
        if let value = dict["MobileMapping"] as? String {
            self.mobileMapping = value
        }
        if let value = dict["NameMapping"] as? String {
            self.nameMapping = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Server"] as? String {
            self.server = value
        }
        if let value = dict["StandbyServer"] as? String {
            self.standbyServer = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceLDAPAuthServerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableTwoFactor"] as? String {
            self.enableTwoFactor = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SkipTwoFactorTime"] as? String {
            self.skipTwoFactorTime = value
        }
        if let value = dict["TwoFactorMethods"] as? String {
            self.twoFactorMethods = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceTwoFactorResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["NodeType"] as? String {
                self.nodeType = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["ProxyType"] as? String {
                self.proxyType = value
            }
            if let value = dict["User"] as? String {
                self.user = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["NetworkDomainName"] as? String {
            self.networkDomainName = value
        }
        if let value = dict["NetworkDomainType"] as? String {
            self.networkDomainType = value
        }
        if let value = dict["Proxies"] as? [Any?] {
            var tmp : [ModifyNetworkDomainRequest.Proxies] = []
            for v in value {
                if v != nil {
                    var model = ModifyNetworkDomainRequest.Proxies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.proxies = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyNetworkDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["Priority"] as? String {
            self.priority = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPolicyResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DatabaseAccountIds"] as? [String] {
                self.databaseAccountIds = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostAccountNames"] as? [String] {
                self.hostAccountNames = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HostAccountIds"] as? [String] {
                self.hostAccountIds = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [ModifyRuleRequest.Databases] = []
            for v in value {
                if v != nil {
                    var model = ModifyRuleRequest.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["EffectiveEndTime"] as? Int64 {
            self.effectiveEndTime = value
        }
        if let value = dict["EffectiveStartTime"] as? Int64 {
            self.effectiveStartTime = value
        }
        if let value = dict["HostGroups"] as? [Any?] {
            var tmp : [ModifyRuleRequest.HostGroups] = []
            for v in value {
                if v != nil {
                    var model = ModifyRuleRequest.HostGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostGroups = tmp
        }
        if let value = dict["Hosts"] as? [Any?] {
            var tmp : [ModifyRuleRequest.Hosts] = []
            for v in value {
                if v != nil {
                    var model = ModifyRuleRequest.Hosts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hosts = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["UserGroupIds"] as? [String] {
            self.userGroupIds = value
        }
        if let value = dict["UserIds"] as? [String] {
            self.userIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["EffectiveEndTime"] as? Int64 {
            self.effectiveEndTime = value
        }
        if let value = dict["EffectiveStartTime"] as? Int64 {
            self.effectiveStartTime = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["LanguageStatus"] as? String {
            self.languageStatus = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["MobileCountryCode"] as? String {
            self.mobileCountryCode = value
        }
        if let value = dict["NeedResetPassword"] as? Bool {
            self.needResetPassword = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TwoFactorMethods"] as? String {
            self.twoFactorMethods = value
        }
        if let value = dict["TwoFactorStatus"] as? String {
            self.twoFactorStatus = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserGroupName"] as? String {
            self.userGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyUserGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PublicKey"] as? String {
            self.publicKey = value
        }
        if let value = dict["PublicKeyId"] as? String {
            self.publicKeyId = value
        }
        if let value = dict["PublicKeyName"] as? String {
            self.publicKeyName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyUserPublicKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseIds"] as? [String] {
            self.databaseIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [MoveDatabasesToNetworkDomainResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = MoveDatabasesToNetworkDomainResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MoveDatabasesToNetworkDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostIds"] as? [String] {
            self.hostIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NetworkDomainId"] as? String {
            self.networkDomainId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [MoveHostsToNetworkDomainResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = MoveHostsToNetworkDomainResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MoveHostsToNetworkDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RejectApproveCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RejectOperationTicketRequest : Tea.TeaModel {
    public var comment: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OperationTicketId"] as? String {
            self.operationTicketId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RejectOperationTicketResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseIds"] as? [String] {
            self.databaseIds = value
        }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [RemoveDatabasesFromGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = RemoveDatabasesFromGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveDatabasesFromGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostGroupId"] as? String {
            self.hostGroupId = value
        }
        if let value = dict["HostIds"] as? String {
            self.hostIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [RemoveHostsFromGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = RemoveHostsFromGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveHostsFromGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveInstanceRdMemberRequest : Tea.TeaModel {
    public var instanceId: String?

    public var memberId: String?

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
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MemberId"] as? String {
            self.memberId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RemoveInstanceRdMemberResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RemoveInstanceRdMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveInstanceRdMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveInstanceRdMemberResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [RemoveUsersFromGroupResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = RemoveUsersFromGroupResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveUsersFromGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TokenId"] as? String {
            self.tokenId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RenewAssetOperationTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialType"] as? String {
            self.credentialType = value
        }
        if let value = dict["HostAccountId"] as? String {
            self.hostAccountId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetHostAccountCredentialResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Days"] as? [Int32] {
                    self.days = value
                }
                if let value = dict["Hours"] as? [Int32] {
                    self.hours = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EffectiveTime"] as? [Any?] {
                var tmp : [SetPolicyAccessTimeRangeConfigRequest.AccessTimeRangeConfig.EffectiveTime] = []
                for v in value {
                    if v != nil {
                        var model = SetPolicyAccessTimeRangeConfigRequest.AccessTimeRangeConfig.EffectiveTime()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTimeRangeConfig"] as? [String: Any?] {
            var model = SetPolicyAccessTimeRangeConfigRequest.AccessTimeRangeConfig()
            model.fromMap(value)
            self.accessTimeRangeConfig = model
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTimeRangeConfig"] as? String {
            self.accessTimeRangeConfigShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetPolicyAccessTimeRangeConfigResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SwitchStatus"] as? String {
                self.switchStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalConfig"] as? [String: Any?] {
            var model = SetPolicyApprovalConfigRequest.ApprovalConfig()
            model.fromMap(value)
            self.approvalConfig = model
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalConfig"] as? String {
            self.approvalConfigShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetPolicyApprovalConfigResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountScopeType"] as? String {
                self.accountScopeType = value
            }
            if let value = dict["DatabaseAccountIds"] as? [String] {
                self.databaseAccountIds = value
            }
            if let value = dict["DatabaseId"] as? String {
                self.databaseId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountNames"] as? [String] {
                self.accountNames = value
            }
            if let value = dict["AccountScopeType"] as? String {
                self.accountScopeType = value
            }
            if let value = dict["HostGroupId"] as? String {
                self.hostGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountScopeType"] as? String {
                self.accountScopeType = value
            }
            if let value = dict["HostAccountIds"] as? [String] {
                self.hostAccountIds = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [SetPolicyAssetScopeRequest.Databases] = []
            for v in value {
                if v != nil {
                    var model = SetPolicyAssetScopeRequest.Databases()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["HostGroups"] as? [Any?] {
            var tmp : [SetPolicyAssetScopeRequest.HostGroups] = []
            for v in value {
                if v != nil {
                    var model = SetPolicyAssetScopeRequest.HostGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostGroups = tmp
        }
        if let value = dict["Hosts"] as? [Any?] {
            var tmp : [SetPolicyAssetScopeRequest.Hosts] = []
            for v in value {
                if v != nil {
                    var model = SetPolicyAssetScopeRequest.Hosts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hosts = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ScopeType"] as? String {
            self.scopeType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetPolicyAssetScopeResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Commands"] as? [String] {
                    self.commands = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AclType"] as? String {
                    self.aclType = value
                }
                if let value = dict["Commands"] as? [String] {
                    self.commands = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Approval"] as? [String: Any?] {
                var model = SetPolicyCommandConfigRequest.CommandConfig.Approval()
                model.fromMap(value)
                self.approval = model
            }
            if let value = dict["Deny"] as? [String: Any?] {
                var model = SetPolicyCommandConfigRequest.CommandConfig.Deny()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandConfig"] as? [String: Any?] {
            var model = SetPolicyCommandConfigRequest.CommandConfig()
            model.fromMap(value)
            self.commandConfig = model
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandConfig"] as? String {
            self.commandConfigShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetPolicyCommandConfigResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclType"] as? String {
                self.aclType = value
            }
            if let value = dict["IPs"] as? [String] {
                self.IPs = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IPAclConfig"] as? [String: Any?] {
            var model = SetPolicyIPAclConfigRequest.IPAclConfig()
            model.fromMap(value)
            self.IPAclConfig = model
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IPAclConfig"] as? String {
            self.IPAclConfigShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetPolicyIPAclConfigResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClipboardDownload"] as? String {
                    self.clipboardDownload = value
                }
                if let value = dict["ClipboardUpload"] as? String {
                    self.clipboardUpload = value
                }
                if let value = dict["DiskRedirection"] as? String {
                    self.diskRedirection = value
                }
                if let value = dict["RecordKeyboard"] as? String {
                    self.recordKeyboard = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExecCommand"] as? String {
                    self.execCommand = value
                }
                if let value = dict["SFTPChannel"] as? String {
                    self.SFTPChannel = value
                }
                if let value = dict["SFTPDownloadFile"] as? String {
                    self.SFTPDownloadFile = value
                }
                if let value = dict["SFTPMkdir"] as? String {
                    self.SFTPMkdir = value
                }
                if let value = dict["SFTPRemoveFile"] as? String {
                    self.SFTPRemoveFile = value
                }
                if let value = dict["SFTPRenameFile"] as? String {
                    self.SFTPRenameFile = value
                }
                if let value = dict["SFTPRmdir"] as? String {
                    self.SFTPRmdir = value
                }
                if let value = dict["SFTPUploadFile"] as? String {
                    self.SFTPUploadFile = value
                }
                if let value = dict["SSHChannel"] as? String {
                    self.SSHChannel = value
                }
                if let value = dict["X11Forwarding"] as? String {
                    self.x11Forwarding = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RDP"] as? [String: Any?] {
                var model = SetPolicyProtocolConfigRequest.ProtocolConfig.RDP()
                model.fromMap(value)
                self.RDP = model
            }
            if let value = dict["SSH"] as? [String: Any?] {
                var model = SetPolicyProtocolConfigRequest.ProtocolConfig.SSH()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["ProtocolConfig"] as? [String: Any?] {
            var model = SetPolicyProtocolConfigRequest.ProtocolConfig()
            model.fromMap(value)
            self.protocolConfig = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["ProtocolConfig"] as? String {
            self.protocolConfigShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetPolicyProtocolConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ScopeType"] as? String {
            self.scopeType = value
        }
        if let value = dict["UserGroupIds"] as? [String] {
            self.userGroupIds = value
        }
        if let value = dict["UserIds"] as? [String] {
            self.userIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetPolicyUserScopeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartInstanceRequest : Tea.TeaModel {
    public var clientSecurityGroupIds: [String]?

    public var enablePortalPrivateAccess: Bool?

    public var instanceId: String?

    public var regionId: String?

    public var securityGroupIds: [String]?

    public var slaveVswitchId: String?

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
        if self.clientSecurityGroupIds != nil {
            map["ClientSecurityGroupIds"] = self.clientSecurityGroupIds!
        }
        if self.enablePortalPrivateAccess != nil {
            map["EnablePortalPrivateAccess"] = self.enablePortalPrivateAccess!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
        }
        if self.slaveVswitchId != nil {
            map["SlaveVswitchId"] = self.slaveVswitchId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientSecurityGroupIds"] as? [String] {
            self.clientSecurityGroupIds = value
        }
        if let value = dict["EnablePortalPrivateAccess"] as? Bool {
            self.enablePortalPrivateAccess = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroupIds"] as? [String] {
            self.securityGroupIds = value
        }
        if let value = dict["SlaveVswitchId"] as? String {
            self.slaveVswitchId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartInstanceResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [UnlockUsersResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = UnlockUsersResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnlockUsersResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["BaseDN"] as? String {
            self.baseDN = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSSL"] as? String {
            self.isSSL = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Server"] as? String {
            self.server = value
        }
        if let value = dict["StandbyServer"] as? String {
            self.standbyServer = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VerifyInstanceADAuthServerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["BaseDN"] as? String {
            self.baseDN = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSSL"] as? String {
            self.isSSL = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Server"] as? String {
            self.server = value
        }
        if let value = dict["StandbyServer"] as? String {
            self.standbyServer = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VerifyInstanceLDAPAuthServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
