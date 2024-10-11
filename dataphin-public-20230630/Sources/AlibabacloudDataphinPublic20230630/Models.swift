import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataSourceInfo : Tea.TeaModel {
    public var configs: [String: String]?

    public var createTime: Int64?

    public var creator: String?

    public var creatorName: String?

    public var description_: String?

    public var env: String?

    public var id: Int64?

    public var modifyTime: Int64?

    public var name: String?

    public var owner: String?

    public var ownerName: String?

    public var scope: String?

    public var tenantId: Int64?

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
        if self.configs != nil {
            map["Configs"] = self.configs!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.creatorName != nil {
            map["CreatorName"] = self.creatorName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.ownerName != nil {
            map["OwnerName"] = self.ownerName!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Configs") {
            self.configs = dict["Configs"] as! [String: String]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("Creator") {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("CreatorName") {
            self.creatorName = dict["CreatorName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("OwnerName") {
            self.ownerName = dict["OwnerName"] as! String
        }
        if dict.keys.contains("Scope") {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DatasourceCreate : Tea.TeaModel {
    public var checkActivity: Bool?

    public var configs: [String: String]?

    public var description_: String?

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
        if self.checkActivity != nil {
            map["CheckActivity"] = self.checkActivity!
        }
        if self.configs != nil {
            map["Configs"] = self.configs!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckActivity") {
            self.checkActivity = dict["CheckActivity"] as! Bool
        }
        if dict.keys.contains("Configs") {
            self.configs = dict["Configs"] as! [String: String]
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class AddTenantMembersRequest : Tea.TeaModel {
    public class AddCommand : Tea.TeaModel {
        public class UserList : Tea.TeaModel {
            public var id: String?

            public var roleList: [String]?

            public override init() {
                super.init()
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
                if self.roleList != nil {
                    map["RoleList"] = self.roleList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("RoleList") {
                    self.roleList = dict["RoleList"] as! [String]
                }
            }
        }
        public var userList: [AddTenantMembersRequest.AddCommand.UserList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userList != nil {
                var tmp : [Any] = []
                for k in self.userList! {
                    tmp.append(k.toMap())
                }
                map["UserList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserList") {
                var tmp : [AddTenantMembersRequest.AddCommand.UserList] = []
                for v in dict["UserList"] as! [Any] {
                    var model = AddTenantMembersRequest.AddCommand.UserList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userList = tmp
            }
        }
    }
    public var addCommand: AddTenantMembersRequest.AddCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.addCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addCommand != nil {
            map["AddCommand"] = self.addCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddCommand") {
            var model = AddTenantMembersRequest.AddCommand()
            model.fromMap(dict["AddCommand"] as! [String: Any])
            self.addCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class AddTenantMembersShrinkRequest : Tea.TeaModel {
    public var addCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addCommandShrink != nil {
            map["AddCommand"] = self.addCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddCommand") {
            self.addCommandShrink = dict["AddCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class AddTenantMembersResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class AddTenantMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTenantMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddTenantMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTenantMembersBySourceUserRequest : Tea.TeaModel {
    public class AddCommand : Tea.TeaModel {
        public class SourceUserList : Tea.TeaModel {
            public var accountName: String?

            public var dingNumber: String?

            public var displayName: String?

            public var mail: String?

            public var mobilePhone: String?

            public var sourceId: String?

            public override init() {
                super.init()
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
                if self.dingNumber != nil {
                    map["DingNumber"] = self.dingNumber!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.mail != nil {
                    map["Mail"] = self.mail!
                }
                if self.mobilePhone != nil {
                    map["MobilePhone"] = self.mobilePhone!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("DingNumber") {
                    self.dingNumber = dict["DingNumber"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Mail") {
                    self.mail = dict["Mail"] as! String
                }
                if dict.keys.contains("MobilePhone") {
                    self.mobilePhone = dict["MobilePhone"] as! String
                }
                if dict.keys.contains("SourceId") {
                    self.sourceId = dict["SourceId"] as! String
                }
            }
        }
        public var sourceUserList: [AddTenantMembersBySourceUserRequest.AddCommand.SourceUserList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sourceUserList != nil {
                var tmp : [Any] = []
                for k in self.sourceUserList! {
                    tmp.append(k.toMap())
                }
                map["SourceUserList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SourceUserList") {
                var tmp : [AddTenantMembersBySourceUserRequest.AddCommand.SourceUserList] = []
                for v in dict["SourceUserList"] as! [Any] {
                    var model = AddTenantMembersBySourceUserRequest.AddCommand.SourceUserList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sourceUserList = tmp
            }
        }
    }
    public var addCommand: AddTenantMembersBySourceUserRequest.AddCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.addCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addCommand != nil {
            map["AddCommand"] = self.addCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddCommand") {
            var model = AddTenantMembersBySourceUserRequest.AddCommand()
            model.fromMap(dict["AddCommand"] as! [String: Any])
            self.addCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class AddTenantMembersBySourceUserShrinkRequest : Tea.TeaModel {
    public var addCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addCommandShrink != nil {
            map["AddCommand"] = self.addCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddCommand") {
            self.addCommandShrink = dict["AddCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class AddTenantMembersBySourceUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class AddTenantMembersBySourceUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTenantMembersBySourceUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddTenantMembersBySourceUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUserGroupMemberRequest : Tea.TeaModel {
    public class AddCommand : Tea.TeaModel {
        public var userGroupId: String?

        public var userIdList: [String]?

        public override init() {
            super.init()
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
            if self.userIdList != nil {
                map["UserIdList"] = self.userIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserGroupId") {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserIdList") {
                self.userIdList = dict["UserIdList"] as! [String]
            }
        }
    }
    public var addCommand: AddUserGroupMemberRequest.AddCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.addCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addCommand != nil {
            map["AddCommand"] = self.addCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddCommand") {
            var model = AddUserGroupMemberRequest.AddCommand()
            model.fromMap(dict["AddCommand"] as! [String: Any])
            self.addCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class AddUserGroupMemberShrinkRequest : Tea.TeaModel {
    public var addCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addCommandShrink != nil {
            map["AddCommand"] = self.addCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddCommand") {
            self.addCommandShrink = dict["AddCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class AddUserGroupMemberResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class AddUserGroupMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserGroupMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddUserGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDataSourceConnectivityRequest : Tea.TeaModel {
    public class CheckCommand : Tea.TeaModel {
        public class ConfigItemList : Tea.TeaModel {
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
        public var configItemList: [CheckDataSourceConnectivityRequest.CheckCommand.ConfigItemList]?

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
            if self.configItemList != nil {
                var tmp : [Any] = []
                for k in self.configItemList! {
                    tmp.append(k.toMap())
                }
                map["ConfigItemList"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigItemList") {
                var tmp : [CheckDataSourceConnectivityRequest.CheckCommand.ConfigItemList] = []
                for v in dict["ConfigItemList"] as! [Any] {
                    var model = CheckDataSourceConnectivityRequest.CheckCommand.ConfigItemList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.configItemList = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var checkCommand: CheckDataSourceConnectivityRequest.CheckCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.checkCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkCommand != nil {
            map["CheckCommand"] = self.checkCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckCommand") {
            var model = CheckDataSourceConnectivityRequest.CheckCommand()
            model.fromMap(dict["CheckCommand"] as! [String: Any])
            self.checkCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CheckDataSourceConnectivityShrinkRequest : Tea.TeaModel {
    public var checkCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkCommandShrink != nil {
            map["CheckCommand"] = self.checkCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckCommand") {
            self.checkCommandShrink = dict["CheckCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CheckDataSourceConnectivityResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class CheckDataSourceConnectivityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDataSourceConnectivityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckDataSourceConnectivityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDataSourceConnectivityByIdRequest : Tea.TeaModel {
    public var id: Int64?

    public var opTenantId: Int64?

    public override init() {
        super.init()
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
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CheckDataSourceConnectivityByIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class CheckDataSourceConnectivityByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDataSourceConnectivityByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckDataSourceConnectivityByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckResourcePermissionRequest : Tea.TeaModel {
    public class CheckCommand : Tea.TeaModel {
        public class ResourceList : Tea.TeaModel {
            public var resourceId: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
            }
        }
        public var operate: String?

        public var resourceList: [CheckResourcePermissionRequest.CheckCommand.ResourceList]?

        public var resourceType: String?

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
            if self.operate != nil {
                map["Operate"] = self.operate!
            }
            if self.resourceList != nil {
                var tmp : [Any] = []
                for k in self.resourceList! {
                    tmp.append(k.toMap())
                }
                map["ResourceList"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Operate") {
                self.operate = dict["Operate"] as! String
            }
            if dict.keys.contains("ResourceList") {
                var tmp : [CheckResourcePermissionRequest.CheckCommand.ResourceList] = []
                for v in dict["ResourceList"] as! [Any] {
                    var model = CheckResourcePermissionRequest.CheckCommand.ResourceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceList = tmp
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var checkCommand: CheckResourcePermissionRequest.CheckCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.checkCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkCommand != nil {
            map["CheckCommand"] = self.checkCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckCommand") {
            var model = CheckResourcePermissionRequest.CheckCommand()
            model.fromMap(dict["CheckCommand"] as! [String: Any])
            self.checkCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CheckResourcePermissionShrinkRequest : Tea.TeaModel {
    public var checkCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkCommandShrink != nil {
            map["CheckCommand"] = self.checkCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckCommand") {
            self.checkCommandShrink = dict["CheckCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CheckResourcePermissionResponseBody : Tea.TeaModel {
    public class ResourcePermissionList : Tea.TeaModel {
        public var hasPermission: Bool?

        public var resourceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasPermission != nil {
                map["HasPermission"] = self.hasPermission!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasPermission") {
                self.hasPermission = dict["HasPermission"] as! Bool
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var resourcePermissionList: [CheckResourcePermissionResponseBody.ResourcePermissionList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourcePermissionList != nil {
            var tmp : [Any] = []
            for k in self.resourcePermissionList! {
                tmp.append(k.toMap())
            }
            map["ResourcePermissionList"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourcePermissionList") {
            var tmp : [CheckResourcePermissionResponseBody.ResourcePermissionList] = []
            for v in dict["ResourcePermissionList"] as! [Any] {
                var model = CheckResourcePermissionResponseBody.ResourcePermissionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourcePermissionList = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckResourcePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckResourcePermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckResourcePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAdHocFileRequest : Tea.TeaModel {
    public class CreateCommand : Tea.TeaModel {
        public var content: String?

        public var directory: String?

        public var name: String?

        public var projectId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.directory != nil {
                map["Directory"] = self.directory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Directory") {
                self.directory = dict["Directory"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
        }
    }
    public var createCommand: CreateAdHocFileRequest.CreateCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommand != nil {
            map["CreateCommand"] = self.createCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            var model = CreateAdHocFileRequest.CreateCommand()
            model.fromMap(dict["CreateCommand"] as! [String: Any])
            self.createCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateAdHocFileShrinkRequest : Tea.TeaModel {
    public var createCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommandShrink != nil {
            map["CreateCommand"] = self.createCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            self.createCommandShrink = dict["CreateCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateAdHocFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var fileId: Int64?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class CreateAdHocFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAdHocFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAdHocFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDataSourceRequest : Tea.TeaModel {
    public class CreateCommand : Tea.TeaModel {
        public class DevDataSourceCreate : Tea.TeaModel {
            public class DataSourceCreate : Tea.TeaModel {
                public class ConfigItemList : Tea.TeaModel {
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
                public var checkActivity: Bool?

                public var configItemList: [CreateDataSourceRequest.CreateCommand.DevDataSourceCreate.DataSourceCreate.ConfigItemList]?

                public var description_: String?

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
                    if self.checkActivity != nil {
                        map["CheckActivity"] = self.checkActivity!
                    }
                    if self.configItemList != nil {
                        var tmp : [Any] = []
                        for k in self.configItemList! {
                            tmp.append(k.toMap())
                        }
                        map["ConfigItemList"] = tmp
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckActivity") {
                        self.checkActivity = dict["CheckActivity"] as! Bool
                    }
                    if dict.keys.contains("ConfigItemList") {
                        var tmp : [CreateDataSourceRequest.CreateCommand.DevDataSourceCreate.DataSourceCreate.ConfigItemList] = []
                        for v in dict["ConfigItemList"] as! [Any] {
                            var model = CreateDataSourceRequest.CreateCommand.DevDataSourceCreate.DataSourceCreate.ConfigItemList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.configItemList = tmp
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var dataSourceCreate: CreateDataSourceRequest.CreateCommand.DevDataSourceCreate.DataSourceCreate?

            public var prodDataSourceId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataSourceCreate?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSourceCreate != nil {
                    map["DataSourceCreate"] = self.dataSourceCreate?.toMap()
                }
                if self.prodDataSourceId != nil {
                    map["ProdDataSourceId"] = self.prodDataSourceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataSourceCreate") {
                    var model = CreateDataSourceRequest.CreateCommand.DevDataSourceCreate.DataSourceCreate()
                    model.fromMap(dict["DataSourceCreate"] as! [String: Any])
                    self.dataSourceCreate = model
                }
                if dict.keys.contains("ProdDataSourceId") {
                    self.prodDataSourceId = dict["ProdDataSourceId"] as! Int64
                }
            }
        }
        public class ProdDataSourceCreate : Tea.TeaModel {
            public class ConfigItemList : Tea.TeaModel {
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
            public var checkActivity: Bool?

            public var configItemList: [CreateDataSourceRequest.CreateCommand.ProdDataSourceCreate.ConfigItemList]?

            public var description_: String?

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
                if self.checkActivity != nil {
                    map["CheckActivity"] = self.checkActivity!
                }
                if self.configItemList != nil {
                    var tmp : [Any] = []
                    for k in self.configItemList! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigItemList"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckActivity") {
                    self.checkActivity = dict["CheckActivity"] as! Bool
                }
                if dict.keys.contains("ConfigItemList") {
                    var tmp : [CreateDataSourceRequest.CreateCommand.ProdDataSourceCreate.ConfigItemList] = []
                    for v in dict["ConfigItemList"] as! [Any] {
                        var model = CreateDataSourceRequest.CreateCommand.ProdDataSourceCreate.ConfigItemList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.configItemList = tmp
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var devDataSourceCreate: CreateDataSourceRequest.CreateCommand.DevDataSourceCreate?

        public var prodDataSourceCreate: CreateDataSourceRequest.CreateCommand.ProdDataSourceCreate?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.devDataSourceCreate?.validate()
            try self.prodDataSourceCreate?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.devDataSourceCreate != nil {
                map["DevDataSourceCreate"] = self.devDataSourceCreate?.toMap()
            }
            if self.prodDataSourceCreate != nil {
                map["ProdDataSourceCreate"] = self.prodDataSourceCreate?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DevDataSourceCreate") {
                var model = CreateDataSourceRequest.CreateCommand.DevDataSourceCreate()
                model.fromMap(dict["DevDataSourceCreate"] as! [String: Any])
                self.devDataSourceCreate = model
            }
            if dict.keys.contains("ProdDataSourceCreate") {
                var model = CreateDataSourceRequest.CreateCommand.ProdDataSourceCreate()
                model.fromMap(dict["ProdDataSourceCreate"] as! [String: Any])
                self.prodDataSourceCreate = model
            }
        }
    }
    public var createCommand: CreateDataSourceRequest.CreateCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommand != nil {
            map["CreateCommand"] = self.createCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            var model = CreateDataSourceRequest.CreateCommand()
            model.fromMap(dict["CreateCommand"] as! [String: Any])
            self.createCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateDataSourceShrinkRequest : Tea.TeaModel {
    public var createCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommandShrink != nil {
            map["CreateCommand"] = self.createCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            self.createCommandShrink = dict["CreateCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateDataSourceResponseBody : Tea.TeaModel {
    public class CreateResult : Tea.TeaModel {
        public var devDataSourceId: Int64?

        public var prodDataSourceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.devDataSourceId != nil {
                map["DevDataSourceId"] = self.devDataSourceId!
            }
            if self.prodDataSourceId != nil {
                map["ProdDataSourceId"] = self.prodDataSourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DevDataSourceId") {
                self.devDataSourceId = dict["DevDataSourceId"] as! Int64
            }
            if dict.keys.contains("ProdDataSourceId") {
                self.prodDataSourceId = dict["ProdDataSourceId"] as! Int64
            }
        }
    }
    public var code: String?

    public var createResult: CreateDataSourceResponseBody.CreateResult?

    public var httpStatusCode: Int32?

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
        try self.createResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createResult != nil {
            map["CreateResult"] = self.createResult?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CreateResult") {
            var model = CreateDataSourceResponseBody.CreateResult()
            model.fromMap(dict["CreateResult"] as! [String: Any])
            self.createResult = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class CreateDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDirectoryRequest : Tea.TeaModel {
    public class CreateCommand : Tea.TeaModel {
        public var category: String?

        public var directory: String?

        public var name: String?

        public var projectId: Int64?

        public override init() {
            super.init()
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
            if self.directory != nil {
                map["Directory"] = self.directory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Directory") {
                self.directory = dict["Directory"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
        }
    }
    public var createCommand: CreateDirectoryRequest.CreateCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommand != nil {
            map["CreateCommand"] = self.createCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            var model = CreateDirectoryRequest.CreateCommand()
            model.fromMap(dict["CreateCommand"] as! [String: Any])
            self.createCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateDirectoryShrinkRequest : Tea.TeaModel {
    public var createCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommandShrink != nil {
            map["CreateCommand"] = self.createCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            self.createCommandShrink = dict["CreateCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var fileId: Int64?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNodeSupplementRequest : Tea.TeaModel {
    public class CreateCommand : Tea.TeaModel {
        public class DownStreamNodeIdList : Tea.TeaModel {
            public var fieldIdList: [String]?

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
                if self.fieldIdList != nil {
                    map["FieldIdList"] = self.fieldIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldIdList") {
                    self.fieldIdList = dict["FieldIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
            }
        }
        public class FilterList : Tea.TeaModel {
            public var exclude: Bool?

            public var key: String?

            public var valueList: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exclude != nil {
                    map["Exclude"] = self.exclude!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.valueList != nil {
                    map["ValueList"] = self.valueList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Exclude") {
                    self.exclude = dict["Exclude"] as! Bool
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("ValueList") {
                    self.valueList = dict["ValueList"] as! [String]
                }
            }
        }
        public class GlobalParamList : Tea.TeaModel {
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
        public class NodeIdList : Tea.TeaModel {
            public var fieldIdList: [String]?

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
                if self.fieldIdList != nil {
                    map["FieldIdList"] = self.fieldIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldIdList") {
                    self.fieldIdList = dict["FieldIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
            }
        }
        public class NodeParamsList : Tea.TeaModel {
            public class ParamList : Tea.TeaModel {
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
            public var nodeId: String?

            public var paramList: [CreateNodeSupplementRequest.CreateCommand.NodeParamsList.ParamList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.paramList != nil {
                    var tmp : [Any] = []
                    for k in self.paramList! {
                        tmp.append(k.toMap())
                    }
                    map["ParamList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("ParamList") {
                    var tmp : [CreateNodeSupplementRequest.CreateCommand.NodeParamsList.ParamList] = []
                    for v in dict["ParamList"] as! [Any] {
                        var model = CreateNodeSupplementRequest.CreateCommand.NodeParamsList.ParamList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.paramList = tmp
                }
            }
        }
        public var containAllDownStream: Bool?

        public var downStreamNodeIdList: [CreateNodeSupplementRequest.CreateCommand.DownStreamNodeIdList]?

        public var endBizDate: String?

        public var filterList: [CreateNodeSupplementRequest.CreateCommand.FilterList]?

        public var globalParamList: [CreateNodeSupplementRequest.CreateCommand.GlobalParamList]?

        public var maxDueTime: String?

        public var minDueTime: String?

        public var name: String?

        public var nodeIdList: [CreateNodeSupplementRequest.CreateCommand.NodeIdList]?

        public var nodeParamsList: [CreateNodeSupplementRequest.CreateCommand.NodeParamsList]?

        public var parallelism: Int32?

        public var projectId: Int64?

        public var startBizDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containAllDownStream != nil {
                map["ContainAllDownStream"] = self.containAllDownStream!
            }
            if self.downStreamNodeIdList != nil {
                var tmp : [Any] = []
                for k in self.downStreamNodeIdList! {
                    tmp.append(k.toMap())
                }
                map["DownStreamNodeIdList"] = tmp
            }
            if self.endBizDate != nil {
                map["EndBizDate"] = self.endBizDate!
            }
            if self.filterList != nil {
                var tmp : [Any] = []
                for k in self.filterList! {
                    tmp.append(k.toMap())
                }
                map["FilterList"] = tmp
            }
            if self.globalParamList != nil {
                var tmp : [Any] = []
                for k in self.globalParamList! {
                    tmp.append(k.toMap())
                }
                map["GlobalParamList"] = tmp
            }
            if self.maxDueTime != nil {
                map["MaxDueTime"] = self.maxDueTime!
            }
            if self.minDueTime != nil {
                map["MinDueTime"] = self.minDueTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeIdList != nil {
                var tmp : [Any] = []
                for k in self.nodeIdList! {
                    tmp.append(k.toMap())
                }
                map["NodeIdList"] = tmp
            }
            if self.nodeParamsList != nil {
                var tmp : [Any] = []
                for k in self.nodeParamsList! {
                    tmp.append(k.toMap())
                }
                map["NodeParamsList"] = tmp
            }
            if self.parallelism != nil {
                map["Parallelism"] = self.parallelism!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.startBizDate != nil {
                map["StartBizDate"] = self.startBizDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainAllDownStream") {
                self.containAllDownStream = dict["ContainAllDownStream"] as! Bool
            }
            if dict.keys.contains("DownStreamNodeIdList") {
                var tmp : [CreateNodeSupplementRequest.CreateCommand.DownStreamNodeIdList] = []
                for v in dict["DownStreamNodeIdList"] as! [Any] {
                    var model = CreateNodeSupplementRequest.CreateCommand.DownStreamNodeIdList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.downStreamNodeIdList = tmp
            }
            if dict.keys.contains("EndBizDate") {
                self.endBizDate = dict["EndBizDate"] as! String
            }
            if dict.keys.contains("FilterList") {
                var tmp : [CreateNodeSupplementRequest.CreateCommand.FilterList] = []
                for v in dict["FilterList"] as! [Any] {
                    var model = CreateNodeSupplementRequest.CreateCommand.FilterList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.filterList = tmp
            }
            if dict.keys.contains("GlobalParamList") {
                var tmp : [CreateNodeSupplementRequest.CreateCommand.GlobalParamList] = []
                for v in dict["GlobalParamList"] as! [Any] {
                    var model = CreateNodeSupplementRequest.CreateCommand.GlobalParamList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.globalParamList = tmp
            }
            if dict.keys.contains("MaxDueTime") {
                self.maxDueTime = dict["MaxDueTime"] as! String
            }
            if dict.keys.contains("MinDueTime") {
                self.minDueTime = dict["MinDueTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NodeIdList") {
                var tmp : [CreateNodeSupplementRequest.CreateCommand.NodeIdList] = []
                for v in dict["NodeIdList"] as! [Any] {
                    var model = CreateNodeSupplementRequest.CreateCommand.NodeIdList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodeIdList = tmp
            }
            if dict.keys.contains("NodeParamsList") {
                var tmp : [CreateNodeSupplementRequest.CreateCommand.NodeParamsList] = []
                for v in dict["NodeParamsList"] as! [Any] {
                    var model = CreateNodeSupplementRequest.CreateCommand.NodeParamsList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodeParamsList = tmp
            }
            if dict.keys.contains("Parallelism") {
                self.parallelism = dict["Parallelism"] as! Int32
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("StartBizDate") {
                self.startBizDate = dict["StartBizDate"] as! String
            }
        }
    }
    public var createCommand: CreateNodeSupplementRequest.CreateCommand?

    public var env: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommand != nil {
            map["CreateCommand"] = self.createCommand?.toMap()
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            var model = CreateNodeSupplementRequest.CreateCommand()
            model.fromMap(dict["CreateCommand"] as! [String: Any])
            self.createCommand = model
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateNodeSupplementShrinkRequest : Tea.TeaModel {
    public var createCommandShrink: String?

    public var env: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommandShrink != nil {
            map["CreateCommand"] = self.createCommandShrink!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            self.createCommandShrink = dict["CreateCommand"] as! String
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateNodeSupplementResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var submitId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.submitId != nil {
            map["SubmitId"] = self.submitId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubmitId") {
            self.submitId = dict["SubmitId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateNodeSupplementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNodeSupplementResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateNodeSupplementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserGroupRequest : Tea.TeaModel {
    public class CreateCommand : Tea.TeaModel {
        public var active: Bool?

        public var adminUserIdList: [String]?

        public var description_: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.adminUserIdList != nil {
                map["AdminUserIdList"] = self.adminUserIdList!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("AdminUserIdList") {
                self.adminUserIdList = dict["AdminUserIdList"] as! [String]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var createCommand: CreateUserGroupRequest.CreateCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommand != nil {
            map["CreateCommand"] = self.createCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            var model = CreateUserGroupRequest.CreateCommand()
            model.fromMap(dict["CreateCommand"] as! [String: Any])
            self.createCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateUserGroupShrinkRequest : Tea.TeaModel {
    public var createCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createCommandShrink != nil {
            map["CreateCommand"] = self.createCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateCommand") {
            self.createCommandShrink = dict["CreateCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class CreateUserGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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
        if dict.keys.contains("UserGroupId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAdHocFileRequest : Tea.TeaModel {
    public var fileId: Int64?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class DeleteAdHocFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class DeleteAdHocFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAdHocFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAdHocFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDataSourceRequest : Tea.TeaModel {
    public class DeleteCommand : Tea.TeaModel {
        public var mode: String?

        public var prodDataSourceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.prodDataSourceId != nil {
                map["ProdDataSourceId"] = self.prodDataSourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("ProdDataSourceId") {
                self.prodDataSourceId = dict["ProdDataSourceId"] as! Int64
            }
        }
    }
    public var deleteCommand: DeleteDataSourceRequest.DeleteCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deleteCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteCommand != nil {
            map["DeleteCommand"] = self.deleteCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleteCommand") {
            var model = DeleteDataSourceRequest.DeleteCommand()
            model.fromMap(dict["DeleteCommand"] as! [String: Any])
            self.deleteCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class DeleteDataSourceShrinkRequest : Tea.TeaModel {
    public var deleteCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteCommandShrink != nil {
            map["DeleteCommand"] = self.deleteCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleteCommand") {
            self.deleteCommandShrink = dict["DeleteCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class DeleteDataSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class DeleteDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDirectoryRequest : Tea.TeaModel {
    public var fileId: Int64?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class DeleteDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserGroupRequest : Tea.TeaModel {
    public var opTenantId: Int64?

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
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class DeleteUserGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecuteManualNodeRequest : Tea.TeaModel {
    public class ExecuteCommand : Tea.TeaModel {
        public class ParamList : Tea.TeaModel {
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
        public var endBizDate: String?

        public var flowName: String?

        public var nodeId: String?

        public var paramList: [ExecuteManualNodeRequest.ExecuteCommand.ParamList]?

        public var projectId: Int64?

        public var startBizDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endBizDate != nil {
                map["EndBizDate"] = self.endBizDate!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.paramList != nil {
                var tmp : [Any] = []
                for k in self.paramList! {
                    tmp.append(k.toMap())
                }
                map["ParamList"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.startBizDate != nil {
                map["StartBizDate"] = self.startBizDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndBizDate") {
                self.endBizDate = dict["EndBizDate"] as! String
            }
            if dict.keys.contains("FlowName") {
                self.flowName = dict["FlowName"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("ParamList") {
                var tmp : [ExecuteManualNodeRequest.ExecuteCommand.ParamList] = []
                for v in dict["ParamList"] as! [Any] {
                    var model = ExecuteManualNodeRequest.ExecuteCommand.ParamList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paramList = tmp
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("StartBizDate") {
                self.startBizDate = dict["StartBizDate"] as! String
            }
        }
    }
    public var env: String?

    public var executeCommand: ExecuteManualNodeRequest.ExecuteCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.executeCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.executeCommand != nil {
            map["ExecuteCommand"] = self.executeCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("ExecuteCommand") {
            var model = ExecuteManualNodeRequest.ExecuteCommand()
            model.fromMap(dict["ExecuteCommand"] as! [String: Any])
            self.executeCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ExecuteManualNodeShrinkRequest : Tea.TeaModel {
    public var env: String?

    public var executeCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.executeCommandShrink != nil {
            map["ExecuteCommand"] = self.executeCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("ExecuteCommand") {
            self.executeCommandShrink = dict["ExecuteCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ExecuteManualNodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var flowId: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FlowId") {
            self.flowId = dict["FlowId"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ExecuteManualNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteManualNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ExecuteManualNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FixDataRequest : Tea.TeaModel {
    public class FixDataCommand : Tea.TeaModel {
        public class DownStreamInstanceIdList : Tea.TeaModel {
            public var fieldInstanceIdList: [String]?

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
                if self.fieldInstanceIdList != nil {
                    map["FieldInstanceIdList"] = self.fieldInstanceIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldInstanceIdList") {
                    self.fieldInstanceIdList = dict["FieldInstanceIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
            }
        }
        public class RootInstanceId : Tea.TeaModel {
            public var fieldInstanceIdList: [String]?

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
                if self.fieldInstanceIdList != nil {
                    map["FieldInstanceIdList"] = self.fieldInstanceIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldInstanceIdList") {
                    self.fieldInstanceIdList = dict["FieldInstanceIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
            }
        }
        public var containRootInstance: Bool?

        public var downStreamInstanceIdList: [FixDataRequest.FixDataCommand.DownStreamInstanceIdList]?

        public var downstreamRange: String?

        public var forceRerun: Bool?

        public var projectId: Int64?

        public var rootInstanceId: FixDataRequest.FixDataCommand.RootInstanceId?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.rootInstanceId?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containRootInstance != nil {
                map["ContainRootInstance"] = self.containRootInstance!
            }
            if self.downStreamInstanceIdList != nil {
                var tmp : [Any] = []
                for k in self.downStreamInstanceIdList! {
                    tmp.append(k.toMap())
                }
                map["DownStreamInstanceIdList"] = tmp
            }
            if self.downstreamRange != nil {
                map["DownstreamRange"] = self.downstreamRange!
            }
            if self.forceRerun != nil {
                map["ForceRerun"] = self.forceRerun!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.rootInstanceId != nil {
                map["RootInstanceId"] = self.rootInstanceId?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainRootInstance") {
                self.containRootInstance = dict["ContainRootInstance"] as! Bool
            }
            if dict.keys.contains("DownStreamInstanceIdList") {
                var tmp : [FixDataRequest.FixDataCommand.DownStreamInstanceIdList] = []
                for v in dict["DownStreamInstanceIdList"] as! [Any] {
                    var model = FixDataRequest.FixDataCommand.DownStreamInstanceIdList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.downStreamInstanceIdList = tmp
            }
            if dict.keys.contains("DownstreamRange") {
                self.downstreamRange = dict["DownstreamRange"] as! String
            }
            if dict.keys.contains("ForceRerun") {
                self.forceRerun = dict["ForceRerun"] as! Bool
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("RootInstanceId") {
                var model = FixDataRequest.FixDataCommand.RootInstanceId()
                model.fromMap(dict["RootInstanceId"] as! [String: Any])
                self.rootInstanceId = model
            }
        }
    }
    public var env: String?

    public var fixDataCommand: FixDataRequest.FixDataCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.fixDataCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.fixDataCommand != nil {
            map["FixDataCommand"] = self.fixDataCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("FixDataCommand") {
            var model = FixDataRequest.FixDataCommand()
            model.fromMap(dict["FixDataCommand"] as! [String: Any])
            self.fixDataCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class FixDataShrinkRequest : Tea.TeaModel {
    public var env: String?

    public var fixDataCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.fixDataCommandShrink != nil {
            map["FixDataCommand"] = self.fixDataCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("FixDataCommand") {
            self.fixDataCommandShrink = dict["FixDataCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class FixDataResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var submitId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.submitId != nil {
            map["SubmitId"] = self.submitId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubmitId") {
            self.submitId = dict["SubmitId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FixDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FixDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = FixDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAdHocFileRequest : Tea.TeaModel {
    public var fileId: Int64?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class GetAdHocFileResponseBody : Tea.TeaModel {
    public class FileInfo : Tea.TeaModel {
        public var content: String?

        public var creator: String?

        public var directory: String?

        public var id: Int64?

        public var lastModifier: String?

        public var name: String?

        public var projectId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.directory != nil {
                map["Directory"] = self.directory!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastModifier != nil {
                map["LastModifier"] = self.lastModifier!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Directory") {
                self.directory = dict["Directory"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LastModifier") {
                self.lastModifier = dict["LastModifier"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
        }
    }
    public var code: String?

    public var fileInfo: GetAdHocFileResponseBody.FileInfo?

    public var httpStatusCode: Int32?

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
        try self.fileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.fileInfo != nil {
            map["FileInfo"] = self.fileInfo?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FileInfo") {
            var model = GetAdHocFileResponseBody.FileInfo()
            model.fromMap(dict["FileInfo"] as! [String: Any])
            self.fileInfo = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetAdHocFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAdHocFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAdHocFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDevObjectDependencyRequest : Tea.TeaModel {
    public var objectFrom: String?

    public var objectId: String?

    public var objectType: String?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objectFrom != nil {
            map["ObjectFrom"] = self.objectFrom!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ObjectFrom") {
            self.objectFrom = dict["ObjectFrom"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class GetDevObjectDependencyResponseBody : Tea.TeaModel {
    public class DevObjectDependencyList : Tea.TeaModel {
        public class DependencyPeriod : Tea.TeaModel {
            public var periodOffset: Int32?

            public var periodType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.periodOffset != nil {
                    map["PeriodOffset"] = self.periodOffset!
                }
                if self.periodType != nil {
                    map["PeriodType"] = self.periodType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PeriodOffset") {
                    self.periodOffset = dict["PeriodOffset"] as! Int32
                }
                if dict.keys.contains("PeriodType") {
                    self.periodType = dict["PeriodType"] as! String
                }
            }
        }
        public class OutputContextParamList : Tea.TeaModel {
            public var defaultValue: String?

            public var description_: String?

            public var key: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultValue") {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
            }
        }
        public class OwnerList : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var autoParse: Bool?

        public var bizType: String?

        public var bizUnitId: String?

        public var bizUnitName: String?

        public var cronExpression: String?

        public var customCronExpression: Bool?

        public var dependFieldList: [String]?

        public var dependencyPeriod: GetDevObjectDependencyResponseBody.DevObjectDependencyList.DependencyPeriod?

        public var dependencyStrategy: String?

        public var dimMidNode: Bool?

        public var effectFieldList: [String]?

        public var externalBizInfo: String?

        public var manuallyAdd: Bool?

        public var nodeId: String?

        public var nodeName: String?

        public var nodeOutputName: String?

        public var nodeOutputTableName: String?

        public var nodeType: String?

        public var outputContextParamList: [GetDevObjectDependencyResponseBody.DevObjectDependencyList.OutputContextParamList]?

        public var ownerList: [GetDevObjectDependencyResponseBody.DevObjectDependencyList.OwnerList]?

        public var periodDiff: Int32?

        public var projectId: Int64?

        public var projectName: String?

        public var scheduleType: String?

        public var selfDepend: Bool?

        public var subBizType: String?

        public var valid: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dependencyPeriod?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoParse != nil {
                map["AutoParse"] = self.autoParse!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.bizUnitId != nil {
                map["BizUnitId"] = self.bizUnitId!
            }
            if self.bizUnitName != nil {
                map["BizUnitName"] = self.bizUnitName!
            }
            if self.cronExpression != nil {
                map["CronExpression"] = self.cronExpression!
            }
            if self.customCronExpression != nil {
                map["CustomCronExpression"] = self.customCronExpression!
            }
            if self.dependFieldList != nil {
                map["DependFieldList"] = self.dependFieldList!
            }
            if self.dependencyPeriod != nil {
                map["DependencyPeriod"] = self.dependencyPeriod?.toMap()
            }
            if self.dependencyStrategy != nil {
                map["DependencyStrategy"] = self.dependencyStrategy!
            }
            if self.dimMidNode != nil {
                map["DimMidNode"] = self.dimMidNode!
            }
            if self.effectFieldList != nil {
                map["EffectFieldList"] = self.effectFieldList!
            }
            if self.externalBizInfo != nil {
                map["ExternalBizInfo"] = self.externalBizInfo!
            }
            if self.manuallyAdd != nil {
                map["ManuallyAdd"] = self.manuallyAdd!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.nodeOutputName != nil {
                map["NodeOutputName"] = self.nodeOutputName!
            }
            if self.nodeOutputTableName != nil {
                map["NodeOutputTableName"] = self.nodeOutputTableName!
            }
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
            }
            if self.outputContextParamList != nil {
                var tmp : [Any] = []
                for k in self.outputContextParamList! {
                    tmp.append(k.toMap())
                }
                map["OutputContextParamList"] = tmp
            }
            if self.ownerList != nil {
                var tmp : [Any] = []
                for k in self.ownerList! {
                    tmp.append(k.toMap())
                }
                map["OwnerList"] = tmp
            }
            if self.periodDiff != nil {
                map["PeriodDiff"] = self.periodDiff!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.selfDepend != nil {
                map["SelfDepend"] = self.selfDepend!
            }
            if self.subBizType != nil {
                map["SubBizType"] = self.subBizType!
            }
            if self.valid != nil {
                map["Valid"] = self.valid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoParse") {
                self.autoParse = dict["AutoParse"] as! Bool
            }
            if dict.keys.contains("BizType") {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("BizUnitId") {
                self.bizUnitId = dict["BizUnitId"] as! String
            }
            if dict.keys.contains("BizUnitName") {
                self.bizUnitName = dict["BizUnitName"] as! String
            }
            if dict.keys.contains("CronExpression") {
                self.cronExpression = dict["CronExpression"] as! String
            }
            if dict.keys.contains("CustomCronExpression") {
                self.customCronExpression = dict["CustomCronExpression"] as! Bool
            }
            if dict.keys.contains("DependFieldList") {
                self.dependFieldList = dict["DependFieldList"] as! [String]
            }
            if dict.keys.contains("DependencyPeriod") {
                var model = GetDevObjectDependencyResponseBody.DevObjectDependencyList.DependencyPeriod()
                model.fromMap(dict["DependencyPeriod"] as! [String: Any])
                self.dependencyPeriod = model
            }
            if dict.keys.contains("DependencyStrategy") {
                self.dependencyStrategy = dict["DependencyStrategy"] as! String
            }
            if dict.keys.contains("DimMidNode") {
                self.dimMidNode = dict["DimMidNode"] as! Bool
            }
            if dict.keys.contains("EffectFieldList") {
                self.effectFieldList = dict["EffectFieldList"] as! [String]
            }
            if dict.keys.contains("ExternalBizInfo") {
                self.externalBizInfo = dict["ExternalBizInfo"] as! String
            }
            if dict.keys.contains("ManuallyAdd") {
                self.manuallyAdd = dict["ManuallyAdd"] as! Bool
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("NodeName") {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("NodeOutputName") {
                self.nodeOutputName = dict["NodeOutputName"] as! String
            }
            if dict.keys.contains("NodeOutputTableName") {
                self.nodeOutputTableName = dict["NodeOutputTableName"] as! String
            }
            if dict.keys.contains("NodeType") {
                self.nodeType = dict["NodeType"] as! String
            }
            if dict.keys.contains("OutputContextParamList") {
                var tmp : [GetDevObjectDependencyResponseBody.DevObjectDependencyList.OutputContextParamList] = []
                for v in dict["OutputContextParamList"] as! [Any] {
                    var model = GetDevObjectDependencyResponseBody.DevObjectDependencyList.OutputContextParamList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outputContextParamList = tmp
            }
            if dict.keys.contains("OwnerList") {
                var tmp : [GetDevObjectDependencyResponseBody.DevObjectDependencyList.OwnerList] = []
                for v in dict["OwnerList"] as! [Any] {
                    var model = GetDevObjectDependencyResponseBody.DevObjectDependencyList.OwnerList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ownerList = tmp
            }
            if dict.keys.contains("PeriodDiff") {
                self.periodDiff = dict["PeriodDiff"] as! Int32
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ScheduleType") {
                self.scheduleType = dict["ScheduleType"] as! String
            }
            if dict.keys.contains("SelfDepend") {
                self.selfDepend = dict["SelfDepend"] as! Bool
            }
            if dict.keys.contains("SubBizType") {
                self.subBizType = dict["SubBizType"] as! String
            }
            if dict.keys.contains("Valid") {
                self.valid = dict["Valid"] as! Bool
            }
        }
    }
    public var code: String?

    public var devObjectDependencyList: [GetDevObjectDependencyResponseBody.DevObjectDependencyList]?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.devObjectDependencyList != nil {
            var tmp : [Any] = []
            for k in self.devObjectDependencyList! {
                tmp.append(k.toMap())
            }
            map["DevObjectDependencyList"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DevObjectDependencyList") {
            var tmp : [GetDevObjectDependencyResponseBody.DevObjectDependencyList] = []
            for v in dict["DevObjectDependencyList"] as! [Any] {
                var model = GetDevObjectDependencyResponseBody.DevObjectDependencyList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.devObjectDependencyList = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetDevObjectDependencyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDevObjectDependencyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDevObjectDependencyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceDownStreamRequest : Tea.TeaModel {
    public class InstanceGet : Tea.TeaModel {
        public var instanceId: String?

        public var nodeType: String?

        public override init() {
            super.init()
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
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("NodeType") {
                self.nodeType = dict["NodeType"] as! String
            }
        }
    }
    public var downStreamDepth: Int32?

    public var env: String?

    public var instanceGet: GetInstanceDownStreamRequest.InstanceGet?

    public var opTenantId: Int64?

    public var runStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceGet?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downStreamDepth != nil {
            map["DownStreamDepth"] = self.downStreamDepth!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.instanceGet != nil {
            map["InstanceGet"] = self.instanceGet?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.runStatus != nil {
            map["RunStatus"] = self.runStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownStreamDepth") {
            self.downStreamDepth = dict["DownStreamDepth"] as! Int32
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("InstanceGet") {
            var model = GetInstanceDownStreamRequest.InstanceGet()
            model.fromMap(dict["InstanceGet"] as! [String: Any])
            self.instanceGet = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("RunStatus") {
            self.runStatus = dict["RunStatus"] as! String
        }
    }
}

public class GetInstanceDownStreamShrinkRequest : Tea.TeaModel {
    public var downStreamDepth: Int32?

    public var env: String?

    public var instanceGetShrink: String?

    public var opTenantId: Int64?

    public var runStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downStreamDepth != nil {
            map["DownStreamDepth"] = self.downStreamDepth!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.instanceGetShrink != nil {
            map["InstanceGet"] = self.instanceGetShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.runStatus != nil {
            map["RunStatus"] = self.runStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownStreamDepth") {
            self.downStreamDepth = dict["DownStreamDepth"] as! Int32
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("InstanceGet") {
            self.instanceGetShrink = dict["InstanceGet"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("RunStatus") {
            self.runStatus = dict["RunStatus"] as! String
        }
    }
}

public class GetInstanceDownStreamResponseBody : Tea.TeaModel {
    public class InstanceRelationList : Tea.TeaModel {
        public class FieldInstanceList : Tea.TeaModel {
            public var fieldInstanceId: String?

            public var runStatus: String?

            public var selectStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldInstanceId != nil {
                    map["FieldInstanceId"] = self.fieldInstanceId!
                }
                if self.runStatus != nil {
                    map["RunStatus"] = self.runStatus!
                }
                if self.selectStatus != nil {
                    map["SelectStatus"] = self.selectStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldInstanceId") {
                    self.fieldInstanceId = dict["FieldInstanceId"] as! String
                }
                if dict.keys.contains("RunStatus") {
                    self.runStatus = dict["RunStatus"] as! String
                }
                if dict.keys.contains("SelectStatus") {
                    self.selectStatus = dict["SelectStatus"] as! String
                }
            }
        }
        public class InstanceInfo : Tea.TeaModel {
            public var id: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var downStreamDepth: Int32?

        public var extendInfo: String?

        public var fieldInstanceList: [GetInstanceDownStreamResponseBody.InstanceRelationList.FieldInstanceList]?

        public var instanceInfo: GetInstanceDownStreamResponseBody.InstanceRelationList.InstanceInfo?

        public var runStatus: String?

        public var selectStatus: String?

        public var selectStatusCause: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.instanceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downStreamDepth != nil {
                map["DownStreamDepth"] = self.downStreamDepth!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.fieldInstanceList != nil {
                var tmp : [Any] = []
                for k in self.fieldInstanceList! {
                    tmp.append(k.toMap())
                }
                map["FieldInstanceList"] = tmp
            }
            if self.instanceInfo != nil {
                map["InstanceInfo"] = self.instanceInfo?.toMap()
            }
            if self.runStatus != nil {
                map["RunStatus"] = self.runStatus!
            }
            if self.selectStatus != nil {
                map["SelectStatus"] = self.selectStatus!
            }
            if self.selectStatusCause != nil {
                map["SelectStatusCause"] = self.selectStatusCause!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownStreamDepth") {
                self.downStreamDepth = dict["DownStreamDepth"] as! Int32
            }
            if dict.keys.contains("ExtendInfo") {
                self.extendInfo = dict["ExtendInfo"] as! String
            }
            if dict.keys.contains("FieldInstanceList") {
                var tmp : [GetInstanceDownStreamResponseBody.InstanceRelationList.FieldInstanceList] = []
                for v in dict["FieldInstanceList"] as! [Any] {
                    var model = GetInstanceDownStreamResponseBody.InstanceRelationList.FieldInstanceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fieldInstanceList = tmp
            }
            if dict.keys.contains("InstanceInfo") {
                var model = GetInstanceDownStreamResponseBody.InstanceRelationList.InstanceInfo()
                model.fromMap(dict["InstanceInfo"] as! [String: Any])
                self.instanceInfo = model
            }
            if dict.keys.contains("RunStatus") {
                self.runStatus = dict["RunStatus"] as! String
            }
            if dict.keys.contains("SelectStatus") {
                self.selectStatus = dict["SelectStatus"] as! String
            }
            if dict.keys.contains("SelectStatusCause") {
                self.selectStatusCause = dict["SelectStatusCause"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceRelationList: [GetInstanceDownStreamResponseBody.InstanceRelationList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceRelationList != nil {
            var tmp : [Any] = []
            for k in self.instanceRelationList! {
                tmp.append(k.toMap())
            }
            map["InstanceRelationList"] = tmp
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceRelationList") {
            var tmp : [GetInstanceDownStreamResponseBody.InstanceRelationList] = []
            for v in dict["InstanceRelationList"] as! [Any] {
                var model = GetInstanceDownStreamResponseBody.InstanceRelationList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceRelationList = tmp
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

public class GetInstanceDownStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceDownStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInstanceDownStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceUpDownStreamRequest : Tea.TeaModel {
    public class InstanceId : Tea.TeaModel {
        public var fieldInstanceIdList: [String]?

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
            if self.fieldInstanceIdList != nil {
                map["FieldInstanceIdList"] = self.fieldInstanceIdList!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FieldInstanceIdList") {
                self.fieldInstanceIdList = dict["FieldInstanceIdList"] as! [String]
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var downStreamDepth: Int32?

    public var env: String?

    public var instanceId: GetInstanceUpDownStreamRequest.InstanceId?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public var upStreamDepth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceId?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downStreamDepth != nil {
            map["DownStreamDepth"] = self.downStreamDepth!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.upStreamDepth != nil {
            map["UpStreamDepth"] = self.upStreamDepth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownStreamDepth") {
            self.downStreamDepth = dict["DownStreamDepth"] as! Int32
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("InstanceId") {
            var model = GetInstanceUpDownStreamRequest.InstanceId()
            model.fromMap(dict["InstanceId"] as! [String: Any])
            self.instanceId = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("UpStreamDepth") {
            self.upStreamDepth = dict["UpStreamDepth"] as! Int32
        }
    }
}

public class GetInstanceUpDownStreamShrinkRequest : Tea.TeaModel {
    public var downStreamDepth: Int32?

    public var env: String?

    public var instanceIdShrink: String?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public var upStreamDepth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downStreamDepth != nil {
            map["DownStreamDepth"] = self.downStreamDepth!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.instanceIdShrink != nil {
            map["InstanceId"] = self.instanceIdShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.upStreamDepth != nil {
            map["UpStreamDepth"] = self.upStreamDepth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownStreamDepth") {
            self.downStreamDepth = dict["DownStreamDepth"] as! Int32
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceIdShrink = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("UpStreamDepth") {
            self.upStreamDepth = dict["UpStreamDepth"] as! Int32
        }
    }
}

public class GetInstanceUpDownStreamResponseBody : Tea.TeaModel {
    public class InstanceDagInfo : Tea.TeaModel {
        public class DownInstanceList : Tea.TeaModel {
            public var fieldInstanceIdList: [String]?

            public var id: String?

            public var name: String?

            public var nodeId: String?

            public var nodeType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldInstanceIdList != nil {
                    map["FieldInstanceIdList"] = self.fieldInstanceIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldInstanceIdList") {
                    self.fieldInstanceIdList = dict["FieldInstanceIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("NodeType") {
                    self.nodeType = dict["NodeType"] as! String
                }
            }
        }
        public class StartInstanceList : Tea.TeaModel {
            public var fieldInstanceIdList: [String]?

            public var id: String?

            public var name: String?

            public var nodeId: String?

            public var nodeType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldInstanceIdList != nil {
                    map["FieldInstanceIdList"] = self.fieldInstanceIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldInstanceIdList") {
                    self.fieldInstanceIdList = dict["FieldInstanceIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("NodeType") {
                    self.nodeType = dict["NodeType"] as! String
                }
            }
        }
        public class UpInstanceList : Tea.TeaModel {
            public var fieldInstanceIdList: [String]?

            public var id: String?

            public var name: String?

            public var nodeId: String?

            public var nodeType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldInstanceIdList != nil {
                    map["FieldInstanceIdList"] = self.fieldInstanceIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldInstanceIdList") {
                    self.fieldInstanceIdList = dict["FieldInstanceIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("NodeType") {
                    self.nodeType = dict["NodeType"] as! String
                }
            }
        }
        public var downInstanceList: [GetInstanceUpDownStreamResponseBody.InstanceDagInfo.DownInstanceList]?

        public var startInstanceList: [GetInstanceUpDownStreamResponseBody.InstanceDagInfo.StartInstanceList]?

        public var upInstanceList: [GetInstanceUpDownStreamResponseBody.InstanceDagInfo.UpInstanceList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downInstanceList != nil {
                var tmp : [Any] = []
                for k in self.downInstanceList! {
                    tmp.append(k.toMap())
                }
                map["DownInstanceList"] = tmp
            }
            if self.startInstanceList != nil {
                var tmp : [Any] = []
                for k in self.startInstanceList! {
                    tmp.append(k.toMap())
                }
                map["StartInstanceList"] = tmp
            }
            if self.upInstanceList != nil {
                var tmp : [Any] = []
                for k in self.upInstanceList! {
                    tmp.append(k.toMap())
                }
                map["UpInstanceList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownInstanceList") {
                var tmp : [GetInstanceUpDownStreamResponseBody.InstanceDagInfo.DownInstanceList] = []
                for v in dict["DownInstanceList"] as! [Any] {
                    var model = GetInstanceUpDownStreamResponseBody.InstanceDagInfo.DownInstanceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.downInstanceList = tmp
            }
            if dict.keys.contains("StartInstanceList") {
                var tmp : [GetInstanceUpDownStreamResponseBody.InstanceDagInfo.StartInstanceList] = []
                for v in dict["StartInstanceList"] as! [Any] {
                    var model = GetInstanceUpDownStreamResponseBody.InstanceDagInfo.StartInstanceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.startInstanceList = tmp
            }
            if dict.keys.contains("UpInstanceList") {
                var tmp : [GetInstanceUpDownStreamResponseBody.InstanceDagInfo.UpInstanceList] = []
                for v in dict["UpInstanceList"] as! [Any] {
                    var model = GetInstanceUpDownStreamResponseBody.InstanceDagInfo.UpInstanceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.upInstanceList = tmp
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceDagInfo: GetInstanceUpDownStreamResponseBody.InstanceDagInfo?

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
        try self.instanceDagInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceDagInfo != nil {
            map["InstanceDagInfo"] = self.instanceDagInfo?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceDagInfo") {
            var model = GetInstanceUpDownStreamResponseBody.InstanceDagInfo()
            model.fromMap(dict["InstanceDagInfo"] as! [String: Any])
            self.instanceDagInfo = model
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

public class GetInstanceUpDownStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceUpDownStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInstanceUpDownStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMyRolesRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GetMyRolesResponseBody : Tea.TeaModel {
    public class RoleList : Tea.TeaModel {
        public var description_: String?

        public var id: Int64?

        public var name: String?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var roleList: [GetMyRolesResponseBody.RoleList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleList != nil {
            var tmp : [Any] = []
            for k in self.roleList! {
                tmp.append(k.toMap())
            }
            map["RoleList"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleList") {
            var tmp : [GetMyRolesResponseBody.RoleList] = []
            for v in dict["RoleList"] as! [Any] {
                var model = GetMyRolesResponseBody.RoleList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.roleList = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetMyRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMyRolesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMyRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMyTenantsRequest : Tea.TeaModel {
    public var featureCodeList: [String]?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureCodeList != nil {
            map["FeatureCodeList"] = self.featureCodeList!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureCodeList") {
            self.featureCodeList = dict["FeatureCodeList"] as! [String]
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GetMyTenantsShrinkRequest : Tea.TeaModel {
    public var featureCodeListShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureCodeListShrink != nil {
            map["FeatureCodeList"] = self.featureCodeListShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureCodeList") {
            self.featureCodeListShrink = dict["FeatureCodeList"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GetMyTenantsResponseBody : Tea.TeaModel {
    public class TenantList : Tea.TeaModel {
        public var deleteTime: Int64?

        public var deleted: Bool?

        public var description_: String?

        public var id: Int64?

        public var name: String?

        public var opsTenant: Bool?

        public var ownerId: String?

        public var resourceLimited: Bool?

        public var tenantTypeList: [String]?

        public var titleType: String?

        public var visible: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deleteTime != nil {
                map["DeleteTime"] = self.deleteTime!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.opsTenant != nil {
                map["OpsTenant"] = self.opsTenant!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.resourceLimited != nil {
                map["ResourceLimited"] = self.resourceLimited!
            }
            if self.tenantTypeList != nil {
                map["TenantTypeList"] = self.tenantTypeList!
            }
            if self.titleType != nil {
                map["TitleType"] = self.titleType!
            }
            if self.visible != nil {
                map["Visible"] = self.visible!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeleteTime") {
                self.deleteTime = dict["DeleteTime"] as! Int64
            }
            if dict.keys.contains("Deleted") {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OpsTenant") {
                self.opsTenant = dict["OpsTenant"] as! Bool
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("ResourceLimited") {
                self.resourceLimited = dict["ResourceLimited"] as! Bool
            }
            if dict.keys.contains("TenantTypeList") {
                self.tenantTypeList = dict["TenantTypeList"] as! [String]
            }
            if dict.keys.contains("TitleType") {
                self.titleType = dict["TitleType"] as! String
            }
            if dict.keys.contains("Visible") {
                self.visible = dict["Visible"] as! Bool
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tenantList: [GetMyTenantsResponseBody.TenantList]?

    public override init() {
        super.init()
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.tenantList != nil {
            var tmp : [Any] = []
            for k in self.tenantList! {
                tmp.append(k.toMap())
            }
            map["TenantList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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
        if dict.keys.contains("TenantList") {
            var tmp : [GetMyTenantsResponseBody.TenantList] = []
            for v in dict["TenantList"] as! [Any] {
                var model = GetMyTenantsResponseBody.TenantList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tenantList = tmp
        }
    }
}

public class GetMyTenantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMyTenantsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMyTenantsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNodeUpDownStreamRequest : Tea.TeaModel {
    public class NodeId : Tea.TeaModel {
        public var fieldIdList: String?

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
            if self.fieldIdList != nil {
                map["FieldIdList"] = self.fieldIdList!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FieldIdList") {
                self.fieldIdList = dict["FieldIdList"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var downStreamDepth: Int32?

    public var env: String?

    public var nodeId: GetNodeUpDownStreamRequest.NodeId?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public var upStreamDepth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodeId?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downStreamDepth != nil {
            map["DownStreamDepth"] = self.downStreamDepth!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.upStreamDepth != nil {
            map["UpStreamDepth"] = self.upStreamDepth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownStreamDepth") {
            self.downStreamDepth = dict["DownStreamDepth"] as! Int32
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("NodeId") {
            var model = GetNodeUpDownStreamRequest.NodeId()
            model.fromMap(dict["NodeId"] as! [String: Any])
            self.nodeId = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("UpStreamDepth") {
            self.upStreamDepth = dict["UpStreamDepth"] as! Int32
        }
    }
}

public class GetNodeUpDownStreamShrinkRequest : Tea.TeaModel {
    public var downStreamDepth: Int32?

    public var env: String?

    public var nodeIdShrink: String?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public var upStreamDepth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downStreamDepth != nil {
            map["DownStreamDepth"] = self.downStreamDepth!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.nodeIdShrink != nil {
            map["NodeId"] = self.nodeIdShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.upStreamDepth != nil {
            map["UpStreamDepth"] = self.upStreamDepth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownStreamDepth") {
            self.downStreamDepth = dict["DownStreamDepth"] as! Int32
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeIdShrink = dict["NodeId"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
        if dict.keys.contains("UpStreamDepth") {
            self.upStreamDepth = dict["UpStreamDepth"] as! Int32
        }
    }
}

public class GetNodeUpDownStreamResponseBody : Tea.TeaModel {
    public class NodeDagInfo : Tea.TeaModel {
        public class DownStreamNodeList : Tea.TeaModel {
            public var fieldIdList: [String]?

            public var id: String?

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
                if self.fieldIdList != nil {
                    map["FieldIdList"] = self.fieldIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldIdList") {
                    self.fieldIdList = dict["FieldIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class StartNodeList : Tea.TeaModel {
            public var fieldIdList: [String]?

            public var id: String?

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
                if self.fieldIdList != nil {
                    map["FieldIdList"] = self.fieldIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldIdList") {
                    self.fieldIdList = dict["FieldIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class UpStreamNodeList : Tea.TeaModel {
            public var fieldIdList: [String]?

            public var id: String?

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
                if self.fieldIdList != nil {
                    map["FieldIdList"] = self.fieldIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldIdList") {
                    self.fieldIdList = dict["FieldIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var downStreamNodeList: [GetNodeUpDownStreamResponseBody.NodeDagInfo.DownStreamNodeList]?

        public var startNodeList: [GetNodeUpDownStreamResponseBody.NodeDagInfo.StartNodeList]?

        public var upStreamNodeList: [GetNodeUpDownStreamResponseBody.NodeDagInfo.UpStreamNodeList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downStreamNodeList != nil {
                var tmp : [Any] = []
                for k in self.downStreamNodeList! {
                    tmp.append(k.toMap())
                }
                map["DownStreamNodeList"] = tmp
            }
            if self.startNodeList != nil {
                var tmp : [Any] = []
                for k in self.startNodeList! {
                    tmp.append(k.toMap())
                }
                map["StartNodeList"] = tmp
            }
            if self.upStreamNodeList != nil {
                var tmp : [Any] = []
                for k in self.upStreamNodeList! {
                    tmp.append(k.toMap())
                }
                map["UpStreamNodeList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownStreamNodeList") {
                var tmp : [GetNodeUpDownStreamResponseBody.NodeDagInfo.DownStreamNodeList] = []
                for v in dict["DownStreamNodeList"] as! [Any] {
                    var model = GetNodeUpDownStreamResponseBody.NodeDagInfo.DownStreamNodeList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.downStreamNodeList = tmp
            }
            if dict.keys.contains("StartNodeList") {
                var tmp : [GetNodeUpDownStreamResponseBody.NodeDagInfo.StartNodeList] = []
                for v in dict["StartNodeList"] as! [Any] {
                    var model = GetNodeUpDownStreamResponseBody.NodeDagInfo.StartNodeList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.startNodeList = tmp
            }
            if dict.keys.contains("UpStreamNodeList") {
                var tmp : [GetNodeUpDownStreamResponseBody.NodeDagInfo.UpStreamNodeList] = []
                for v in dict["UpStreamNodeList"] as! [Any] {
                    var model = GetNodeUpDownStreamResponseBody.NodeDagInfo.UpStreamNodeList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.upStreamNodeList = tmp
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nodeDagInfo: GetNodeUpDownStreamResponseBody.NodeDagInfo?

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
        try self.nodeDagInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nodeDagInfo != nil {
            map["NodeDagInfo"] = self.nodeDagInfo?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NodeDagInfo") {
            var model = GetNodeUpDownStreamResponseBody.NodeDagInfo()
            model.fromMap(dict["NodeDagInfo"] as! [String: Any])
            self.nodeDagInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetNodeUpDownStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeUpDownStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetNodeUpDownStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOperationSubmitStatusRequest : Tea.TeaModel {
    public var env: String?

    public var jobId: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GetOperationSubmitStatusResponseBody : Tea.TeaModel {
    public class OperationSubmitJob : Tea.TeaModel {
        public var externalBizId: String?

        public var jobId: String?

        public var operation: String?

        public var operationStatus: String?

        public var operator_: String?

        public var progress: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.externalBizId != nil {
                map["ExternalBizId"] = self.externalBizId!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.operation != nil {
                map["Operation"] = self.operation!
            }
            if self.operationStatus != nil {
                map["OperationStatus"] = self.operationStatus!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExternalBizId") {
                self.externalBizId = dict["ExternalBizId"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Operation") {
                self.operation = dict["Operation"] as! String
            }
            if dict.keys.contains("OperationStatus") {
                self.operationStatus = dict["OperationStatus"] as! String
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var operationSubmitJob: GetOperationSubmitStatusResponseBody.OperationSubmitJob?

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
        try self.operationSubmitJob?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.operationSubmitJob != nil {
            map["OperationSubmitJob"] = self.operationSubmitJob?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OperationSubmitJob") {
            var model = GetOperationSubmitStatusResponseBody.OperationSubmitJob()
            model.fromMap(dict["OperationSubmitJob"] as! [String: Any])
            self.operationSubmitJob = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOperationSubmitStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOperationSubmitStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetOperationSubmitStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPhysicalInstanceRequest : Tea.TeaModel {
    public var env: String?

    public var instanceId: String?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class GetPhysicalInstanceResponseBody : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public class NodeInfo : Tea.TeaModel {
            public class Creator : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public class Modifier : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public class OwnerList : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var bizUnitName: String?

            public var createTime: String?

            public var creator: GetPhysicalInstanceResponseBody.Instance.NodeInfo.Creator?

            public var description_: String?

            public var dryRun: Bool?

            public var from: String?

            public var hasDev: Bool?

            public var hasProd: Bool?

            public var id: String?

            public var lastModifiedTime: String?

            public var modifier: GetPhysicalInstanceResponseBody.Instance.NodeInfo.Modifier?

            public var name: String?

            public var ownerList: [GetPhysicalInstanceResponseBody.Instance.NodeInfo.OwnerList]?

            public var priorityList: [String]?

            public var resourceGroupList: [String]?

            public var schedulePaused: Bool?

            public var schedulePeriodList: [String]?

            public var subDetailType: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.creator?.validate()
                try self.modifier?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizUnitName != nil {
                    map["BizUnitName"] = self.bizUnitName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.dryRun != nil {
                    map["DryRun"] = self.dryRun!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.hasDev != nil {
                    map["HasDev"] = self.hasDev!
                }
                if self.hasProd != nil {
                    map["HasProd"] = self.hasProd!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.lastModifiedTime != nil {
                    map["LastModifiedTime"] = self.lastModifiedTime!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerList != nil {
                    var tmp : [Any] = []
                    for k in self.ownerList! {
                        tmp.append(k.toMap())
                    }
                    map["OwnerList"] = tmp
                }
                if self.priorityList != nil {
                    map["PriorityList"] = self.priorityList!
                }
                if self.resourceGroupList != nil {
                    map["ResourceGroupList"] = self.resourceGroupList!
                }
                if self.schedulePaused != nil {
                    map["SchedulePaused"] = self.schedulePaused!
                }
                if self.schedulePeriodList != nil {
                    map["SchedulePeriodList"] = self.schedulePeriodList!
                }
                if self.subDetailType != nil {
                    map["SubDetailType"] = self.subDetailType!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizUnitName") {
                    self.bizUnitName = dict["BizUnitName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Creator") {
                    var model = GetPhysicalInstanceResponseBody.Instance.NodeInfo.Creator()
                    model.fromMap(dict["Creator"] as! [String: Any])
                    self.creator = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DryRun") {
                    self.dryRun = dict["DryRun"] as! Bool
                }
                if dict.keys.contains("From") {
                    self.from = dict["From"] as! String
                }
                if dict.keys.contains("HasDev") {
                    self.hasDev = dict["HasDev"] as! Bool
                }
                if dict.keys.contains("HasProd") {
                    self.hasProd = dict["HasProd"] as! Bool
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LastModifiedTime") {
                    self.lastModifiedTime = dict["LastModifiedTime"] as! String
                }
                if dict.keys.contains("Modifier") {
                    var model = GetPhysicalInstanceResponseBody.Instance.NodeInfo.Modifier()
                    model.fromMap(dict["Modifier"] as! [String: Any])
                    self.modifier = model
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerList") {
                    var tmp : [GetPhysicalInstanceResponseBody.Instance.NodeInfo.OwnerList] = []
                    for v in dict["OwnerList"] as! [Any] {
                        var model = GetPhysicalInstanceResponseBody.Instance.NodeInfo.OwnerList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ownerList = tmp
                }
                if dict.keys.contains("PriorityList") {
                    self.priorityList = dict["PriorityList"] as! [String]
                }
                if dict.keys.contains("ResourceGroupList") {
                    self.resourceGroupList = dict["ResourceGroupList"] as! [String]
                }
                if dict.keys.contains("SchedulePaused") {
                    self.schedulePaused = dict["SchedulePaused"] as! Bool
                }
                if dict.keys.contains("SchedulePeriodList") {
                    self.schedulePeriodList = dict["SchedulePeriodList"] as! [String]
                }
                if dict.keys.contains("SubDetailType") {
                    self.subDetailType = dict["SubDetailType"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var bizDate: String?

        public var dueTime: String?

        public var duration: String?

        public var endExecuteTime: Int64?

        public var extendInfo: String?

        public var id: String?

        public var index: Int32?

        public var nodeInfo: GetPhysicalInstanceResponseBody.Instance.NodeInfo?

        public var startExecuteTime: Int64?

        public var statusList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nodeInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizDate != nil {
                map["BizDate"] = self.bizDate!
            }
            if self.dueTime != nil {
                map["DueTime"] = self.dueTime!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.endExecuteTime != nil {
                map["EndExecuteTime"] = self.endExecuteTime!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.nodeInfo != nil {
                map["NodeInfo"] = self.nodeInfo?.toMap()
            }
            if self.startExecuteTime != nil {
                map["StartExecuteTime"] = self.startExecuteTime!
            }
            if self.statusList != nil {
                map["StatusList"] = self.statusList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizDate") {
                self.bizDate = dict["BizDate"] as! String
            }
            if dict.keys.contains("DueTime") {
                self.dueTime = dict["DueTime"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("EndExecuteTime") {
                self.endExecuteTime = dict["EndExecuteTime"] as! Int64
            }
            if dict.keys.contains("ExtendInfo") {
                self.extendInfo = dict["ExtendInfo"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("NodeInfo") {
                var model = GetPhysicalInstanceResponseBody.Instance.NodeInfo()
                model.fromMap(dict["NodeInfo"] as! [String: Any])
                self.nodeInfo = model
            }
            if dict.keys.contains("StartExecuteTime") {
                self.startExecuteTime = dict["StartExecuteTime"] as! Int64
            }
            if dict.keys.contains("StatusList") {
                self.statusList = dict["StatusList"] as! [String]
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var instance: GetPhysicalInstanceResponseBody.Instance?

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
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Instance") {
            var model = GetPhysicalInstanceResponseBody.Instance()
            model.fromMap(dict["Instance"] as! [String: Any])
            self.instance = model
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

public class GetPhysicalInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhysicalInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPhysicalInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPhysicalInstanceLogRequest : Tea.TeaModel {
    public var env: String?

    public var instanceId: String?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class GetPhysicalInstanceLogResponseBody : Tea.TeaModel {
    public class TaskrunLogList : Tea.TeaModel {
        public var duration: String?

        public var endTime: String?

        public var logContent: String?

        public var startTime: String?

        public var status: String?

        public var taskrunId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.logContent != nil {
                map["LogContent"] = self.logContent!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskrunId != nil {
                map["TaskrunId"] = self.taskrunId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("LogContent") {
                self.logContent = dict["LogContent"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskrunId") {
                self.taskrunId = dict["TaskrunId"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskrunLogList: [GetPhysicalInstanceLogResponseBody.TaskrunLogList]?

    public override init() {
        super.init()
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.taskrunLogList != nil {
            var tmp : [Any] = []
            for k in self.taskrunLogList! {
                tmp.append(k.toMap())
            }
            map["TaskrunLogList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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
        if dict.keys.contains("TaskrunLogList") {
            var tmp : [GetPhysicalInstanceLogResponseBody.TaskrunLogList] = []
            for v in dict["TaskrunLogList"] as! [Any] {
                var model = GetPhysicalInstanceLogResponseBody.TaskrunLogList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskrunLogList = tmp
        }
    }
}

public class GetPhysicalInstanceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhysicalInstanceLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPhysicalInstanceLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPhysicalNodeRequest : Tea.TeaModel {
    public var env: String?

    public var nodeId: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GetPhysicalNodeResponseBody : Tea.TeaModel {
    public class NodeInfo : Tea.TeaModel {
        public class Creator : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Modifier : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Owner : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class ProjectInfo : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var creator: GetPhysicalNodeResponseBody.NodeInfo.Creator?

        public var cronExpression: String?

        public var dataSourceId: Int64?

        public var dataSourceSchema: String?

        public var description_: String?

        public var from: String?

        public var id: String?

        public var lastModifiedTime: Int64?

        public var modifier: GetPhysicalNodeResponseBody.NodeInfo.Modifier?

        public var name: String?

        public var operatorType: String?

        public var outputNameList: [String]?

        public var owner: GetPhysicalNodeResponseBody.NodeInfo.Owner?

        public var priority: String?

        public var projectInfo: GetPhysicalNodeResponseBody.NodeInfo.ProjectInfo?

        public var scheduleType: String?

        public var status: String?

        public var triggerConfig: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.creator?.validate()
            try self.modifier?.validate()
            try self.owner?.validate()
            try self.projectInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator?.toMap()
            }
            if self.cronExpression != nil {
                map["CronExpression"] = self.cronExpression!
            }
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.dataSourceSchema != nil {
                map["DataSourceSchema"] = self.dataSourceSchema!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.from != nil {
                map["From"] = self.from!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.modifier != nil {
                map["Modifier"] = self.modifier?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            if self.outputNameList != nil {
                map["OutputNameList"] = self.outputNameList!
            }
            if self.owner != nil {
                map["Owner"] = self.owner?.toMap()
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.projectInfo != nil {
                map["ProjectInfo"] = self.projectInfo?.toMap()
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.triggerConfig != nil {
                map["TriggerConfig"] = self.triggerConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Creator") {
                var model = GetPhysicalNodeResponseBody.NodeInfo.Creator()
                model.fromMap(dict["Creator"] as! [String: Any])
                self.creator = model
            }
            if dict.keys.contains("CronExpression") {
                self.cronExpression = dict["CronExpression"] as! String
            }
            if dict.keys.contains("DataSourceId") {
                self.dataSourceId = dict["DataSourceId"] as! Int64
            }
            if dict.keys.contains("DataSourceSchema") {
                self.dataSourceSchema = dict["DataSourceSchema"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("From") {
                self.from = dict["From"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LastModifiedTime") {
                self.lastModifiedTime = dict["LastModifiedTime"] as! Int64
            }
            if dict.keys.contains("Modifier") {
                var model = GetPhysicalNodeResponseBody.NodeInfo.Modifier()
                model.fromMap(dict["Modifier"] as! [String: Any])
                self.modifier = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperatorType") {
                self.operatorType = dict["OperatorType"] as! String
            }
            if dict.keys.contains("OutputNameList") {
                self.outputNameList = dict["OutputNameList"] as! [String]
            }
            if dict.keys.contains("Owner") {
                var model = GetPhysicalNodeResponseBody.NodeInfo.Owner()
                model.fromMap(dict["Owner"] as! [String: Any])
                self.owner = model
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("ProjectInfo") {
                var model = GetPhysicalNodeResponseBody.NodeInfo.ProjectInfo()
                model.fromMap(dict["ProjectInfo"] as! [String: Any])
                self.projectInfo = model
            }
            if dict.keys.contains("ScheduleType") {
                self.scheduleType = dict["ScheduleType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TriggerConfig") {
                self.triggerConfig = dict["TriggerConfig"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nodeInfo: GetPhysicalNodeResponseBody.NodeInfo?

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
        try self.nodeInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nodeInfo != nil {
            map["NodeInfo"] = self.nodeInfo?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NodeInfo") {
            var model = GetPhysicalNodeResponseBody.NodeInfo()
            model.fromMap(dict["NodeInfo"] as! [String: Any])
            self.nodeInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPhysicalNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhysicalNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPhysicalNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPhysicalNodeByOutputNameRequest : Tea.TeaModel {
    public var env: String?

    public var opTenantId: Int64?

    public var outputName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.outputName != nil {
            map["OutputName"] = self.outputName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("OutputName") {
            self.outputName = dict["OutputName"] as! String
        }
    }
}

public class GetPhysicalNodeByOutputNameResponseBody : Tea.TeaModel {
    public class NodeInfo : Tea.TeaModel {
        public class Creator : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Modifier : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Owner : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class ProjectInfo : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var creator: GetPhysicalNodeByOutputNameResponseBody.NodeInfo.Creator?

        public var description_: String?

        public var from: String?

        public var id: String?

        public var lastModifiedTime: Int64?

        public var modifier: GetPhysicalNodeByOutputNameResponseBody.NodeInfo.Modifier?

        public var name: String?

        public var operatorType: String?

        public var owner: GetPhysicalNodeByOutputNameResponseBody.NodeInfo.Owner?

        public var priority: String?

        public var projectInfo: GetPhysicalNodeByOutputNameResponseBody.NodeInfo.ProjectInfo?

        public var scheduleType: String?

        public var status: String?

        public var triggerConfig: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.creator?.validate()
            try self.modifier?.validate()
            try self.owner?.validate()
            try self.projectInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.from != nil {
                map["From"] = self.from!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.modifier != nil {
                map["Modifier"] = self.modifier?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            if self.owner != nil {
                map["Owner"] = self.owner?.toMap()
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.projectInfo != nil {
                map["ProjectInfo"] = self.projectInfo?.toMap()
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.triggerConfig != nil {
                map["TriggerConfig"] = self.triggerConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Creator") {
                var model = GetPhysicalNodeByOutputNameResponseBody.NodeInfo.Creator()
                model.fromMap(dict["Creator"] as! [String: Any])
                self.creator = model
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("From") {
                self.from = dict["From"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LastModifiedTime") {
                self.lastModifiedTime = dict["LastModifiedTime"] as! Int64
            }
            if dict.keys.contains("Modifier") {
                var model = GetPhysicalNodeByOutputNameResponseBody.NodeInfo.Modifier()
                model.fromMap(dict["Modifier"] as! [String: Any])
                self.modifier = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperatorType") {
                self.operatorType = dict["OperatorType"] as! String
            }
            if dict.keys.contains("Owner") {
                var model = GetPhysicalNodeByOutputNameResponseBody.NodeInfo.Owner()
                model.fromMap(dict["Owner"] as! [String: Any])
                self.owner = model
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("ProjectInfo") {
                var model = GetPhysicalNodeByOutputNameResponseBody.NodeInfo.ProjectInfo()
                model.fromMap(dict["ProjectInfo"] as! [String: Any])
                self.projectInfo = model
            }
            if dict.keys.contains("ScheduleType") {
                self.scheduleType = dict["ScheduleType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TriggerConfig") {
                self.triggerConfig = dict["TriggerConfig"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nodeInfo: GetPhysicalNodeByOutputNameResponseBody.NodeInfo?

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
        try self.nodeInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nodeInfo != nil {
            map["NodeInfo"] = self.nodeInfo?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NodeInfo") {
            var model = GetPhysicalNodeByOutputNameResponseBody.NodeInfo()
            model.fromMap(dict["NodeInfo"] as! [String: Any])
            self.nodeInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPhysicalNodeByOutputNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhysicalNodeByOutputNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPhysicalNodeByOutputNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPhysicalNodeContentRequest : Tea.TeaModel {
    public var env: String?

    public var nodeId: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GetPhysicalNodeContentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var codeContent: String?

        public var nodeId: String?

        public var nodeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeContent != nil {
                map["CodeContent"] = self.codeContent!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CodeContent") {
                self.codeContent = dict["CodeContent"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("NodeName") {
                self.nodeName = dict["NodeName"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetPhysicalNodeContentResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetPhysicalNodeContentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetPhysicalNodeContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhysicalNodeContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPhysicalNodeContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPhysicalNodeOperationLogRequest : Tea.TeaModel {
    public var env: String?

    public var nodeId: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("NodeId") {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GetPhysicalNodeOperationLogResponseBody : Tea.TeaModel {
    public class OperationLogList : Tea.TeaModel {
        public var context: String?

        public var operationTime: String?

        public var operationType: String?

        public var operator_: String?

        public var operatorName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.context != nil {
                map["Context"] = self.context!
            }
            if self.operationTime != nil {
                map["OperationTime"] = self.operationTime!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.operatorName != nil {
                map["OperatorName"] = self.operatorName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Context") {
                self.context = dict["Context"] as! String
            }
            if dict.keys.contains("OperationTime") {
                self.operationTime = dict["OperationTime"] as! String
            }
            if dict.keys.contains("OperationType") {
                self.operationType = dict["OperationType"] as! String
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("OperatorName") {
                self.operatorName = dict["OperatorName"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var operationLogList: [GetPhysicalNodeOperationLogResponseBody.OperationLogList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.operationLogList != nil {
            var tmp : [Any] = []
            for k in self.operationLogList! {
                tmp.append(k.toMap())
            }
            map["OperationLogList"] = tmp
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OperationLogList") {
            var tmp : [GetPhysicalNodeOperationLogResponseBody.OperationLogList] = []
            for v in dict["OperationLogList"] as! [Any] {
                var model = GetPhysicalNodeOperationLogResponseBody.OperationLogList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.operationLogList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetPhysicalNodeOperationLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhysicalNodeOperationLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPhysicalNodeOperationLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectProduceUserRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class GetProjectProduceUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
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
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var user: GetProjectProduceUserResponseBody.User?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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
        if dict.keys.contains("User") {
            var model = GetProjectProduceUserResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class GetProjectProduceUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectProduceUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetProjectProduceUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSupplementDagrunRequest : Tea.TeaModel {
    public var env: String?

    public var opTenantId: Int64?

    public var supplementId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.supplementId != nil {
            map["SupplementId"] = self.supplementId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("SupplementId") {
            self.supplementId = dict["SupplementId"] as! String
        }
    }
}

public class GetSupplementDagrunResponseBody : Tea.TeaModel {
    public class DagrunList : Tea.TeaModel {
        public var bizDate: String?

        public var duration: String?

        public var endExecuteTime: Int64?

        public var id: String?

        public var startExecuteTime: Int64?

        public var status: String?

        public var supplementId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizDate != nil {
                map["BizDate"] = self.bizDate!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.endExecuteTime != nil {
                map["EndExecuteTime"] = self.endExecuteTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.startExecuteTime != nil {
                map["StartExecuteTime"] = self.startExecuteTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supplementId != nil {
                map["SupplementId"] = self.supplementId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizDate") {
                self.bizDate = dict["BizDate"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("EndExecuteTime") {
                self.endExecuteTime = dict["EndExecuteTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("StartExecuteTime") {
                self.startExecuteTime = dict["StartExecuteTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupplementId") {
                self.supplementId = dict["SupplementId"] as! String
            }
        }
    }
    public var code: String?

    public var dagrunList: [GetSupplementDagrunResponseBody.DagrunList]?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dagrunList != nil {
            var tmp : [Any] = []
            for k in self.dagrunList! {
                tmp.append(k.toMap())
            }
            map["DagrunList"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DagrunList") {
            var tmp : [GetSupplementDagrunResponseBody.DagrunList] = []
            for v in dict["DagrunList"] as! [Any] {
                var model = GetSupplementDagrunResponseBody.DagrunList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dagrunList = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GetSupplementDagrunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSupplementDagrunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSupplementDagrunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSupplementDagrunInstanceRequest : Tea.TeaModel {
    public var dagrunId: String?

    public var env: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dagrunId != nil {
            map["DagrunId"] = self.dagrunId!
        }
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DagrunId") {
            self.dagrunId = dict["DagrunId"] as! String
        }
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GetSupplementDagrunInstanceResponseBody : Tea.TeaModel {
    public class InstanceList : Tea.TeaModel {
        public class NodeInfo : Tea.TeaModel {
            public class Creator : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public class Modifier : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public class OwnerList : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var bizUnitName: String?

            public var createTime: String?

            public var creator: GetSupplementDagrunInstanceResponseBody.InstanceList.NodeInfo.Creator?

            public var description_: String?

            public var dryRun: Bool?

            public var from: String?

            public var hasDev: Bool?

            public var hasProd: Bool?

            public var id: String?

            public var lastModifiedTime: String?

            public var modifier: GetSupplementDagrunInstanceResponseBody.InstanceList.NodeInfo.Modifier?

            public var name: String?

            public var ownerList: [GetSupplementDagrunInstanceResponseBody.InstanceList.NodeInfo.OwnerList]?

            public var priorityList: [String]?

            public var resourceGroupList: [String]?

            public var schedulePaused: Bool?

            public var schedulePeriodList: [String]?

            public var subDetailType: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.creator?.validate()
                try self.modifier?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizUnitName != nil {
                    map["BizUnitName"] = self.bizUnitName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.dryRun != nil {
                    map["DryRun"] = self.dryRun!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.hasDev != nil {
                    map["HasDev"] = self.hasDev!
                }
                if self.hasProd != nil {
                    map["HasProd"] = self.hasProd!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.lastModifiedTime != nil {
                    map["LastModifiedTime"] = self.lastModifiedTime!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerList != nil {
                    var tmp : [Any] = []
                    for k in self.ownerList! {
                        tmp.append(k.toMap())
                    }
                    map["OwnerList"] = tmp
                }
                if self.priorityList != nil {
                    map["PriorityList"] = self.priorityList!
                }
                if self.resourceGroupList != nil {
                    map["ResourceGroupList"] = self.resourceGroupList!
                }
                if self.schedulePaused != nil {
                    map["SchedulePaused"] = self.schedulePaused!
                }
                if self.schedulePeriodList != nil {
                    map["SchedulePeriodList"] = self.schedulePeriodList!
                }
                if self.subDetailType != nil {
                    map["SubDetailType"] = self.subDetailType!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizUnitName") {
                    self.bizUnitName = dict["BizUnitName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Creator") {
                    var model = GetSupplementDagrunInstanceResponseBody.InstanceList.NodeInfo.Creator()
                    model.fromMap(dict["Creator"] as! [String: Any])
                    self.creator = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DryRun") {
                    self.dryRun = dict["DryRun"] as! Bool
                }
                if dict.keys.contains("From") {
                    self.from = dict["From"] as! String
                }
                if dict.keys.contains("HasDev") {
                    self.hasDev = dict["HasDev"] as! Bool
                }
                if dict.keys.contains("HasProd") {
                    self.hasProd = dict["HasProd"] as! Bool
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LastModifiedTime") {
                    self.lastModifiedTime = dict["LastModifiedTime"] as! String
                }
                if dict.keys.contains("Modifier") {
                    var model = GetSupplementDagrunInstanceResponseBody.InstanceList.NodeInfo.Modifier()
                    model.fromMap(dict["Modifier"] as! [String: Any])
                    self.modifier = model
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerList") {
                    var tmp : [GetSupplementDagrunInstanceResponseBody.InstanceList.NodeInfo.OwnerList] = []
                    for v in dict["OwnerList"] as! [Any] {
                        var model = GetSupplementDagrunInstanceResponseBody.InstanceList.NodeInfo.OwnerList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ownerList = tmp
                }
                if dict.keys.contains("PriorityList") {
                    self.priorityList = dict["PriorityList"] as! [String]
                }
                if dict.keys.contains("ResourceGroupList") {
                    self.resourceGroupList = dict["ResourceGroupList"] as! [String]
                }
                if dict.keys.contains("SchedulePaused") {
                    self.schedulePaused = dict["SchedulePaused"] as! Bool
                }
                if dict.keys.contains("SchedulePeriodList") {
                    self.schedulePeriodList = dict["SchedulePeriodList"] as! [String]
                }
                if dict.keys.contains("SubDetailType") {
                    self.subDetailType = dict["SubDetailType"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var bizDate: Int64?

        public var dueTime: Int64?

        public var duration: String?

        public var endExecuteTime: Int64?

        public var extendInfo: String?

        public var id: String?

        public var index: Int32?

        public var nodeInfo: GetSupplementDagrunInstanceResponseBody.InstanceList.NodeInfo?

        public var startExecuteTime: Int64?

        public var statusList: [String]?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nodeInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizDate != nil {
                map["BizDate"] = self.bizDate!
            }
            if self.dueTime != nil {
                map["DueTime"] = self.dueTime!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.endExecuteTime != nil {
                map["EndExecuteTime"] = self.endExecuteTime!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.nodeInfo != nil {
                map["NodeInfo"] = self.nodeInfo?.toMap()
            }
            if self.startExecuteTime != nil {
                map["StartExecuteTime"] = self.startExecuteTime!
            }
            if self.statusList != nil {
                map["StatusList"] = self.statusList!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizDate") {
                self.bizDate = dict["BizDate"] as! Int64
            }
            if dict.keys.contains("DueTime") {
                self.dueTime = dict["DueTime"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("EndExecuteTime") {
                self.endExecuteTime = dict["EndExecuteTime"] as! Int64
            }
            if dict.keys.contains("ExtendInfo") {
                self.extendInfo = dict["ExtendInfo"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("NodeInfo") {
                var model = GetSupplementDagrunInstanceResponseBody.InstanceList.NodeInfo()
                model.fromMap(dict["NodeInfo"] as! [String: Any])
                self.nodeInfo = model
            }
            if dict.keys.contains("StartExecuteTime") {
                self.startExecuteTime = dict["StartExecuteTime"] as! Int64
            }
            if dict.keys.contains("StatusList") {
                self.statusList = dict["StatusList"] as! [String]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceList: [GetSupplementDagrunInstanceResponseBody.InstanceList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceList != nil {
            var tmp : [Any] = []
            for k in self.instanceList! {
                tmp.append(k.toMap())
            }
            map["InstanceList"] = tmp
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceList") {
            var tmp : [GetSupplementDagrunInstanceResponseBody.InstanceList] = []
            for v in dict["InstanceList"] as! [Any] {
                var model = GetSupplementDagrunInstanceResponseBody.InstanceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceList = tmp
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

public class GetSupplementDagrunInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSupplementDagrunInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSupplementDagrunInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserBySourceIdRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var sourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! String
        }
    }
}

public class GetUserBySourceIdResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var displayName: String?

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
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var user: GetUserBySourceIdResponseBody.User?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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
        if dict.keys.contains("User") {
            var model = GetUserBySourceIdResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class GetUserBySourceIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserBySourceIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserBySourceIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserGroupRequest : Tea.TeaModel {
    public var opTenantId: Int64?

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
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class GetUserGroupResponseBody : Tea.TeaModel {
    public class UserGroupInfo : Tea.TeaModel {
        public class AdminList : Tea.TeaModel {
            public var accountName: String?

            public var displayName: String?

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
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
            }
        }
        public var active: Bool?

        public var adminList: [GetUserGroupResponseBody.UserGroupInfo.AdminList]?

        public var description_: String?

        public var id: String?

        public var myRole: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.adminList != nil {
                var tmp : [Any] = []
                for k in self.adminList! {
                    tmp.append(k.toMap())
                }
                map["AdminList"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.myRole != nil {
                map["MyRole"] = self.myRole!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("AdminList") {
                var tmp : [GetUserGroupResponseBody.UserGroupInfo.AdminList] = []
                for v in dict["AdminList"] as! [Any] {
                    var model = GetUserGroupResponseBody.UserGroupInfo.AdminList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.adminList = tmp
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MyRole") {
                self.myRole = dict["MyRole"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var userGroupInfo: GetUserGroupResponseBody.UserGroupInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userGroupInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.userGroupInfo != nil {
            map["UserGroupInfo"] = self.userGroupInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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
        if dict.keys.contains("UserGroupInfo") {
            var model = GetUserGroupResponseBody.UserGroupInfo()
            model.fromMap(dict["UserGroupInfo"] as! [String: Any])
            self.userGroupInfo = model
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUsersRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var userIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.userIdList != nil {
            map["UserIdList"] = self.userIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UserIdList") {
            self.userIdList = dict["UserIdList"] as! [String]
        }
    }
}

public class GetUsersShrinkRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var userIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.userIdListShrink != nil {
            map["UserIdList"] = self.userIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UserIdList") {
            self.userIdListShrink = dict["UserIdList"] as! String
        }
    }
}

public class GetUsersResponseBody : Tea.TeaModel {
    public class UserList : Tea.TeaModel {
        public var accountName: String?

        public var dingNumber: String?

        public var displayName: String?

        public var displayNameWithoutStatus: String?

        public var enableWhiteIp: String?

        public var feiShuRobot: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: String?

        public var mail: String?

        public var mobilePhone: String?

        public var name: String?

        public var nickName: String?

        public var parentId: String?

        public var realName: String?

        public var sourceId: String?

        public var sourceType: String?

        public var weChatRobot: String?

        public var whiteIp: String?

        public override init() {
            super.init()
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
            if self.dingNumber != nil {
                map["DingNumber"] = self.dingNumber!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.displayNameWithoutStatus != nil {
                map["DisplayNameWithoutStatus"] = self.displayNameWithoutStatus!
            }
            if self.enableWhiteIp != nil {
                map["EnableWhiteIp"] = self.enableWhiteIp!
            }
            if self.feiShuRobot != nil {
                map["FeiShuRobot"] = self.feiShuRobot!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mail != nil {
                map["Mail"] = self.mail!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.realName != nil {
                map["RealName"] = self.realName!
            }
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.weChatRobot != nil {
                map["WeChatRobot"] = self.weChatRobot!
            }
            if self.whiteIp != nil {
                map["WhiteIp"] = self.whiteIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DingNumber") {
                self.dingNumber = dict["DingNumber"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("DisplayNameWithoutStatus") {
                self.displayNameWithoutStatus = dict["DisplayNameWithoutStatus"] as! String
            }
            if dict.keys.contains("EnableWhiteIp") {
                self.enableWhiteIp = dict["EnableWhiteIp"] as! String
            }
            if dict.keys.contains("FeiShuRobot") {
                self.feiShuRobot = dict["FeiShuRobot"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Mail") {
                self.mail = dict["Mail"] as! String
            }
            if dict.keys.contains("MobilePhone") {
                self.mobilePhone = dict["MobilePhone"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NickName") {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("RealName") {
                self.realName = dict["RealName"] as! String
            }
            if dict.keys.contains("SourceId") {
                self.sourceId = dict["SourceId"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("WeChatRobot") {
                self.weChatRobot = dict["WeChatRobot"] as! String
            }
            if dict.keys.contains("WhiteIp") {
                self.whiteIp = dict["WhiteIp"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var userList: [GetUsersResponseBody.UserList]?

    public override init() {
        super.init()
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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.userList != nil {
            var tmp : [Any] = []
            for k in self.userList! {
                tmp.append(k.toMap())
            }
            map["UserList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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
        if dict.keys.contains("UserList") {
            var tmp : [GetUsersResponseBody.UserList] = []
            for v in dict["UserList"] as! [Any] {
                var model = GetUsersResponseBody.UserList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userList = tmp
        }
    }
}

public class GetUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantResourcePermissionRequest : Tea.TeaModel {
    public class GrantCommand : Tea.TeaModel {
        public class ResourceList : Tea.TeaModel {
            public var resourceId: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
            }
        }
        public var effectiveEnd: String?

        public var operateList: [String]?

        public var reason: String?

        public var resourceList: [GrantResourcePermissionRequest.GrantCommand.ResourceList]?

        public var resourceType: String?

        public var userIdList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.effectiveEnd != nil {
                map["EffectiveEnd"] = self.effectiveEnd!
            }
            if self.operateList != nil {
                map["OperateList"] = self.operateList!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.resourceList != nil {
                var tmp : [Any] = []
                for k in self.resourceList! {
                    tmp.append(k.toMap())
                }
                map["ResourceList"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.userIdList != nil {
                map["UserIdList"] = self.userIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EffectiveEnd") {
                self.effectiveEnd = dict["EffectiveEnd"] as! String
            }
            if dict.keys.contains("OperateList") {
                self.operateList = dict["OperateList"] as! [String]
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("ResourceList") {
                var tmp : [GrantResourcePermissionRequest.GrantCommand.ResourceList] = []
                for v in dict["ResourceList"] as! [Any] {
                    var model = GrantResourcePermissionRequest.GrantCommand.ResourceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceList = tmp
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UserIdList") {
                self.userIdList = dict["UserIdList"] as! [String]
            }
        }
    }
    public var grantCommand: GrantResourcePermissionRequest.GrantCommand?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.grantCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.grantCommand != nil {
            map["GrantCommand"] = self.grantCommand?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GrantCommand") {
            var model = GrantResourcePermissionRequest.GrantCommand()
            model.fromMap(dict["GrantCommand"] as! [String: Any])
            self.grantCommand = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GrantResourcePermissionShrinkRequest : Tea.TeaModel {
    public var grantCommandShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.grantCommandShrink != nil {
            map["GrantCommand"] = self.grantCommandShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GrantCommand") {
            self.grantCommandShrink = dict["GrantCommand"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class GrantResourcePermissionResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class GrantResourcePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantResourcePermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GrantResourcePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAddableRolesRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListAddableRolesResponseBody : Tea.TeaModel {
    public class RoleList : Tea.TeaModel {
        public var code: String?

        public var name: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var roleList: [ListAddableRolesResponseBody.RoleList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleList != nil {
            var tmp : [Any] = []
            for k in self.roleList! {
                tmp.append(k.toMap())
            }
            map["RoleList"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleList") {
            var tmp : [ListAddableRolesResponseBody.RoleList] = []
            for v in dict["RoleList"] as! [Any] {
                var model = ListAddableRolesResponseBody.RoleList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.roleList = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListAddableRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAddableRolesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAddableRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAddableUsersRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var searchText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.searchText != nil {
                map["SearchText"] = self.searchText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("SearchText") {
                self.searchText = dict["SearchText"] as! String
            }
        }
    }
    public var listQuery: ListAddableUsersRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            var model = ListAddableUsersRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListAddableUsersShrinkRequest : Tea.TeaModel {
    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListAddableUsersResponseBody : Tea.TeaModel {
    public class PageResult : Tea.TeaModel {
        public class UserList : Tea.TeaModel {
            public var accountName: String?

            public var dingNumber: String?

            public var displayName: String?

            public var displayNameWithoutStatus: String?

            public var enableWhiteIp: String?

            public var feiShuRobot: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: String?

            public var mail: String?

            public var mobilePhone: String?

            public var name: String?

            public var nickName: String?

            public var parentId: String?

            public var realName: String?

            public var sourceId: String?

            public var sourceType: String?

            public var weChatRobot: String?

            public var whiteIp: String?

            public override init() {
                super.init()
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
                if self.dingNumber != nil {
                    map["DingNumber"] = self.dingNumber!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.displayNameWithoutStatus != nil {
                    map["DisplayNameWithoutStatus"] = self.displayNameWithoutStatus!
                }
                if self.enableWhiteIp != nil {
                    map["EnableWhiteIp"] = self.enableWhiteIp!
                }
                if self.feiShuRobot != nil {
                    map["FeiShuRobot"] = self.feiShuRobot!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.mail != nil {
                    map["Mail"] = self.mail!
                }
                if self.mobilePhone != nil {
                    map["MobilePhone"] = self.mobilePhone!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.realName != nil {
                    map["RealName"] = self.realName!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.weChatRobot != nil {
                    map["WeChatRobot"] = self.weChatRobot!
                }
                if self.whiteIp != nil {
                    map["WhiteIp"] = self.whiteIp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("DingNumber") {
                    self.dingNumber = dict["DingNumber"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("DisplayNameWithoutStatus") {
                    self.displayNameWithoutStatus = dict["DisplayNameWithoutStatus"] as! String
                }
                if dict.keys.contains("EnableWhiteIp") {
                    self.enableWhiteIp = dict["EnableWhiteIp"] as! String
                }
                if dict.keys.contains("FeiShuRobot") {
                    self.feiShuRobot = dict["FeiShuRobot"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Mail") {
                    self.mail = dict["Mail"] as! String
                }
                if dict.keys.contains("MobilePhone") {
                    self.mobilePhone = dict["MobilePhone"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("ParentId") {
                    self.parentId = dict["ParentId"] as! String
                }
                if dict.keys.contains("RealName") {
                    self.realName = dict["RealName"] as! String
                }
                if dict.keys.contains("SourceId") {
                    self.sourceId = dict["SourceId"] as! String
                }
                if dict.keys.contains("SourceType") {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("WeChatRobot") {
                    self.weChatRobot = dict["WeChatRobot"] as! String
                }
                if dict.keys.contains("WhiteIp") {
                    self.whiteIp = dict["WhiteIp"] as! String
                }
            }
        }
        public var totalCount: Int32?

        public var userList: [ListAddableUsersResponseBody.PageResult.UserList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.userList != nil {
                var tmp : [Any] = []
                for k in self.userList! {
                    tmp.append(k.toMap())
                }
                map["UserList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("UserList") {
                var tmp : [ListAddableUsersResponseBody.PageResult.UserList] = []
                for v in dict["UserList"] as! [Any] {
                    var model = ListAddableUsersResponseBody.PageResult.UserList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userList = tmp
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageResult: ListAddableUsersResponseBody.PageResult?

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
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageResult") {
            var model = ListAddableUsersResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListAddableUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAddableUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAddableUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDataSourceWithConfigRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var name: String?

        public var ownerList: [String]?

        public var page: Int32?

        public var pageSize: Int32?

        public var scopeList: [String]?

        public var tag: String?

        public var typeList: [String]?

        public override init() {
            super.init()
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
            if self.ownerList != nil {
                map["OwnerList"] = self.ownerList!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.scopeList != nil {
                map["ScopeList"] = self.scopeList!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.typeList != nil {
                map["TypeList"] = self.typeList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OwnerList") {
                self.ownerList = dict["OwnerList"] as! [String]
            }
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("ScopeList") {
                self.scopeList = dict["ScopeList"] as! [String]
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("TypeList") {
                self.typeList = dict["TypeList"] as! [String]
            }
        }
    }
    public var listQuery: ListDataSourceWithConfigRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            var model = ListDataSourceWithConfigRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListDataSourceWithConfigShrinkRequest : Tea.TeaModel {
    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListDataSourceWithConfigResponseBody : Tea.TeaModel {
    public class PageResult : Tea.TeaModel {
        public class DataSourceList : Tea.TeaModel {
            public class DevDataSourceInfo : Tea.TeaModel {
                public class ConfigItemList : Tea.TeaModel {
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
                public var configItemList: [ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.DevDataSourceInfo.ConfigItemList]?

                public var createTime: Int64?

                public var creator: String?

                public var creatorName: String?

                public var description_: String?

                public var env: String?

                public var id: Int64?

                public var modifyTime: Int64?

                public var name: String?

                public var owner: String?

                public var ownerName: String?

                public var scope: String?

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
                    if self.configItemList != nil {
                        var tmp : [Any] = []
                        for k in self.configItemList! {
                            tmp.append(k.toMap())
                        }
                        map["ConfigItemList"] = tmp
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.creator != nil {
                        map["Creator"] = self.creator!
                    }
                    if self.creatorName != nil {
                        map["CreatorName"] = self.creatorName!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.env != nil {
                        map["Env"] = self.env!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.modifyTime != nil {
                        map["ModifyTime"] = self.modifyTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.owner != nil {
                        map["Owner"] = self.owner!
                    }
                    if self.ownerName != nil {
                        map["OwnerName"] = self.ownerName!
                    }
                    if self.scope != nil {
                        map["Scope"] = self.scope!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConfigItemList") {
                        var tmp : [ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.DevDataSourceInfo.ConfigItemList] = []
                        for v in dict["ConfigItemList"] as! [Any] {
                            var model = ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.DevDataSourceInfo.ConfigItemList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.configItemList = tmp
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! Int64
                    }
                    if dict.keys.contains("Creator") {
                        self.creator = dict["Creator"] as! String
                    }
                    if dict.keys.contains("CreatorName") {
                        self.creatorName = dict["CreatorName"] as! String
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Env") {
                        self.env = dict["Env"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("ModifyTime") {
                        self.modifyTime = dict["ModifyTime"] as! Int64
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Owner") {
                        self.owner = dict["Owner"] as! String
                    }
                    if dict.keys.contains("OwnerName") {
                        self.ownerName = dict["OwnerName"] as! String
                    }
                    if dict.keys.contains("Scope") {
                        self.scope = dict["Scope"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class ProdDataSourceInfo : Tea.TeaModel {
                public class ConfigItemList : Tea.TeaModel {
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
                public var configItemList: [ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.ProdDataSourceInfo.ConfigItemList]?

                public var createTime: Int64?

                public var creator: String?

                public var creatorName: String?

                public var description_: String?

                public var env: String?

                public var id: Int64?

                public var modifyTime: Int64?

                public var name: String?

                public var owner: String?

                public var ownerName: String?

                public var scope: String?

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
                    if self.configItemList != nil {
                        var tmp : [Any] = []
                        for k in self.configItemList! {
                            tmp.append(k.toMap())
                        }
                        map["ConfigItemList"] = tmp
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.creator != nil {
                        map["Creator"] = self.creator!
                    }
                    if self.creatorName != nil {
                        map["CreatorName"] = self.creatorName!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.env != nil {
                        map["Env"] = self.env!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.modifyTime != nil {
                        map["ModifyTime"] = self.modifyTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.owner != nil {
                        map["Owner"] = self.owner!
                    }
                    if self.ownerName != nil {
                        map["OwnerName"] = self.ownerName!
                    }
                    if self.scope != nil {
                        map["Scope"] = self.scope!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConfigItemList") {
                        var tmp : [ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.ProdDataSourceInfo.ConfigItemList] = []
                        for v in dict["ConfigItemList"] as! [Any] {
                            var model = ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.ProdDataSourceInfo.ConfigItemList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.configItemList = tmp
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! Int64
                    }
                    if dict.keys.contains("Creator") {
                        self.creator = dict["Creator"] as! String
                    }
                    if dict.keys.contains("CreatorName") {
                        self.creatorName = dict["CreatorName"] as! String
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Env") {
                        self.env = dict["Env"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("ModifyTime") {
                        self.modifyTime = dict["ModifyTime"] as! Int64
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Owner") {
                        self.owner = dict["Owner"] as! String
                    }
                    if dict.keys.contains("OwnerName") {
                        self.ownerName = dict["OwnerName"] as! String
                    }
                    if dict.keys.contains("Scope") {
                        self.scope = dict["Scope"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var devDataSourceInfo: ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.DevDataSourceInfo?

            public var prodDataSourceInfo: ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.ProdDataSourceInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.devDataSourceInfo?.validate()
                try self.prodDataSourceInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.devDataSourceInfo != nil {
                    map["DevDataSourceInfo"] = self.devDataSourceInfo?.toMap()
                }
                if self.prodDataSourceInfo != nil {
                    map["ProdDataSourceInfo"] = self.prodDataSourceInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DevDataSourceInfo") {
                    var model = ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.DevDataSourceInfo()
                    model.fromMap(dict["DevDataSourceInfo"] as! [String: Any])
                    self.devDataSourceInfo = model
                }
                if dict.keys.contains("ProdDataSourceInfo") {
                    var model = ListDataSourceWithConfigResponseBody.PageResult.DataSourceList.ProdDataSourceInfo()
                    model.fromMap(dict["ProdDataSourceInfo"] as! [String: Any])
                    self.prodDataSourceInfo = model
                }
            }
        }
        public var dataSourceList: [ListDataSourceWithConfigResponseBody.PageResult.DataSourceList]?

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
            if self.dataSourceList != nil {
                var tmp : [Any] = []
                for k in self.dataSourceList! {
                    tmp.append(k.toMap())
                }
                map["DataSourceList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSourceList") {
                var tmp : [ListDataSourceWithConfigResponseBody.PageResult.DataSourceList] = []
                for v in dict["DataSourceList"] as! [Any] {
                    var model = ListDataSourceWithConfigResponseBody.PageResult.DataSourceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataSourceList = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageResult: ListDataSourceWithConfigResponseBody.PageResult?

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
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageResult") {
            var model = ListDataSourceWithConfigResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListDataSourceWithConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceWithConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDataSourceWithConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFilesRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var category: String?

        public var directory: String?

        public var env: String?

        public var projectId: Int64?

        public var recursive: Bool?

        public override init() {
            super.init()
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
            if self.directory != nil {
                map["Directory"] = self.directory!
            }
            if self.env != nil {
                map["Env"] = self.env!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.recursive != nil {
                map["Recursive"] = self.recursive!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Directory") {
                self.directory = dict["Directory"] as! String
            }
            if dict.keys.contains("Env") {
                self.env = dict["Env"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("Recursive") {
                self.recursive = dict["Recursive"] as! Bool
            }
        }
    }
    public var listQuery: ListFilesRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            var model = ListFilesRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListFilesShrinkRequest : Tea.TeaModel {
    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListFilesResponseBody : Tea.TeaModel {
    public class FileList : Tea.TeaModel {
        public var category: String?

        public var content: String?

        public var creator: String?

        public var directory: String?

        public var fileType: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var lastModifier: String?

        public var name: String?

        public var projectId: Int64?

        public override init() {
            super.init()
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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.directory != nil {
                map["Directory"] = self.directory!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastModifier != nil {
                map["LastModifier"] = self.lastModifier!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Creator") {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Directory") {
                self.directory = dict["Directory"] as! String
            }
            if dict.keys.contains("FileType") {
                self.fileType = dict["FileType"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LastModifier") {
                self.lastModifier = dict["LastModifier"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
        }
    }
    public var code: String?

    public var fileList: [ListFilesResponseBody.FileList]?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.fileList != nil {
            var tmp : [Any] = []
            for k in self.fileList! {
                tmp.append(k.toMap())
            }
            map["FileList"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FileList") {
            var tmp : [ListFilesResponseBody.FileList] = []
            for v in dict["FileList"] as! [Any] {
                var model = ListFilesResponseBody.FileList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fileList = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class ListFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var bizType: String?

        public var bizUnitId: Int64?

        public var maxBizDate: String?

        public var maxRunDate: String?

        public var minBizDate: String?

        public var minRunDate: String?

        public var nodeId: String?

        public var ownerList: [String]?

        public var page: Int32?

        public var pageSize: Int32?

        public var priorityList: [String]?

        public var projectId: Int64?

        public var runStatusList: [String]?

        public var schedulePaused: Bool?

        public var schedulePeriodList: [String]?

        public var scheduleType: String?

        public var searchText: String?

        public var subBizTypeList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.bizUnitId != nil {
                map["BizUnitId"] = self.bizUnitId!
            }
            if self.maxBizDate != nil {
                map["MaxBizDate"] = self.maxBizDate!
            }
            if self.maxRunDate != nil {
                map["MaxRunDate"] = self.maxRunDate!
            }
            if self.minBizDate != nil {
                map["MinBizDate"] = self.minBizDate!
            }
            if self.minRunDate != nil {
                map["MinRunDate"] = self.minRunDate!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.ownerList != nil {
                map["OwnerList"] = self.ownerList!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.priorityList != nil {
                map["PriorityList"] = self.priorityList!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.runStatusList != nil {
                map["RunStatusList"] = self.runStatusList!
            }
            if self.schedulePaused != nil {
                map["SchedulePaused"] = self.schedulePaused!
            }
            if self.schedulePeriodList != nil {
                map["SchedulePeriodList"] = self.schedulePeriodList!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.searchText != nil {
                map["SearchText"] = self.searchText!
            }
            if self.subBizTypeList != nil {
                map["SubBizTypeList"] = self.subBizTypeList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizType") {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("BizUnitId") {
                self.bizUnitId = dict["BizUnitId"] as! Int64
            }
            if dict.keys.contains("MaxBizDate") {
                self.maxBizDate = dict["MaxBizDate"] as! String
            }
            if dict.keys.contains("MaxRunDate") {
                self.maxRunDate = dict["MaxRunDate"] as! String
            }
            if dict.keys.contains("MinBizDate") {
                self.minBizDate = dict["MinBizDate"] as! String
            }
            if dict.keys.contains("MinRunDate") {
                self.minRunDate = dict["MinRunDate"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("OwnerList") {
                self.ownerList = dict["OwnerList"] as! [String]
            }
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("PriorityList") {
                self.priorityList = dict["PriorityList"] as! [String]
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("RunStatusList") {
                self.runStatusList = dict["RunStatusList"] as! [String]
            }
            if dict.keys.contains("SchedulePaused") {
                self.schedulePaused = dict["SchedulePaused"] as! Bool
            }
            if dict.keys.contains("SchedulePeriodList") {
                self.schedulePeriodList = dict["SchedulePeriodList"] as! [String]
            }
            if dict.keys.contains("ScheduleType") {
                self.scheduleType = dict["ScheduleType"] as! String
            }
            if dict.keys.contains("SearchText") {
                self.searchText = dict["SearchText"] as! String
            }
            if dict.keys.contains("SubBizTypeList") {
                self.subBizTypeList = dict["SubBizTypeList"] as! [String]
            }
        }
    }
    public var env: String?

    public var listQuery: ListInstancesRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("ListQuery") {
            var model = ListInstancesRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListInstancesShrinkRequest : Tea.TeaModel {
    public var env: String?

    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class PageResult : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class NodeInfo : Tea.TeaModel {
                public class Creator : Tea.TeaModel {
                    public var id: String?

                    public var name: String?

                    public override init() {
                        super.init()
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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public class Modifier : Tea.TeaModel {
                    public var id: String?

                    public var name: String?

                    public override init() {
                        super.init()
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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public class OwnerList : Tea.TeaModel {
                    public var id: String?

                    public var name: String?

                    public override init() {
                        super.init()
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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var bizUnitName: String?

                public var createTime: String?

                public var creator: ListInstancesResponseBody.PageResult.Data.NodeInfo.Creator?

                public var description_: String?

                public var dryRun: Bool?

                public var from: String?

                public var hasDev: Bool?

                public var hasProd: Bool?

                public var id: String?

                public var lastModifiedTime: String?

                public var modifier: ListInstancesResponseBody.PageResult.Data.NodeInfo.Modifier?

                public var name: String?

                public var ownerList: [ListInstancesResponseBody.PageResult.Data.NodeInfo.OwnerList]?

                public var priorityList: [String]?

                public var resourceGroupList: [String]?

                public var schedulePaused: Bool?

                public var schedulePeriodList: [String]?

                public var subDetailType: String?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.creator?.validate()
                    try self.modifier?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bizUnitName != nil {
                        map["BizUnitName"] = self.bizUnitName!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.creator != nil {
                        map["Creator"] = self.creator?.toMap()
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.dryRun != nil {
                        map["DryRun"] = self.dryRun!
                    }
                    if self.from != nil {
                        map["From"] = self.from!
                    }
                    if self.hasDev != nil {
                        map["HasDev"] = self.hasDev!
                    }
                    if self.hasProd != nil {
                        map["HasProd"] = self.hasProd!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.lastModifiedTime != nil {
                        map["LastModifiedTime"] = self.lastModifiedTime!
                    }
                    if self.modifier != nil {
                        map["Modifier"] = self.modifier?.toMap()
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ownerList != nil {
                        var tmp : [Any] = []
                        for k in self.ownerList! {
                            tmp.append(k.toMap())
                        }
                        map["OwnerList"] = tmp
                    }
                    if self.priorityList != nil {
                        map["PriorityList"] = self.priorityList!
                    }
                    if self.resourceGroupList != nil {
                        map["ResourceGroupList"] = self.resourceGroupList!
                    }
                    if self.schedulePaused != nil {
                        map["SchedulePaused"] = self.schedulePaused!
                    }
                    if self.schedulePeriodList != nil {
                        map["SchedulePeriodList"] = self.schedulePeriodList!
                    }
                    if self.subDetailType != nil {
                        map["SubDetailType"] = self.subDetailType!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BizUnitName") {
                        self.bizUnitName = dict["BizUnitName"] as! String
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Creator") {
                        var model = ListInstancesResponseBody.PageResult.Data.NodeInfo.Creator()
                        model.fromMap(dict["Creator"] as! [String: Any])
                        self.creator = model
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("DryRun") {
                        self.dryRun = dict["DryRun"] as! Bool
                    }
                    if dict.keys.contains("From") {
                        self.from = dict["From"] as! String
                    }
                    if dict.keys.contains("HasDev") {
                        self.hasDev = dict["HasDev"] as! Bool
                    }
                    if dict.keys.contains("HasProd") {
                        self.hasProd = dict["HasProd"] as! Bool
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("LastModifiedTime") {
                        self.lastModifiedTime = dict["LastModifiedTime"] as! String
                    }
                    if dict.keys.contains("Modifier") {
                        var model = ListInstancesResponseBody.PageResult.Data.NodeInfo.Modifier()
                        model.fromMap(dict["Modifier"] as! [String: Any])
                        self.modifier = model
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OwnerList") {
                        var tmp : [ListInstancesResponseBody.PageResult.Data.NodeInfo.OwnerList] = []
                        for v in dict["OwnerList"] as! [Any] {
                            var model = ListInstancesResponseBody.PageResult.Data.NodeInfo.OwnerList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.ownerList = tmp
                    }
                    if dict.keys.contains("PriorityList") {
                        self.priorityList = dict["PriorityList"] as! [String]
                    }
                    if dict.keys.contains("ResourceGroupList") {
                        self.resourceGroupList = dict["ResourceGroupList"] as! [String]
                    }
                    if dict.keys.contains("SchedulePaused") {
                        self.schedulePaused = dict["SchedulePaused"] as! Bool
                    }
                    if dict.keys.contains("SchedulePeriodList") {
                        self.schedulePeriodList = dict["SchedulePeriodList"] as! [String]
                    }
                    if dict.keys.contains("SubDetailType") {
                        self.subDetailType = dict["SubDetailType"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var bizDate: String?

            public var dueTime: String?

            public var duration: String?

            public var endExecuteTime: Int64?

            public var extendInfo: String?

            public var id: String?

            public var index: Int32?

            public var nodeInfo: ListInstancesResponseBody.PageResult.Data.NodeInfo?

            public var startExecuteTime: Int64?

            public var statusList: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.nodeInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizDate != nil {
                    map["BizDate"] = self.bizDate!
                }
                if self.dueTime != nil {
                    map["DueTime"] = self.dueTime!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.endExecuteTime != nil {
                    map["EndExecuteTime"] = self.endExecuteTime!
                }
                if self.extendInfo != nil {
                    map["ExtendInfo"] = self.extendInfo!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.nodeInfo != nil {
                    map["NodeInfo"] = self.nodeInfo?.toMap()
                }
                if self.startExecuteTime != nil {
                    map["StartExecuteTime"] = self.startExecuteTime!
                }
                if self.statusList != nil {
                    map["StatusList"] = self.statusList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizDate") {
                    self.bizDate = dict["BizDate"] as! String
                }
                if dict.keys.contains("DueTime") {
                    self.dueTime = dict["DueTime"] as! String
                }
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! String
                }
                if dict.keys.contains("EndExecuteTime") {
                    self.endExecuteTime = dict["EndExecuteTime"] as! Int64
                }
                if dict.keys.contains("ExtendInfo") {
                    self.extendInfo = dict["ExtendInfo"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Index") {
                    self.index = dict["Index"] as! Int32
                }
                if dict.keys.contains("NodeInfo") {
                    var model = ListInstancesResponseBody.PageResult.Data.NodeInfo()
                    model.fromMap(dict["NodeInfo"] as! [String: Any])
                    self.nodeInfo = model
                }
                if dict.keys.contains("StartExecuteTime") {
                    self.startExecuteTime = dict["StartExecuteTime"] as! Int64
                }
                if dict.keys.contains("StatusList") {
                    self.statusList = dict["StatusList"] as! [String]
                }
            }
        }
        public var data: [ListInstancesResponseBody.PageResult.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [ListInstancesResponseBody.PageResult.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = ListInstancesResponseBody.PageResult.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageResult: ListInstancesResponseBody.PageResult?

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
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageResult") {
            var model = ListInstancesResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeDownStreamRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public class FilterList : Tea.TeaModel {
            public var exclude: Bool?

            public var key: String?

            public var valueList: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exclude != nil {
                    map["Exclude"] = self.exclude!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.valueList != nil {
                    map["ValueList"] = self.valueList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Exclude") {
                    self.exclude = dict["Exclude"] as! Bool
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("ValueList") {
                    self.valueList = dict["ValueList"] as! [String]
                }
            }
        }
        public class NodeIdList : Tea.TeaModel {
            public var fieldIdList: [String]?

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
                if self.fieldIdList != nil {
                    map["FieldIdList"] = self.fieldIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldIdList") {
                    self.fieldIdList = dict["FieldIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
            }
        }
        public var downStreamDepth: Int32?

        public var filterList: [ListNodeDownStreamRequest.ListQuery.FilterList]?

        public var nodeIdList: [ListNodeDownStreamRequest.ListQuery.NodeIdList]?

        public var projectId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downStreamDepth != nil {
                map["DownStreamDepth"] = self.downStreamDepth!
            }
            if self.filterList != nil {
                var tmp : [Any] = []
                for k in self.filterList! {
                    tmp.append(k.toMap())
                }
                map["FilterList"] = tmp
            }
            if self.nodeIdList != nil {
                var tmp : [Any] = []
                for k in self.nodeIdList! {
                    tmp.append(k.toMap())
                }
                map["NodeIdList"] = tmp
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownStreamDepth") {
                self.downStreamDepth = dict["DownStreamDepth"] as! Int32
            }
            if dict.keys.contains("FilterList") {
                var tmp : [ListNodeDownStreamRequest.ListQuery.FilterList] = []
                for v in dict["FilterList"] as! [Any] {
                    var model = ListNodeDownStreamRequest.ListQuery.FilterList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.filterList = tmp
            }
            if dict.keys.contains("NodeIdList") {
                var tmp : [ListNodeDownStreamRequest.ListQuery.NodeIdList] = []
                for v in dict["NodeIdList"] as! [Any] {
                    var model = ListNodeDownStreamRequest.ListQuery.NodeIdList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodeIdList = tmp
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
        }
    }
    public var env: String?

    public var listQuery: ListNodeDownStreamRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("ListQuery") {
            var model = ListNodeDownStreamRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListNodeDownStreamShrinkRequest : Tea.TeaModel {
    public var env: String?

    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListNodeDownStreamResponseBody : Tea.TeaModel {
    public class NodeInfoList : Tea.TeaModel {
        public var depth: Int32?

        public var fieldIdList: [String]?

        public var id: String?

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
            if self.depth != nil {
                map["Depth"] = self.depth!
            }
            if self.fieldIdList != nil {
                map["FieldIdList"] = self.fieldIdList!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Depth") {
                self.depth = dict["Depth"] as! Int32
            }
            if dict.keys.contains("FieldIdList") {
                self.fieldIdList = dict["FieldIdList"] as! [String]
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nodeInfoList: [ListNodeDownStreamResponseBody.NodeInfoList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nodeInfoList != nil {
            var tmp : [Any] = []
            for k in self.nodeInfoList! {
                tmp.append(k.toMap())
            }
            map["NodeInfoList"] = tmp
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NodeInfoList") {
            var tmp : [ListNodeDownStreamResponseBody.NodeInfoList] = []
            for v in dict["NodeInfoList"] as! [Any] {
                var model = ListNodeDownStreamResponseBody.NodeInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodeInfoList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodeDownStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeDownStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListNodeDownStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var dryRun: Bool?

        public var nodeBizType: String?

        public var nodeSubBizTypeList: [String]?

        public var ownerList: [String]?

        public var page: Int32?

        public var pageSize: Int32?

        public var priorityList: [String]?

        public var projectId: Int64?

        public var schedulePaused: Bool?

        public var schedulePeriodList: [String]?

        public var scheduleType: String?

        public var searchText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dryRun != nil {
                map["DryRun"] = self.dryRun!
            }
            if self.nodeBizType != nil {
                map["NodeBizType"] = self.nodeBizType!
            }
            if self.nodeSubBizTypeList != nil {
                map["NodeSubBizTypeList"] = self.nodeSubBizTypeList!
            }
            if self.ownerList != nil {
                map["OwnerList"] = self.ownerList!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.priorityList != nil {
                map["PriorityList"] = self.priorityList!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.schedulePaused != nil {
                map["SchedulePaused"] = self.schedulePaused!
            }
            if self.schedulePeriodList != nil {
                map["SchedulePeriodList"] = self.schedulePeriodList!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.searchText != nil {
                map["SearchText"] = self.searchText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DryRun") {
                self.dryRun = dict["DryRun"] as! Bool
            }
            if dict.keys.contains("NodeBizType") {
                self.nodeBizType = dict["NodeBizType"] as! String
            }
            if dict.keys.contains("NodeSubBizTypeList") {
                self.nodeSubBizTypeList = dict["NodeSubBizTypeList"] as! [String]
            }
            if dict.keys.contains("OwnerList") {
                self.ownerList = dict["OwnerList"] as! [String]
            }
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("PriorityList") {
                self.priorityList = dict["PriorityList"] as! [String]
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("SchedulePaused") {
                self.schedulePaused = dict["SchedulePaused"] as! Bool
            }
            if dict.keys.contains("SchedulePeriodList") {
                self.schedulePeriodList = dict["SchedulePeriodList"] as! [String]
            }
            if dict.keys.contains("ScheduleType") {
                self.scheduleType = dict["ScheduleType"] as! String
            }
            if dict.keys.contains("SearchText") {
                self.searchText = dict["SearchText"] as! String
            }
        }
    }
    public var env: String?

    public var listQuery: ListNodesRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("ListQuery") {
            var model = ListNodesRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListNodesShrinkRequest : Tea.TeaModel {
    public var env: String?

    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListNodesResponseBody : Tea.TeaModel {
    public class PageResult : Tea.TeaModel {
        public class NodeList : Tea.TeaModel {
            public class Creator : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public class Modifier : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public class OwnerList : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public class ProjectInfo : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var bizUnitName: String?

            public var createTime: String?

            public var creator: ListNodesResponseBody.PageResult.NodeList.Creator?

            public var description_: String?

            public var dryRun: Bool?

            public var extendInfo: String?

            public var from: String?

            public var hasDev: Bool?

            public var hasProd: Bool?

            public var id: String?

            public var lastModifiedTime: String?

            public var modifier: ListNodesResponseBody.PageResult.NodeList.Modifier?

            public var name: String?

            public var ownerList: [ListNodesResponseBody.PageResult.NodeList.OwnerList]?

            public var priorityList: [String]?

            public var projectInfo: ListNodesResponseBody.PageResult.NodeList.ProjectInfo?

            public var schedulePaused: Bool?

            public var schedulePeriodList: [String]?

            public var subDetailType: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.creator?.validate()
                try self.modifier?.validate()
                try self.projectInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizUnitName != nil {
                    map["BizUnitName"] = self.bizUnitName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.dryRun != nil {
                    map["DryRun"] = self.dryRun!
                }
                if self.extendInfo != nil {
                    map["ExtendInfo"] = self.extendInfo!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.hasDev != nil {
                    map["HasDev"] = self.hasDev!
                }
                if self.hasProd != nil {
                    map["HasProd"] = self.hasProd!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.lastModifiedTime != nil {
                    map["LastModifiedTime"] = self.lastModifiedTime!
                }
                if self.modifier != nil {
                    map["Modifier"] = self.modifier?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerList != nil {
                    var tmp : [Any] = []
                    for k in self.ownerList! {
                        tmp.append(k.toMap())
                    }
                    map["OwnerList"] = tmp
                }
                if self.priorityList != nil {
                    map["PriorityList"] = self.priorityList!
                }
                if self.projectInfo != nil {
                    map["ProjectInfo"] = self.projectInfo?.toMap()
                }
                if self.schedulePaused != nil {
                    map["SchedulePaused"] = self.schedulePaused!
                }
                if self.schedulePeriodList != nil {
                    map["SchedulePeriodList"] = self.schedulePeriodList!
                }
                if self.subDetailType != nil {
                    map["SubDetailType"] = self.subDetailType!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizUnitName") {
                    self.bizUnitName = dict["BizUnitName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Creator") {
                    var model = ListNodesResponseBody.PageResult.NodeList.Creator()
                    model.fromMap(dict["Creator"] as! [String: Any])
                    self.creator = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DryRun") {
                    self.dryRun = dict["DryRun"] as! Bool
                }
                if dict.keys.contains("ExtendInfo") {
                    self.extendInfo = dict["ExtendInfo"] as! String
                }
                if dict.keys.contains("From") {
                    self.from = dict["From"] as! String
                }
                if dict.keys.contains("HasDev") {
                    self.hasDev = dict["HasDev"] as! Bool
                }
                if dict.keys.contains("HasProd") {
                    self.hasProd = dict["HasProd"] as! Bool
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LastModifiedTime") {
                    self.lastModifiedTime = dict["LastModifiedTime"] as! String
                }
                if dict.keys.contains("Modifier") {
                    var model = ListNodesResponseBody.PageResult.NodeList.Modifier()
                    model.fromMap(dict["Modifier"] as! [String: Any])
                    self.modifier = model
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerList") {
                    var tmp : [ListNodesResponseBody.PageResult.NodeList.OwnerList] = []
                    for v in dict["OwnerList"] as! [Any] {
                        var model = ListNodesResponseBody.PageResult.NodeList.OwnerList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ownerList = tmp
                }
                if dict.keys.contains("PriorityList") {
                    self.priorityList = dict["PriorityList"] as! [String]
                }
                if dict.keys.contains("ProjectInfo") {
                    var model = ListNodesResponseBody.PageResult.NodeList.ProjectInfo()
                    model.fromMap(dict["ProjectInfo"] as! [String: Any])
                    self.projectInfo = model
                }
                if dict.keys.contains("SchedulePaused") {
                    self.schedulePaused = dict["SchedulePaused"] as! Bool
                }
                if dict.keys.contains("SchedulePeriodList") {
                    self.schedulePeriodList = dict["SchedulePeriodList"] as! [String]
                }
                if dict.keys.contains("SubDetailType") {
                    self.subDetailType = dict["SubDetailType"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var nodeList: [ListNodesResponseBody.PageResult.NodeList]?

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
            if self.nodeList != nil {
                var tmp : [Any] = []
                for k in self.nodeList! {
                    tmp.append(k.toMap())
                }
                map["NodeList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeList") {
                var tmp : [ListNodesResponseBody.PageResult.NodeList] = []
                for v in dict["NodeList"] as! [Any] {
                    var model = ListNodesResponseBody.PageResult.NodeList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodeList = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageResult: ListNodesResponseBody.PageResult?

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
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageResult") {
            var model = ListNodesResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcePermissionOperationLogRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var searchText: String?

        public var tabType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.searchText != nil {
                map["SearchText"] = self.searchText!
            }
            if self.tabType != nil {
                map["TabType"] = self.tabType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("SearchText") {
                self.searchText = dict["SearchText"] as! String
            }
            if dict.keys.contains("TabType") {
                self.tabType = dict["TabType"] as! String
            }
        }
    }
    public var listQuery: ListResourcePermissionOperationLogRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            var model = ListResourcePermissionOperationLogRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListResourcePermissionOperationLogShrinkRequest : Tea.TeaModel {
    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListResourcePermissionOperationLogResponseBody : Tea.TeaModel {
    public class PageResult : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Account : Tea.TeaModel {
                public var id: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Period : Tea.TeaModel {
                public var endTime: String?

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
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class ResourceInfo : Tea.TeaModel {
                public class BizUnitInfo : Tea.TeaModel {
                    public var displayName: String?

                    public var env: String?

                    public var id: String?

                    public var name: String?

                    public override init() {
                        super.init()
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
                        if self.env != nil {
                            map["Env"] = self.env!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DisplayName") {
                            self.displayName = dict["DisplayName"] as! String
                        }
                        if dict.keys.contains("Env") {
                            self.env = dict["Env"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public class ProjectInfo : Tea.TeaModel {
                    public var displayName: String?

                    public var env: String?

                    public var id: Int64?

                    public var name: String?

                    public override init() {
                        super.init()
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
                        if self.env != nil {
                            map["Env"] = self.env!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DisplayName") {
                            self.displayName = dict["DisplayName"] as! String
                        }
                        if dict.keys.contains("Env") {
                            self.env = dict["Env"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var bizUnitInfo: ListResourcePermissionOperationLogResponseBody.PageResult.Data.ResourceInfo.BizUnitInfo?

                public var displayName: String?

                public var env: String?

                public var id: String?

                public var name: String?

                public var projectInfo: ListResourcePermissionOperationLogResponseBody.PageResult.Data.ResourceInfo.ProjectInfo?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.bizUnitInfo?.validate()
                    try self.projectInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bizUnitInfo != nil {
                        map["BizUnitInfo"] = self.bizUnitInfo?.toMap()
                    }
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.env != nil {
                        map["Env"] = self.env!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.projectInfo != nil {
                        map["ProjectInfo"] = self.projectInfo?.toMap()
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BizUnitInfo") {
                        var model = ListResourcePermissionOperationLogResponseBody.PageResult.Data.ResourceInfo.BizUnitInfo()
                        model.fromMap(dict["BizUnitInfo"] as! [String: Any])
                        self.bizUnitInfo = model
                    }
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("Env") {
                        self.env = dict["Env"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("ProjectInfo") {
                        var model = ListResourcePermissionOperationLogResponseBody.PageResult.Data.ResourceInfo.ProjectInfo()
                        model.fromMap(dict["ProjectInfo"] as! [String: Any])
                        self.projectInfo = model
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class TargetAccount : Tea.TeaModel {
                public var id: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var account: ListResourcePermissionOperationLogResponseBody.PageResult.Data.Account?

            public var authScope: String?

            public var operateId: Int64?

            public var operateTime: Int64?

            public var operateType: String?

            public var period: ListResourcePermissionOperationLogResponseBody.PageResult.Data.Period?

            public var reason: String?

            public var resourceInfo: ListResourcePermissionOperationLogResponseBody.PageResult.Data.ResourceInfo?

            public var targetAccount: ListResourcePermissionOperationLogResponseBody.PageResult.Data.TargetAccount?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.account?.validate()
                try self.period?.validate()
                try self.resourceInfo?.validate()
                try self.targetAccount?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.account != nil {
                    map["Account"] = self.account?.toMap()
                }
                if self.authScope != nil {
                    map["AuthScope"] = self.authScope!
                }
                if self.operateId != nil {
                    map["OperateId"] = self.operateId!
                }
                if self.operateTime != nil {
                    map["OperateTime"] = self.operateTime!
                }
                if self.operateType != nil {
                    map["OperateType"] = self.operateType!
                }
                if self.period != nil {
                    map["Period"] = self.period?.toMap()
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.resourceInfo != nil {
                    map["ResourceInfo"] = self.resourceInfo?.toMap()
                }
                if self.targetAccount != nil {
                    map["TargetAccount"] = self.targetAccount?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Account") {
                    var model = ListResourcePermissionOperationLogResponseBody.PageResult.Data.Account()
                    model.fromMap(dict["Account"] as! [String: Any])
                    self.account = model
                }
                if dict.keys.contains("AuthScope") {
                    self.authScope = dict["AuthScope"] as! String
                }
                if dict.keys.contains("OperateId") {
                    self.operateId = dict["OperateId"] as! Int64
                }
                if dict.keys.contains("OperateTime") {
                    self.operateTime = dict["OperateTime"] as! Int64
                }
                if dict.keys.contains("OperateType") {
                    self.operateType = dict["OperateType"] as! String
                }
                if dict.keys.contains("Period") {
                    var model = ListResourcePermissionOperationLogResponseBody.PageResult.Data.Period()
                    model.fromMap(dict["Period"] as! [String: Any])
                    self.period = model
                }
                if dict.keys.contains("Reason") {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("ResourceInfo") {
                    var model = ListResourcePermissionOperationLogResponseBody.PageResult.Data.ResourceInfo()
                    model.fromMap(dict["ResourceInfo"] as! [String: Any])
                    self.resourceInfo = model
                }
                if dict.keys.contains("TargetAccount") {
                    var model = ListResourcePermissionOperationLogResponseBody.PageResult.Data.TargetAccount()
                    model.fromMap(dict["TargetAccount"] as! [String: Any])
                    self.targetAccount = model
                }
            }
        }
        public var data: [ListResourcePermissionOperationLogResponseBody.PageResult.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [ListResourcePermissionOperationLogResponseBody.PageResult.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = ListResourcePermissionOperationLogResponseBody.PageResult.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageResult: ListResourcePermissionOperationLogResponseBody.PageResult?

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
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageResult") {
            var model = ListResourcePermissionOperationLogResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListResourcePermissionOperationLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcePermissionOperationLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListResourcePermissionOperationLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcePermissionsRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var searchText: String?

        public var tabType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.searchText != nil {
                map["SearchText"] = self.searchText!
            }
            if self.tabType != nil {
                map["TabType"] = self.tabType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("SearchText") {
                self.searchText = dict["SearchText"] as! String
            }
            if dict.keys.contains("TabType") {
                self.tabType = dict["TabType"] as! String
            }
        }
    }
    public var listQuery: ListResourcePermissionsRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            var model = ListResourcePermissionsRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListResourcePermissionsShrinkRequest : Tea.TeaModel {
    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListResourcePermissionsResponseBody : Tea.TeaModel {
    public class PageResult : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Period : Tea.TeaModel {
                public var endTime: String?

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
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class PermissionPeriodList : Tea.TeaModel {
                public class Period : Tea.TeaModel {
                    public var endTime: String?

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
                        if self.endTime != nil {
                            map["EndTime"] = self.endTime!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EndTime") {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var period: ListResourcePermissionsResponseBody.PageResult.Data.PermissionPeriodList.Period?

                public var permissionType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.period?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.period != nil {
                        map["Period"] = self.period?.toMap()
                    }
                    if self.permissionType != nil {
                        map["PermissionType"] = self.permissionType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Period") {
                        var model = ListResourcePermissionsResponseBody.PageResult.Data.PermissionPeriodList.Period()
                        model.fromMap(dict["Period"] as! [String: Any])
                        self.period = model
                    }
                    if dict.keys.contains("PermissionType") {
                        self.permissionType = dict["PermissionType"] as! String
                    }
                }
            }
            public class ResourceInfo : Tea.TeaModel {
                public class BizUnitInfo : Tea.TeaModel {
                    public var displayName: String?

                    public var env: String?

                    public var id: String?

                    public var name: String?

                    public override init() {
                        super.init()
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
                        if self.env != nil {
                            map["Env"] = self.env!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DisplayName") {
                            self.displayName = dict["DisplayName"] as! String
                        }
                        if dict.keys.contains("Env") {
                            self.env = dict["Env"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public class ProjectInfo : Tea.TeaModel {
                    public var displayName: String?

                    public var env: String?

                    public var id: Int64?

                    public var name: String?

                    public override init() {
                        super.init()
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
                        if self.env != nil {
                            map["Env"] = self.env!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DisplayName") {
                            self.displayName = dict["DisplayName"] as! String
                        }
                        if dict.keys.contains("Env") {
                            self.env = dict["Env"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var bizUnitInfo: ListResourcePermissionsResponseBody.PageResult.Data.ResourceInfo.BizUnitInfo?

                public var displayName: String?

                public var env: String?

                public var id: String?

                public var name: String?

                public var projectInfo: ListResourcePermissionsResponseBody.PageResult.Data.ResourceInfo.ProjectInfo?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.bizUnitInfo?.validate()
                    try self.projectInfo?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bizUnitInfo != nil {
                        map["BizUnitInfo"] = self.bizUnitInfo?.toMap()
                    }
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.env != nil {
                        map["Env"] = self.env!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.projectInfo != nil {
                        map["ProjectInfo"] = self.projectInfo?.toMap()
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BizUnitInfo") {
                        var model = ListResourcePermissionsResponseBody.PageResult.Data.ResourceInfo.BizUnitInfo()
                        model.fromMap(dict["BizUnitInfo"] as! [String: Any])
                        self.bizUnitInfo = model
                    }
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("Env") {
                        self.env = dict["Env"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("ProjectInfo") {
                        var model = ListResourcePermissionsResponseBody.PageResult.Data.ResourceInfo.ProjectInfo()
                        model.fromMap(dict["ProjectInfo"] as! [String: Any])
                        self.projectInfo = model
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class TargetAccount : Tea.TeaModel {
                public var id: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var authScope: String?

            public var period: ListResourcePermissionsResponseBody.PageResult.Data.Period?

            public var permissionPeriodList: [ListResourcePermissionsResponseBody.PageResult.Data.PermissionPeriodList]?

            public var recordId: String?

            public var resourceInfo: ListResourcePermissionsResponseBody.PageResult.Data.ResourceInfo?

            public var targetAccount: ListResourcePermissionsResponseBody.PageResult.Data.TargetAccount?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.period?.validate()
                try self.resourceInfo?.validate()
                try self.targetAccount?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authScope != nil {
                    map["AuthScope"] = self.authScope!
                }
                if self.period != nil {
                    map["Period"] = self.period?.toMap()
                }
                if self.permissionPeriodList != nil {
                    var tmp : [Any] = []
                    for k in self.permissionPeriodList! {
                        tmp.append(k.toMap())
                    }
                    map["PermissionPeriodList"] = tmp
                }
                if self.recordId != nil {
                    map["RecordId"] = self.recordId!
                }
                if self.resourceInfo != nil {
                    map["ResourceInfo"] = self.resourceInfo?.toMap()
                }
                if self.targetAccount != nil {
                    map["TargetAccount"] = self.targetAccount?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthScope") {
                    self.authScope = dict["AuthScope"] as! String
                }
                if dict.keys.contains("Period") {
                    var model = ListResourcePermissionsResponseBody.PageResult.Data.Period()
                    model.fromMap(dict["Period"] as! [String: Any])
                    self.period = model
                }
                if dict.keys.contains("PermissionPeriodList") {
                    var tmp : [ListResourcePermissionsResponseBody.PageResult.Data.PermissionPeriodList] = []
                    for v in dict["PermissionPeriodList"] as! [Any] {
                        var model = ListResourcePermissionsResponseBody.PageResult.Data.PermissionPeriodList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.permissionPeriodList = tmp
                }
                if dict.keys.contains("RecordId") {
                    self.recordId = dict["RecordId"] as! String
                }
                if dict.keys.contains("ResourceInfo") {
                    var model = ListResourcePermissionsResponseBody.PageResult.Data.ResourceInfo()
                    model.fromMap(dict["ResourceInfo"] as! [String: Any])
                    self.resourceInfo = model
                }
                if dict.keys.contains("TargetAccount") {
                    var model = ListResourcePermissionsResponseBody.PageResult.Data.TargetAccount()
                    model.fromMap(dict["TargetAccount"] as! [String: Any])
                    self.targetAccount = model
                }
            }
        }
        public var data: [ListResourcePermissionsResponseBody.PageResult.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [ListResourcePermissionsResponseBody.PageResult.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = ListResourcePermissionsResponseBody.PageResult.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageResult: ListResourcePermissionsResponseBody.PageResult?

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
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageResult") {
            var model = ListResourcePermissionsResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListResourcePermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcePermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListResourcePermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTenantMembersRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var roleList: [String]?

        public var searchText: String?

        public var userGroupIdList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.roleList != nil {
                map["RoleList"] = self.roleList!
            }
            if self.searchText != nil {
                map["SearchText"] = self.searchText!
            }
            if self.userGroupIdList != nil {
                map["UserGroupIdList"] = self.userGroupIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("RoleList") {
                self.roleList = dict["RoleList"] as! [String]
            }
            if dict.keys.contains("SearchText") {
                self.searchText = dict["SearchText"] as! String
            }
            if dict.keys.contains("UserGroupIdList") {
                self.userGroupIdList = dict["UserGroupIdList"] as! [String]
            }
        }
    }
    public var listQuery: ListTenantMembersRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            var model = ListTenantMembersRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListTenantMembersShrinkRequest : Tea.TeaModel {
    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListTenantMembersResponseBody : Tea.TeaModel {
    public class PageResult : Tea.TeaModel {
        public class UserList : Tea.TeaModel {
            public class UserGroupList : Tea.TeaModel {
                public var active: Bool?

                public var description_: String?

                public var id: String?

                public var name: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.active != nil {
                        map["Active"] = self.active!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Active") {
                        self.active = dict["Active"] as! Bool
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var accountName: String?

            public var dingNumber: String?

            public var displayName: String?

            public var displayNameWithoutStatus: String?

            public var enableWhiteIp: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: String?

            public var mail: String?

            public var mobilePhone: String?

            public var name: String?

            public var nickName: String?

            public var realName: String?

            public var roleList: [String]?

            public var sourceId: String?

            public var sourceType: String?

            public var userGroupList: [ListTenantMembersResponseBody.PageResult.UserList.UserGroupList]?

            public var whiteIp: String?

            public override init() {
                super.init()
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
                if self.dingNumber != nil {
                    map["DingNumber"] = self.dingNumber!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.displayNameWithoutStatus != nil {
                    map["DisplayNameWithoutStatus"] = self.displayNameWithoutStatus!
                }
                if self.enableWhiteIp != nil {
                    map["EnableWhiteIp"] = self.enableWhiteIp!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.mail != nil {
                    map["Mail"] = self.mail!
                }
                if self.mobilePhone != nil {
                    map["MobilePhone"] = self.mobilePhone!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.realName != nil {
                    map["RealName"] = self.realName!
                }
                if self.roleList != nil {
                    map["RoleList"] = self.roleList!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.userGroupList != nil {
                    var tmp : [Any] = []
                    for k in self.userGroupList! {
                        tmp.append(k.toMap())
                    }
                    map["UserGroupList"] = tmp
                }
                if self.whiteIp != nil {
                    map["WhiteIp"] = self.whiteIp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("DingNumber") {
                    self.dingNumber = dict["DingNumber"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("DisplayNameWithoutStatus") {
                    self.displayNameWithoutStatus = dict["DisplayNameWithoutStatus"] as! String
                }
                if dict.keys.contains("EnableWhiteIp") {
                    self.enableWhiteIp = dict["EnableWhiteIp"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Mail") {
                    self.mail = dict["Mail"] as! String
                }
                if dict.keys.contains("MobilePhone") {
                    self.mobilePhone = dict["MobilePhone"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("RealName") {
                    self.realName = dict["RealName"] as! String
                }
                if dict.keys.contains("RoleList") {
                    self.roleList = dict["RoleList"] as! [String]
                }
                if dict.keys.contains("SourceId") {
                    self.sourceId = dict["SourceId"] as! String
                }
                if dict.keys.contains("SourceType") {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("UserGroupList") {
                    var tmp : [ListTenantMembersResponseBody.PageResult.UserList.UserGroupList] = []
                    for v in dict["UserGroupList"] as! [Any] {
                        var model = ListTenantMembersResponseBody.PageResult.UserList.UserGroupList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.userGroupList = tmp
                }
                if dict.keys.contains("WhiteIp") {
                    self.whiteIp = dict["WhiteIp"] as! String
                }
            }
        }
        public var totalCount: Int32?

        public var userList: [ListTenantMembersResponseBody.PageResult.UserList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.userList != nil {
                var tmp : [Any] = []
                for k in self.userList! {
                    tmp.append(k.toMap())
                }
                map["UserList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("UserList") {
                var tmp : [ListTenantMembersResponseBody.PageResult.UserList] = []
                for v in dict["UserList"] as! [Any] {
                    var model = ListTenantMembersResponseBody.PageResult.UserList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userList = tmp
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageResult: ListTenantMembersResponseBody.PageResult?

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
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageResult") {
            var model = ListTenantMembersResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListTenantMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTenantMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTenantMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserGroupMembersRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var keyword: String?

        public var pageNo: Int32?

        public var pageSize: Int32?

        public var userGroupId: String?

        public var userIdList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keyword != nil {
                map["Keyword"] = self.keyword!
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            if self.userIdList != nil {
                map["UserIdList"] = self.userIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Keyword") {
                self.keyword = dict["Keyword"] as! String
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("UserGroupId") {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserIdList") {
                self.userIdList = dict["UserIdList"] as! [String]
            }
        }
    }
    public var listQuery: ListUserGroupMembersRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            var model = ListUserGroupMembersRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListUserGroupMembersShrinkRequest : Tea.TeaModel {
    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListUserGroupMembersResponseBody : Tea.TeaModel {
    public class PageResult : Tea.TeaModel {
        public class MemberList : Tea.TeaModel {
            public class Creator : Tea.TeaModel {
                public var accountName: String?

                public var displayName: String?

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
                    if self.accountName != nil {
                        map["AccountName"] = self.accountName!
                    }
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccountName") {
                        self.accountName = dict["AccountName"] as! String
                    }
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                }
            }
            public class UserInfo : Tea.TeaModel {
                public var accountName: String?

                public var displayName: String?

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
                    if self.accountName != nil {
                        map["AccountName"] = self.accountName!
                    }
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccountName") {
                        self.accountName = dict["AccountName"] as! String
                    }
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                }
            }
            public var creator: ListUserGroupMembersResponseBody.PageResult.MemberList.Creator?

            public var gmtCreate: Int64?

            public var id: String?

            public var userGroupId: String?

            public var userInfo: ListUserGroupMembersResponseBody.PageResult.MemberList.UserInfo?

            public var userRole: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.creator?.validate()
                try self.userInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creator != nil {
                    map["Creator"] = self.creator?.toMap()
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.userGroupId != nil {
                    map["UserGroupId"] = self.userGroupId!
                }
                if self.userInfo != nil {
                    map["UserInfo"] = self.userInfo?.toMap()
                }
                if self.userRole != nil {
                    map["UserRole"] = self.userRole!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Creator") {
                    var model = ListUserGroupMembersResponseBody.PageResult.MemberList.Creator()
                    model.fromMap(dict["Creator"] as! [String: Any])
                    self.creator = model
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("UserGroupId") {
                    self.userGroupId = dict["UserGroupId"] as! String
                }
                if dict.keys.contains("UserInfo") {
                    var model = ListUserGroupMembersResponseBody.PageResult.MemberList.UserInfo()
                    model.fromMap(dict["UserInfo"] as! [String: Any])
                    self.userInfo = model
                }
                if dict.keys.contains("UserRole") {
                    self.userRole = dict["UserRole"] as! String
                }
            }
        }
        public var memberList: [ListUserGroupMembersResponseBody.PageResult.MemberList]?

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
            if self.memberList != nil {
                var tmp : [Any] = []
                for k in self.memberList! {
                    tmp.append(k.toMap())
                }
                map["MemberList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberList") {
                var tmp : [ListUserGroupMembersResponseBody.PageResult.MemberList] = []
                for v in dict["MemberList"] as! [Any] {
                    var model = ListUserGroupMembersResponseBody.PageResult.MemberList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.memberList = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageResult: ListUserGroupMembersResponseBody.PageResult?

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
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageResult") {
            var model = ListUserGroupMembersResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListUserGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserGroupMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUserGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserGroupsRequest : Tea.TeaModel {
    public class ListQuery : Tea.TeaModel {
        public var active: Bool?

        public var adminIdList: [String]?

        public var filterMine: Bool?

        public var keyword: String?

        public var pageNo: Int32?

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
            if self.active != nil {
                map["Active"] = self.active!
            }
            if self.adminIdList != nil {
                map["AdminIdList"] = self.adminIdList!
            }
            if self.filterMine != nil {
                map["FilterMine"] = self.filterMine!
            }
            if self.keyword != nil {
                map["Keyword"] = self.keyword!
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Active") {
                self.active = dict["Active"] as! Bool
            }
            if dict.keys.contains("AdminIdList") {
                self.adminIdList = dict["AdminIdList"] as! [String]
            }
            if dict.keys.contains("FilterMine") {
                self.filterMine = dict["FilterMine"] as! Bool
            }
            if dict.keys.contains("Keyword") {
                self.keyword = dict["Keyword"] as! String
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
        }
    }
    public var listQuery: ListUserGroupsRequest.ListQuery?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQuery != nil {
            map["ListQuery"] = self.listQuery?.toMap()
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            var model = ListUserGroupsRequest.ListQuery()
            model.fromMap(dict["ListQuery"] as! [String: Any])
            self.listQuery = model
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListUserGroupsShrinkRequest : Tea.TeaModel {
    public var listQueryShrink: String?

    public var opTenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listQueryShrink != nil {
            map["ListQuery"] = self.listQueryShrink!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListQuery") {
            self.listQueryShrink = dict["ListQuery"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
    }
}

public class ListUserGroupsResponseBody : Tea.TeaModel {
    public class PageResult : Tea.TeaModel {
        public class UserGroupList : Tea.TeaModel {
            public class AdminList : Tea.TeaModel {
                public var accountName: String?

                public var displayName: String?

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
                    if self.accountName != nil {
                        map["AccountName"] = self.accountName!
                    }
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccountName") {
                        self.accountName = dict["AccountName"] as! String
                    }
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                }
            }
            public var active: Bool?

            public var adminList: [ListUserGroupsResponseBody.PageResult.UserGroupList.AdminList]?

            public var description_: String?

            public var id: String?

            public var myRole: String?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.active != nil {
                    map["Active"] = self.active!
                }
                if self.adminList != nil {
                    var tmp : [Any] = []
                    for k in self.adminList! {
                        tmp.append(k.toMap())
                    }
                    map["AdminList"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.myRole != nil {
                    map["MyRole"] = self.myRole!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Active") {
                    self.active = dict["Active"] as! Bool
                }
                if dict.keys.contains("AdminList") {
                    var tmp : [ListUserGroupsResponseBody.PageResult.UserGroupList.AdminList] = []
                    for v in dict["AdminList"] as! [Any] {
                        var model = ListUserGroupsResponseBody.PageResult.UserGroupList.AdminList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.adminList = tmp
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("MyRole") {
                    self.myRole = dict["MyRole"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var totalCount: Int32?

        public var userGroupList: [ListUserGroupsResponseBody.PageResult.UserGroupList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.userGroupList != nil {
                var tmp : [Any] = []
                for k in self.userGroupList! {
                    tmp.append(k.toMap())
                }
                map["UserGroupList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("UserGroupList") {
                var tmp : [ListUserGroupsResponseBody.PageResult.UserGroupList] = []
                for v in dict["UserGroupList"] as! [Any] {
                    var model = ListUserGroupsResponseBody.PageResult.UserGroupList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userGroupList = tmp
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageResult: ListUserGroupsResponseBody.PageResult?

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
        try self.pageResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageResult != nil {
            map["PageResult"] = self.pageResult?.toMap()
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageResult") {
            var model = ListUserGroupsResponseBody.PageResult()
            model.fromMap(dict["PageResult"] as! [String: Any])
            self.pageResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUserGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OperateInstanceRequest : Tea.TeaModel {
    public class OperateCommand : Tea.TeaModel {
        public class InstanceIdList : Tea.TeaModel {
            public var fieldInstanceIdList: [String]?

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
                if self.fieldInstanceIdList != nil {
                    map["FieldInstanceIdList"] = self.fieldInstanceIdList!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldInstanceIdList") {
                    self.fieldInstanceIdList = dict["FieldInstanceIdList"] as! [String]
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
            }
        }
        public var instanceIdList: [OperateInstanceRequest.OperateCommand.InstanceIdList]?

        public var operation: String?

        public var projectId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceIdList != nil {
                var tmp : [Any] = []
                for k in self.instanceIdList! {
                    tmp.append(k.toMap())
                }
                map["InstanceIdList"] = tmp
            }
            if self.operation != nil {
                map["Operation"] = self.operation!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceIdList") {
                var tmp : [OperateInstanceRequest.OperateCommand.InstanceIdList] = []
                for v in dict["InstanceIdList"] as! [Any] {
                    var model = OperateInstanceRequest.OperateCommand.InstanceIdList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceIdList = tmp
            }
            if dict.keys.contains("Operation") {
                self.operation = dict["Operation"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
        }
    }
    public var env: String?

    public var opTenantId: Int64?

    public var operateCommand: OperateInstanceRequest.OperateCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operateCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.operateCommand != nil {
            map["OperateCommand"] = self.operateCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("OperateCommand") {
            var model = OperateInstanceRequest.OperateCommand()
            model.fromMap(dict["OperateCommand"] as! [String: Any])
            self.operateCommand = model
        }
    }
}

public class OperateInstanceShrinkRequest : Tea.TeaModel {
    public var env: String?

    public var opTenantId: Int64?

    public var operateCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.operateCommandShrink != nil {
            map["OperateCommand"] = self.operateCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("OperateCommand") {
            self.operateCommandShrink = dict["OperateCommand"] as! String
        }
    }
}

public class OperateInstanceResponseBody : Tea.TeaModel {
    public class InstanceStatusList : Tea.TeaModel {
        public var displayName: String?

        public var errorMessage: String?

        public var id: String?

        public var name: String?

        public var ownerId: String?

        public var ownerName: String?

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
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var instanceStatusList: [OperateInstanceResponseBody.InstanceStatusList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instanceStatusList != nil {
            var tmp : [Any] = []
            for k in self.instanceStatusList! {
                tmp.append(k.toMap())
            }
            map["InstanceStatusList"] = tmp
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("InstanceStatusList") {
            var tmp : [OperateInstanceResponseBody.InstanceStatusList] = []
            for v in dict["InstanceStatusList"] as! [Any] {
                var model = OperateInstanceResponseBody.InstanceStatusList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceStatusList = tmp
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

public class OperateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = OperateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PausePhysicalNodeRequest : Tea.TeaModel {
    public class PauseCommand : Tea.TeaModel {
        public var nodeIdList: [String]?

        public var projectId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeIdList != nil {
                map["NodeIdList"] = self.nodeIdList!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeIdList") {
                self.nodeIdList = dict["NodeIdList"] as! [String]
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
        }
    }
    public var env: String?

    public var opTenantId: Int64?

    public var pauseCommand: PausePhysicalNodeRequest.PauseCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pauseCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.pauseCommand != nil {
            map["PauseCommand"] = self.pauseCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("PauseCommand") {
            var model = PausePhysicalNodeRequest.PauseCommand()
            model.fromMap(dict["PauseCommand"] as! [String: Any])
            self.pauseCommand = model
        }
    }
}

public class PausePhysicalNodeShrinkRequest : Tea.TeaModel {
    public var env: String?

    public var opTenantId: Int64?

    public var pauseCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.pauseCommandShrink != nil {
            map["PauseCommand"] = self.pauseCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("PauseCommand") {
            self.pauseCommandShrink = dict["PauseCommand"] as! String
        }
    }
}

public class PausePhysicalNodeResponseBody : Tea.TeaModel {
    public class NodeOperateResultList : Tea.TeaModel {
        public var errorMessage: String?

        public var nodeId: String?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nodeOperateResultList: [PausePhysicalNodeResponseBody.NodeOperateResultList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nodeOperateResultList != nil {
            var tmp : [Any] = []
            for k in self.nodeOperateResultList! {
                tmp.append(k.toMap())
            }
            map["NodeOperateResultList"] = tmp
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NodeOperateResultList") {
            var tmp : [PausePhysicalNodeResponseBody.NodeOperateResultList] = []
            for v in dict["NodeOperateResultList"] as! [Any] {
                var model = PausePhysicalNodeResponseBody.NodeOperateResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodeOperateResultList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PausePhysicalNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PausePhysicalNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PausePhysicalNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveTenantMemberRequest : Tea.TeaModel {
    public class RemoveCommand : Tea.TeaModel {
        public var sourceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SourceId") {
                self.sourceId = dict["SourceId"] as! String
            }
        }
    }
    public var opTenantId: Int64?

    public var removeCommand: RemoveTenantMemberRequest.RemoveCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.removeCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.removeCommand != nil {
            map["RemoveCommand"] = self.removeCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("RemoveCommand") {
            var model = RemoveTenantMemberRequest.RemoveCommand()
            model.fromMap(dict["RemoveCommand"] as! [String: Any])
            self.removeCommand = model
        }
    }
}

public class RemoveTenantMemberShrinkRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var removeCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.removeCommandShrink != nil {
            map["RemoveCommand"] = self.removeCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("RemoveCommand") {
            self.removeCommandShrink = dict["RemoveCommand"] as! String
        }
    }
}

public class RemoveTenantMemberResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class RemoveTenantMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveTenantMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveTenantMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUserGroupMemberRequest : Tea.TeaModel {
    public class RemoveCommand : Tea.TeaModel {
        public var userGroupId: String?

        public var userIdList: [String]?

        public override init() {
            super.init()
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
            if self.userIdList != nil {
                map["UserIdList"] = self.userIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserGroupId") {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserIdList") {
                self.userIdList = dict["UserIdList"] as! [String]
            }
        }
    }
    public var opTenantId: Int64?

    public var removeCommand: RemoveUserGroupMemberRequest.RemoveCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.removeCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.removeCommand != nil {
            map["RemoveCommand"] = self.removeCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("RemoveCommand") {
            var model = RemoveUserGroupMemberRequest.RemoveCommand()
            model.fromMap(dict["RemoveCommand"] as! [String: Any])
            self.removeCommand = model
        }
    }
}

public class RemoveUserGroupMemberShrinkRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var removeCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.removeCommandShrink != nil {
            map["RemoveCommand"] = self.removeCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("RemoveCommand") {
            self.removeCommandShrink = dict["RemoveCommand"] as! String
        }
    }
}

public class RemoveUserGroupMemberResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class RemoveUserGroupMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserGroupMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveUserGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumePhysicalNodeRequest : Tea.TeaModel {
    public class ResumeCommand : Tea.TeaModel {
        public var nodeIdList: [String]?

        public var projectId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeIdList != nil {
                map["NodeIdList"] = self.nodeIdList!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeIdList") {
                self.nodeIdList = dict["NodeIdList"] as! [String]
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
        }
    }
    public var env: String?

    public var opTenantId: Int64?

    public var resumeCommand: ResumePhysicalNodeRequest.ResumeCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resumeCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.resumeCommand != nil {
            map["ResumeCommand"] = self.resumeCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ResumeCommand") {
            var model = ResumePhysicalNodeRequest.ResumeCommand()
            model.fromMap(dict["ResumeCommand"] as! [String: Any])
            self.resumeCommand = model
        }
    }
}

public class ResumePhysicalNodeShrinkRequest : Tea.TeaModel {
    public var env: String?

    public var opTenantId: Int64?

    public var resumeCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.env != nil {
            map["Env"] = self.env!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.resumeCommandShrink != nil {
            map["ResumeCommand"] = self.resumeCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Env") {
            self.env = dict["Env"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ResumeCommand") {
            self.resumeCommandShrink = dict["ResumeCommand"] as! String
        }
    }
}

public class ResumePhysicalNodeResponseBody : Tea.TeaModel {
    public class NodeOperateResultList : Tea.TeaModel {
        public var errorMessage: String?

        public var nodeId: String?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var nodeOperateResultList: [ResumePhysicalNodeResponseBody.NodeOperateResultList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nodeOperateResultList != nil {
            var tmp : [Any] = []
            for k in self.nodeOperateResultList! {
                tmp.append(k.toMap())
            }
            map["NodeOperateResultList"] = tmp
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NodeOperateResultList") {
            var tmp : [ResumePhysicalNodeResponseBody.NodeOperateResultList] = []
            for v in dict["NodeOperateResultList"] as! [Any] {
                var model = ResumePhysicalNodeResponseBody.NodeOperateResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodeOperateResultList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ResumePhysicalNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumePhysicalNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ResumePhysicalNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeResourcePermissionRequest : Tea.TeaModel {
    public class RevokeCommand : Tea.TeaModel {
        public class ResourceList : Tea.TeaModel {
            public var resourceId: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
            }
        }
        public var operateList: [String]?

        public var reason: String?

        public var resourceList: [RevokeResourcePermissionRequest.RevokeCommand.ResourceList]?

        public var resourceType: String?

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
            if self.operateList != nil {
                map["OperateList"] = self.operateList!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.resourceList != nil {
                var tmp : [Any] = []
                for k in self.resourceList! {
                    tmp.append(k.toMap())
                }
                map["ResourceList"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperateList") {
                self.operateList = dict["OperateList"] as! [String]
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("ResourceList") {
                var tmp : [RevokeResourcePermissionRequest.RevokeCommand.ResourceList] = []
                for v in dict["ResourceList"] as! [Any] {
                    var model = RevokeResourcePermissionRequest.RevokeCommand.ResourceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceList = tmp
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var opTenantId: Int64?

    public var revokeCommand: RevokeResourcePermissionRequest.RevokeCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.revokeCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.revokeCommand != nil {
            map["RevokeCommand"] = self.revokeCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("RevokeCommand") {
            var model = RevokeResourcePermissionRequest.RevokeCommand()
            model.fromMap(dict["RevokeCommand"] as! [String: Any])
            self.revokeCommand = model
        }
    }
}

public class RevokeResourcePermissionShrinkRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var revokeCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.revokeCommandShrink != nil {
            map["RevokeCommand"] = self.revokeCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("RevokeCommand") {
            self.revokeCommandShrink = dict["RevokeCommand"] as! String
        }
    }
}

public class RevokeResourcePermissionResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class RevokeResourcePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeResourcePermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RevokeResourcePermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAdHocFileRequest : Tea.TeaModel {
    public class UpdateCommand : Tea.TeaModel {
        public var content: String?

        public var fileId: Int64?

        public var projectId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("FileId") {
                self.fileId = dict["FileId"] as! Int64
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
        }
    }
    public var opTenantId: Int64?

    public var updateCommand: UpdateAdHocFileRequest.UpdateCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommand != nil {
            map["UpdateCommand"] = self.updateCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            var model = UpdateAdHocFileRequest.UpdateCommand()
            model.fromMap(dict["UpdateCommand"] as! [String: Any])
            self.updateCommand = model
        }
    }
}

public class UpdateAdHocFileShrinkRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var updateCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommandShrink != nil {
            map["UpdateCommand"] = self.updateCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            self.updateCommandShrink = dict["UpdateCommand"] as! String
        }
    }
}

public class UpdateAdHocFileResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateAdHocFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAdHocFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateAdHocFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDataSourceBasicInfoRequest : Tea.TeaModel {
    public class UpdateCommand : Tea.TeaModel {
        public var description_: String?

        public var id: Int64?

        public var name: String?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var opTenantId: Int64?

    public var updateCommand: UpdateDataSourceBasicInfoRequest.UpdateCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommand != nil {
            map["UpdateCommand"] = self.updateCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            var model = UpdateDataSourceBasicInfoRequest.UpdateCommand()
            model.fromMap(dict["UpdateCommand"] as! [String: Any])
            self.updateCommand = model
        }
    }
}

public class UpdateDataSourceBasicInfoShrinkRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var updateCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommandShrink != nil {
            map["UpdateCommand"] = self.updateCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            self.updateCommandShrink = dict["UpdateCommand"] as! String
        }
    }
}

public class UpdateDataSourceBasicInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateDataSourceBasicInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataSourceBasicInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateDataSourceBasicInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDataSourceConfigRequest : Tea.TeaModel {
    public class UpdateCommand : Tea.TeaModel {
        public class ConfigItemList : Tea.TeaModel {
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
        public var configItemList: [UpdateDataSourceConfigRequest.UpdateCommand.ConfigItemList]?

        public var id: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configItemList != nil {
                var tmp : [Any] = []
                for k in self.configItemList! {
                    tmp.append(k.toMap())
                }
                map["ConfigItemList"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigItemList") {
                var tmp : [UpdateDataSourceConfigRequest.UpdateCommand.ConfigItemList] = []
                for v in dict["ConfigItemList"] as! [Any] {
                    var model = UpdateDataSourceConfigRequest.UpdateCommand.ConfigItemList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.configItemList = tmp
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
        }
    }
    public var opTenantId: Int64?

    public var updateCommand: UpdateDataSourceConfigRequest.UpdateCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommand != nil {
            map["UpdateCommand"] = self.updateCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            var model = UpdateDataSourceConfigRequest.UpdateCommand()
            model.fromMap(dict["UpdateCommand"] as! [String: Any])
            self.updateCommand = model
        }
    }
}

public class UpdateDataSourceConfigShrinkRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var updateCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommandShrink != nil {
            map["UpdateCommand"] = self.updateCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            self.updateCommandShrink = dict["UpdateCommand"] as! String
        }
    }
}

public class UpdateDataSourceConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateDataSourceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataSourceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateDataSourceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFileDirectoryRequest : Tea.TeaModel {
    public var directory: String?

    public var fileId: Int64?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directory != nil {
            map["Directory"] = self.directory!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Directory") {
            self.directory = dict["Directory"] as! String
        }
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class UpdateFileDirectoryResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateFileDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFileDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateFileDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFileNameRequest : Tea.TeaModel {
    public var fileId: Int64?

    public var name: String?

    public var opTenantId: Int64?

    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class UpdateFileNameResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateFileNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFileNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateFileNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTenantMemberRequest : Tea.TeaModel {
    public class UpdateCommand : Tea.TeaModel {
        public class MemberList : Tea.TeaModel {
            public var dingNumber: String?

            public var mail: String?

            public var mobilePhone: String?

            public var roleList: [String]?

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
                if self.dingNumber != nil {
                    map["DingNumber"] = self.dingNumber!
                }
                if self.mail != nil {
                    map["Mail"] = self.mail!
                }
                if self.mobilePhone != nil {
                    map["MobilePhone"] = self.mobilePhone!
                }
                if self.roleList != nil {
                    map["RoleList"] = self.roleList!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DingNumber") {
                    self.dingNumber = dict["DingNumber"] as! String
                }
                if dict.keys.contains("Mail") {
                    self.mail = dict["Mail"] as! String
                }
                if dict.keys.contains("MobilePhone") {
                    self.mobilePhone = dict["MobilePhone"] as! String
                }
                if dict.keys.contains("RoleList") {
                    self.roleList = dict["RoleList"] as! [String]
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var memberList: [UpdateTenantMemberRequest.UpdateCommand.MemberList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberList != nil {
                var tmp : [Any] = []
                for k in self.memberList! {
                    tmp.append(k.toMap())
                }
                map["MemberList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberList") {
                var tmp : [UpdateTenantMemberRequest.UpdateCommand.MemberList] = []
                for v in dict["MemberList"] as! [Any] {
                    var model = UpdateTenantMemberRequest.UpdateCommand.MemberList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.memberList = tmp
            }
        }
    }
    public var opTenantId: Int64?

    public var updateCommand: UpdateTenantMemberRequest.UpdateCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommand != nil {
            map["UpdateCommand"] = self.updateCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            var model = UpdateTenantMemberRequest.UpdateCommand()
            model.fromMap(dict["UpdateCommand"] as! [String: Any])
            self.updateCommand = model
        }
    }
}

public class UpdateTenantMemberShrinkRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var updateCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommandShrink != nil {
            map["UpdateCommand"] = self.updateCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            self.updateCommandShrink = dict["UpdateCommand"] as! String
        }
    }
}

public class UpdateTenantMemberResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateTenantMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTenantMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTenantMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserGroupRequest : Tea.TeaModel {
    public class UpdateCommand : Tea.TeaModel {
        public var adminUserIdList: [String]?

        public var description_: String?

        public var id: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adminUserIdList != nil {
                map["AdminUserIdList"] = self.adminUserIdList!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdminUserIdList") {
                self.adminUserIdList = dict["AdminUserIdList"] as! [String]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var opTenantId: Int64?

    public var updateCommand: UpdateUserGroupRequest.UpdateCommand?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateCommand?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommand != nil {
            map["UpdateCommand"] = self.updateCommand?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            var model = UpdateUserGroupRequest.UpdateCommand()
            model.fromMap(dict["UpdateCommand"] as! [String: Any])
            self.updateCommand = model
        }
    }
}

public class UpdateUserGroupShrinkRequest : Tea.TeaModel {
    public var opTenantId: Int64?

    public var updateCommandShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.updateCommandShrink != nil {
            map["UpdateCommand"] = self.updateCommandShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UpdateCommand") {
            self.updateCommandShrink = dict["UpdateCommand"] as! String
        }
    }
}

public class UpdateUserGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserGroupSwitchRequest : Tea.TeaModel {
    public var active: Bool?

    public var opTenantId: Int64?

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
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.opTenantId != nil {
            map["OpTenantId"] = self.opTenantId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") {
            self.active = dict["Active"] as! Bool
        }
        if dict.keys.contains("OpTenantId") {
            self.opTenantId = dict["OpTenantId"] as! Int64
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class UpdateUserGroupSwitchResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
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

public class UpdateUserGroupSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserGroupSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserGroupSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
