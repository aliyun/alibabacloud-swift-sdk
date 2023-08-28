import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddWorkspaceDocMembersHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: AddWorkspaceDocMembersHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = AddWorkspaceDocMembersHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class AddWorkspaceDocMembersShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class AddWorkspaceDocMembersRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberId: String?

        public var memberType: String?

        public var roleType: String?

        public override init() {
            super.init()
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
            if self.memberType != nil {
                map["MemberType"] = self.memberType!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("MemberType") && dict["MemberType"] != nil {
                self.memberType = dict["MemberType"] as! String
            }
            if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
                self.roleType = dict["RoleType"] as! String
            }
        }
    }
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var members: [AddWorkspaceDocMembersRequest.Members]?

    public var nodeId: String?

    public var tenantContext: AddWorkspaceDocMembersRequest.TenantContext?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [AddWorkspaceDocMembersRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = AddWorkspaceDocMembersRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = AddWorkspaceDocMembersRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class AddWorkspaceDocMembersShrinkRequest : Tea.TeaModel {
    public var membersShrink: String?

    public var nodeId: String?

    public var tenantContextShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.membersShrink != nil {
            map["Members"] = self.membersShrink!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.membersShrink = dict["Members"] as! String
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class AddWorkspaceDocMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AddWorkspaceDocMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddWorkspaceDocMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddWorkspaceDocMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddWorkspaceMembersHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: AddWorkspaceMembersHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = AddWorkspaceMembersHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class AddWorkspaceMembersShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class AddWorkspaceMembersRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberId: String?

        public var memberType: String?

        public var roleType: String?

        public override init() {
            super.init()
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
            if self.memberType != nil {
                map["MemberType"] = self.memberType!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("MemberType") && dict["MemberType"] != nil {
                self.memberType = dict["MemberType"] as! String
            }
            if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
                self.roleType = dict["RoleType"] as! String
            }
        }
    }
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var members: [AddWorkspaceMembersRequest.Members]?

    public var tenantContext: AddWorkspaceMembersRequest.TenantContext?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [AddWorkspaceMembersRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = AddWorkspaceMembersRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = AddWorkspaceMembersRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class AddWorkspaceMembersShrinkRequest : Tea.TeaModel {
    public var membersShrink: String?

    public var tenantContextShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.membersShrink != nil {
            map["Members"] = self.membersShrink!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.membersShrink = dict["Members"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class AddWorkspaceMembersResponseBody : Tea.TeaModel {
    public var notInOrgList: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.notInOrgList != nil {
            map["NotInOrgList"] = self.notInOrgList!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NotInOrgList") && dict["NotInOrgList"] != nil {
            self.notInOrgList = dict["NotInOrgList"] as! [String]
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AddWorkspaceMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddWorkspaceMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddWorkspaceMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSheetHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: CreateSheetHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = CreateSheetHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class CreateSheetShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class CreateSheetRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var name: String?

    public var tenantContext: CreateSheetRequest.TenantContext?

    public var workbookId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workbookId != nil {
            map["WorkbookId"] = self.workbookId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = CreateSheetRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkbookId") && dict["WorkbookId"] != nil {
            self.workbookId = dict["WorkbookId"] as! String
        }
    }
}

public class CreateSheetShrinkRequest : Tea.TeaModel {
    public var name: String?

    public var tenantContextShrink: String?

    public var workbookId: String?

    public override init() {
        super.init()
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
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workbookId != nil {
            map["WorkbookId"] = self.workbookId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkbookId") && dict["WorkbookId"] != nil {
            self.workbookId = dict["WorkbookId"] as! String
        }
    }
}

public class CreateSheetResponseBody : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var requestId: String?

    public var visibility: String?

    public override init() {
        super.init()
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
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.visibility != nil {
            map["visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("visibility") && dict["visibility"] != nil {
            self.visibility = dict["visibility"] as! String
        }
    }
}

public class CreateSheetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSheetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSheetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTodoTaskHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: CreateTodoTaskHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = CreateTodoTaskHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class CreateTodoTaskShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class CreateTodoTaskRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public class ContentFieldList : Tea.TeaModel {
        public var fieldKey: String?

        public var fieldValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldKey != nil {
                map["fieldKey"] = self.fieldKey!
            }
            if self.fieldValue != nil {
                map["fieldValue"] = self.fieldValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fieldKey") && dict["fieldKey"] != nil {
                self.fieldKey = dict["fieldKey"] as! String
            }
            if dict.keys.contains("fieldValue") && dict["fieldValue"] != nil {
                self.fieldValue = dict["fieldValue"] as! String
            }
        }
    }
    public class DetailUrl : Tea.TeaModel {
        public var appUrl: String?

        public var pcUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appUrl != nil {
                map["appUrl"] = self.appUrl!
            }
            if self.pcUrl != nil {
                map["pcUrl"] = self.pcUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appUrl") && dict["appUrl"] != nil {
                self.appUrl = dict["appUrl"] as! String
            }
            if dict.keys.contains("pcUrl") && dict["pcUrl"] != nil {
                self.pcUrl = dict["pcUrl"] as! String
            }
        }
    }
    public class NotifyConfigs : Tea.TeaModel {
        public var dingNotify: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dingNotify != nil {
                map["dingNotify"] = self.dingNotify!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dingNotify") && dict["dingNotify"] != nil {
                self.dingNotify = dict["dingNotify"] as! String
            }
        }
    }
    public var tenantContext: CreateTodoTaskRequest.TenantContext?

    public var contentFieldList: [CreateTodoTaskRequest.ContentFieldList]?

    public var creatorId: String?

    public var description_: String?

    public var detailUrl: CreateTodoTaskRequest.DetailUrl?

    public var dueTime: Int64?

    public var executorIds: [String]?

    public var isOnlyShowExecutor: Bool?

    public var notifyConfigs: CreateTodoTaskRequest.NotifyConfigs?

    public var operatorId: String?

    public var participantIds: [String]?

    public var priority: Int32?

    public var sourceId: String?

    public var subject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
        try self.detailUrl?.validate()
        try self.notifyConfigs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.contentFieldList != nil {
            var tmp : [Any] = []
            for k in self.contentFieldList! {
                tmp.append(k.toMap())
            }
            map["contentFieldList"] = tmp
        }
        if self.creatorId != nil {
            map["creatorId"] = self.creatorId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.detailUrl != nil {
            map["detailUrl"] = self.detailUrl?.toMap()
        }
        if self.dueTime != nil {
            map["dueTime"] = self.dueTime!
        }
        if self.executorIds != nil {
            map["executorIds"] = self.executorIds!
        }
        if self.isOnlyShowExecutor != nil {
            map["isOnlyShowExecutor"] = self.isOnlyShowExecutor!
        }
        if self.notifyConfigs != nil {
            map["notifyConfigs"] = self.notifyConfigs?.toMap()
        }
        if self.operatorId != nil {
            map["operatorId"] = self.operatorId!
        }
        if self.participantIds != nil {
            map["participantIds"] = self.participantIds!
        }
        if self.priority != nil {
            map["priority"] = self.priority!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.subject != nil {
            map["subject"] = self.subject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = CreateTodoTaskRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("contentFieldList") && dict["contentFieldList"] != nil {
            var tmp : [CreateTodoTaskRequest.ContentFieldList] = []
            for v in dict["contentFieldList"] as! [Any] {
                var model = CreateTodoTaskRequest.ContentFieldList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contentFieldList = tmp
        }
        if dict.keys.contains("creatorId") && dict["creatorId"] != nil {
            self.creatorId = dict["creatorId"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("detailUrl") && dict["detailUrl"] != nil {
            var model = CreateTodoTaskRequest.DetailUrl()
            model.fromMap(dict["detailUrl"] as! [String: Any])
            self.detailUrl = model
        }
        if dict.keys.contains("dueTime") && dict["dueTime"] != nil {
            self.dueTime = dict["dueTime"] as! Int64
        }
        if dict.keys.contains("executorIds") && dict["executorIds"] != nil {
            self.executorIds = dict["executorIds"] as! [String]
        }
        if dict.keys.contains("isOnlyShowExecutor") && dict["isOnlyShowExecutor"] != nil {
            self.isOnlyShowExecutor = dict["isOnlyShowExecutor"] as! Bool
        }
        if dict.keys.contains("notifyConfigs") && dict["notifyConfigs"] != nil {
            var model = CreateTodoTaskRequest.NotifyConfigs()
            model.fromMap(dict["notifyConfigs"] as! [String: Any])
            self.notifyConfigs = model
        }
        if dict.keys.contains("operatorId") && dict["operatorId"] != nil {
            self.operatorId = dict["operatorId"] as! String
        }
        if dict.keys.contains("participantIds") && dict["participantIds"] != nil {
            self.participantIds = dict["participantIds"] as! [String]
        }
        if dict.keys.contains("priority") && dict["priority"] != nil {
            self.priority = dict["priority"] as! Int32
        }
        if dict.keys.contains("sourceId") && dict["sourceId"] != nil {
            self.sourceId = dict["sourceId"] as! String
        }
        if dict.keys.contains("subject") && dict["subject"] != nil {
            self.subject = dict["subject"] as! String
        }
    }
}

public class CreateTodoTaskShrinkRequest : Tea.TeaModel {
    public var tenantContextShrink: String?

    public var contentFieldListShrink: String?

    public var creatorId: String?

    public var description_: String?

    public var detailUrlShrink: String?

    public var dueTime: Int64?

    public var executorIdsShrink: String?

    public var isOnlyShowExecutor: Bool?

    public var notifyConfigsShrink: String?

    public var operatorId: String?

    public var participantIdsShrink: String?

    public var priority: Int32?

    public var sourceId: String?

    public var subject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.contentFieldListShrink != nil {
            map["contentFieldList"] = self.contentFieldListShrink!
        }
        if self.creatorId != nil {
            map["creatorId"] = self.creatorId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.detailUrlShrink != nil {
            map["detailUrl"] = self.detailUrlShrink!
        }
        if self.dueTime != nil {
            map["dueTime"] = self.dueTime!
        }
        if self.executorIdsShrink != nil {
            map["executorIds"] = self.executorIdsShrink!
        }
        if self.isOnlyShowExecutor != nil {
            map["isOnlyShowExecutor"] = self.isOnlyShowExecutor!
        }
        if self.notifyConfigsShrink != nil {
            map["notifyConfigs"] = self.notifyConfigsShrink!
        }
        if self.operatorId != nil {
            map["operatorId"] = self.operatorId!
        }
        if self.participantIdsShrink != nil {
            map["participantIds"] = self.participantIdsShrink!
        }
        if self.priority != nil {
            map["priority"] = self.priority!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.subject != nil {
            map["subject"] = self.subject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("contentFieldList") && dict["contentFieldList"] != nil {
            self.contentFieldListShrink = dict["contentFieldList"] as! String
        }
        if dict.keys.contains("creatorId") && dict["creatorId"] != nil {
            self.creatorId = dict["creatorId"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("detailUrl") && dict["detailUrl"] != nil {
            self.detailUrlShrink = dict["detailUrl"] as! String
        }
        if dict.keys.contains("dueTime") && dict["dueTime"] != nil {
            self.dueTime = dict["dueTime"] as! Int64
        }
        if dict.keys.contains("executorIds") && dict["executorIds"] != nil {
            self.executorIdsShrink = dict["executorIds"] as! String
        }
        if dict.keys.contains("isOnlyShowExecutor") && dict["isOnlyShowExecutor"] != nil {
            self.isOnlyShowExecutor = dict["isOnlyShowExecutor"] as! Bool
        }
        if dict.keys.contains("notifyConfigs") && dict["notifyConfigs"] != nil {
            self.notifyConfigsShrink = dict["notifyConfigs"] as! String
        }
        if dict.keys.contains("operatorId") && dict["operatorId"] != nil {
            self.operatorId = dict["operatorId"] as! String
        }
        if dict.keys.contains("participantIds") && dict["participantIds"] != nil {
            self.participantIdsShrink = dict["participantIds"] as! String
        }
        if dict.keys.contains("priority") && dict["priority"] != nil {
            self.priority = dict["priority"] as! Int32
        }
        if dict.keys.contains("sourceId") && dict["sourceId"] != nil {
            self.sourceId = dict["sourceId"] as! String
        }
        if dict.keys.contains("subject") && dict["subject"] != nil {
            self.subject = dict["subject"] as! String
        }
    }
}

public class CreateTodoTaskResponseBody : Tea.TeaModel {
    public class ContentFieldList : Tea.TeaModel {
        public var fieldKey: String?

        public var fieldValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldKey != nil {
                map["fieldKey"] = self.fieldKey!
            }
            if self.fieldValue != nil {
                map["fieldValue"] = self.fieldValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fieldKey") && dict["fieldKey"] != nil {
                self.fieldKey = dict["fieldKey"] as! String
            }
            if dict.keys.contains("fieldValue") && dict["fieldValue"] != nil {
                self.fieldValue = dict["fieldValue"] as! String
            }
        }
    }
    public class DetailUrl : Tea.TeaModel {
        public var appUrl: String?

        public var pcUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appUrl != nil {
                map["appUrl"] = self.appUrl!
            }
            if self.pcUrl != nil {
                map["pcUrl"] = self.pcUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appUrl") && dict["appUrl"] != nil {
                self.appUrl = dict["appUrl"] as! String
            }
            if dict.keys.contains("pcUrl") && dict["pcUrl"] != nil {
                self.pcUrl = dict["pcUrl"] as! String
            }
        }
    }
    public class NotifyConfigs : Tea.TeaModel {
        public var dingNotify: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dingNotify != nil {
                map["dingNotify"] = self.dingNotify!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dingNotify") && dict["dingNotify"] != nil {
                self.dingNotify = dict["dingNotify"] as! String
            }
        }
    }
    public var bizTag: String?

    public var contentFieldList: [CreateTodoTaskResponseBody.ContentFieldList]?

    public var createdTime: Int64?

    public var creatorId: String?

    public var description_: String?

    public var detailUrl: CreateTodoTaskResponseBody.DetailUrl?

    public var done: Bool?

    public var dueTime: Int64?

    public var executorIds: [String]?

    public var finishTime: Int64?

    public var id: String?

    public var isOnlyShowExecutor: Bool?

    public var modifiedTime: Int64?

    public var modifierId: String?

    public var notifyConfigs: CreateTodoTaskResponseBody.NotifyConfigs?

    public var participantIds: [String]?

    public var priority: Int32?

    public var requestId: String?

    public var source: String?

    public var sourceId: String?

    public var startTime: Int64?

    public var subject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.detailUrl?.validate()
        try self.notifyConfigs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTag != nil {
            map["bizTag"] = self.bizTag!
        }
        if self.contentFieldList != nil {
            var tmp : [Any] = []
            for k in self.contentFieldList! {
                tmp.append(k.toMap())
            }
            map["contentFieldList"] = tmp
        }
        if self.createdTime != nil {
            map["createdTime"] = self.createdTime!
        }
        if self.creatorId != nil {
            map["creatorId"] = self.creatorId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.detailUrl != nil {
            map["detailUrl"] = self.detailUrl?.toMap()
        }
        if self.done != nil {
            map["done"] = self.done!
        }
        if self.dueTime != nil {
            map["dueTime"] = self.dueTime!
        }
        if self.executorIds != nil {
            map["executorIds"] = self.executorIds!
        }
        if self.finishTime != nil {
            map["finishTime"] = self.finishTime!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.isOnlyShowExecutor != nil {
            map["isOnlyShowExecutor"] = self.isOnlyShowExecutor!
        }
        if self.modifiedTime != nil {
            map["modifiedTime"] = self.modifiedTime!
        }
        if self.modifierId != nil {
            map["modifierId"] = self.modifierId!
        }
        if self.notifyConfigs != nil {
            map["notifyConfigs"] = self.notifyConfigs?.toMap()
        }
        if self.participantIds != nil {
            map["participantIds"] = self.participantIds!
        }
        if self.priority != nil {
            map["priority"] = self.priority!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.sourceId != nil {
            map["sourceId"] = self.sourceId!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.subject != nil {
            map["subject"] = self.subject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bizTag") && dict["bizTag"] != nil {
            self.bizTag = dict["bizTag"] as! String
        }
        if dict.keys.contains("contentFieldList") && dict["contentFieldList"] != nil {
            var tmp : [CreateTodoTaskResponseBody.ContentFieldList] = []
            for v in dict["contentFieldList"] as! [Any] {
                var model = CreateTodoTaskResponseBody.ContentFieldList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contentFieldList = tmp
        }
        if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
            self.createdTime = dict["createdTime"] as! Int64
        }
        if dict.keys.contains("creatorId") && dict["creatorId"] != nil {
            self.creatorId = dict["creatorId"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("detailUrl") && dict["detailUrl"] != nil {
            var model = CreateTodoTaskResponseBody.DetailUrl()
            model.fromMap(dict["detailUrl"] as! [String: Any])
            self.detailUrl = model
        }
        if dict.keys.contains("done") && dict["done"] != nil {
            self.done = dict["done"] as! Bool
        }
        if dict.keys.contains("dueTime") && dict["dueTime"] != nil {
            self.dueTime = dict["dueTime"] as! Int64
        }
        if dict.keys.contains("executorIds") && dict["executorIds"] != nil {
            self.executorIds = dict["executorIds"] as! [String]
        }
        if dict.keys.contains("finishTime") && dict["finishTime"] != nil {
            self.finishTime = dict["finishTime"] as! Int64
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("isOnlyShowExecutor") && dict["isOnlyShowExecutor"] != nil {
            self.isOnlyShowExecutor = dict["isOnlyShowExecutor"] as! Bool
        }
        if dict.keys.contains("modifiedTime") && dict["modifiedTime"] != nil {
            self.modifiedTime = dict["modifiedTime"] as! Int64
        }
        if dict.keys.contains("modifierId") && dict["modifierId"] != nil {
            self.modifierId = dict["modifierId"] as! String
        }
        if dict.keys.contains("notifyConfigs") && dict["notifyConfigs"] != nil {
            var model = CreateTodoTaskResponseBody.NotifyConfigs()
            model.fromMap(dict["notifyConfigs"] as! [String: Any])
            self.notifyConfigs = model
        }
        if dict.keys.contains("participantIds") && dict["participantIds"] != nil {
            self.participantIds = dict["participantIds"] as! [String]
        }
        if dict.keys.contains("priority") && dict["priority"] != nil {
            self.priority = dict["priority"] as! Int32
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("source") && dict["source"] != nil {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("sourceId") && dict["sourceId"] != nil {
            self.sourceId = dict["sourceId"] as! String
        }
        if dict.keys.contains("startTime") && dict["startTime"] != nil {
            self.startTime = dict["startTime"] as! Int64
        }
        if dict.keys.contains("subject") && dict["subject"] != nil {
            self.subject = dict["subject"] as! String
        }
    }
}

public class CreateTodoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTodoTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTodoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkspaceHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: CreateWorkspaceHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = CreateWorkspaceHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class CreateWorkspaceShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var description_: String?

    public var name: String?

    public var tenantContext: CreateWorkspaceRequest.TenantContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = CreateWorkspaceRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
    }
}

public class CreateWorkspaceShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var tenantContextShrink: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var requestId: String?

    public var url: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("url") && dict["url"] != nil {
            self.url = dict["url"] as! String
        }
        if dict.keys.contains("workspaceId") && dict["workspaceId"] != nil {
            self.workspaceId = dict["workspaceId"] as! String
        }
    }
}

public class CreateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkspaceDocHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: CreateWorkspaceDocHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = CreateWorkspaceDocHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class CreateWorkspaceDocShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class CreateWorkspaceDocRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var docType: String?

    public var name: String?

    public var parentNodeId: String?

    public var templateId: String?

    public var templateType: String?

    public var tenantContext: CreateWorkspaceDocRequest.TenantContext?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentNodeId != nil {
            map["ParentNodeId"] = self.parentNodeId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentNodeId") && dict["ParentNodeId"] != nil {
            self.parentNodeId = dict["ParentNodeId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = CreateWorkspaceDocRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateWorkspaceDocShrinkRequest : Tea.TeaModel {
    public var docType: String?

    public var name: String?

    public var parentNodeId: String?

    public var templateId: String?

    public var templateType: String?

    public var tenantContextShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentNodeId != nil {
            map["ParentNodeId"] = self.parentNodeId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentNodeId") && dict["ParentNodeId"] != nil {
            self.parentNodeId = dict["ParentNodeId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateWorkspaceDocResponseBody : Tea.TeaModel {
    public var docKey: String?

    public var nodeId: String?

    public var requestId: String?

    public var url: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docKey != nil {
            map["docKey"] = self.docKey!
        }
        if self.nodeId != nil {
            map["nodeId"] = self.nodeId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docKey") && dict["docKey"] != nil {
            self.docKey = dict["docKey"] as! String
        }
        if dict.keys.contains("nodeId") && dict["nodeId"] != nil {
            self.nodeId = dict["nodeId"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("url") && dict["url"] != nil {
            self.url = dict["url"] as! String
        }
        if dict.keys.contains("workspaceId") && dict["workspaceId"] != nil {
            self.workspaceId = dict["workspaceId"] as! String
        }
    }
}

public class CreateWorkspaceDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceDocResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateWorkspaceDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTodoTaskHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: DeleteTodoTaskHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = DeleteTodoTaskHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class DeleteTodoTaskShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class DeleteTodoTaskRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var tenantContext: DeleteTodoTaskRequest.TenantContext?

    public var operatorId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.operatorId != nil {
            map["operatorId"] = self.operatorId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = DeleteTodoTaskRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("operatorId") && dict["operatorId"] != nil {
            self.operatorId = dict["operatorId"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class DeleteTodoTaskShrinkRequest : Tea.TeaModel {
    public var tenantContextShrink: String?

    public var operatorId: String?

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
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.operatorId != nil {
            map["operatorId"] = self.operatorId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("operatorId") && dict["operatorId"] != nil {
            self.operatorId = dict["operatorId"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class DeleteTodoTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Bool
        }
    }
}

public class DeleteTodoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTodoTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTodoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkspaceDocMembersHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: DeleteWorkspaceDocMembersHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = DeleteWorkspaceDocMembersHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class DeleteWorkspaceDocMembersShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class DeleteWorkspaceDocMembersRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberId: String?

        public var memberType: String?

        public override init() {
            super.init()
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
            if self.memberType != nil {
                map["MemberType"] = self.memberType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("MemberType") && dict["MemberType"] != nil {
                self.memberType = dict["MemberType"] as! String
            }
        }
    }
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var members: [DeleteWorkspaceDocMembersRequest.Members]?

    public var nodeId: String?

    public var tenantContext: DeleteWorkspaceDocMembersRequest.TenantContext?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [DeleteWorkspaceDocMembersRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = DeleteWorkspaceDocMembersRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = DeleteWorkspaceDocMembersRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class DeleteWorkspaceDocMembersShrinkRequest : Tea.TeaModel {
    public var membersShrink: String?

    public var nodeId: String?

    public var tenantContextShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.membersShrink != nil {
            map["Members"] = self.membersShrink!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.membersShrink = dict["Members"] as! String
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class DeleteWorkspaceDocMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteWorkspaceDocMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkspaceDocMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWorkspaceDocMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkspaceMembersHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: DeleteWorkspaceMembersHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = DeleteWorkspaceMembersHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class DeleteWorkspaceMembersShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class DeleteWorkspaceMembersRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberId: String?

        public var memberType: String?

        public override init() {
            super.init()
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
            if self.memberType != nil {
                map["MemberType"] = self.memberType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("MemberType") && dict["MemberType"] != nil {
                self.memberType = dict["MemberType"] as! String
            }
        }
    }
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var members: [DeleteWorkspaceMembersRequest.Members]?

    public var tenantContext: DeleteWorkspaceMembersRequest.TenantContext?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [DeleteWorkspaceMembersRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = DeleteWorkspaceMembersRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = DeleteWorkspaceMembersRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class DeleteWorkspaceMembersShrinkRequest : Tea.TeaModel {
    public var membersShrink: String?

    public var tenantContextShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.membersShrink != nil {
            map["Members"] = self.membersShrink!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.membersShrink = dict["Members"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class DeleteWorkspaceMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteWorkspaceMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkspaceMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWorkspaceMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: GetUserHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = GetUserHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class GetUserShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var tenantContext: GetUserRequest.TenantContext?

    public var language: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = GetUserRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("language") && dict["language"] != nil {
            self.language = dict["language"] as! String
        }
    }
}

public class GetUserShrinkRequest : Tea.TeaModel {
    public var tenantContextShrink: String?

    public var language: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("language") && dict["language"] != nil {
            self.language = dict["language"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class DeptOrderList : Tea.TeaModel {
        public var deptId: Int64?

        public var order: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deptId != nil {
                map["deptId"] = self.deptId!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deptId") && dict["deptId"] != nil {
                self.deptId = dict["deptId"] as! Int64
            }
            if dict.keys.contains("order") && dict["order"] != nil {
                self.order = dict["order"] as! Int64
            }
        }
    }
    public class LeaderInDept : Tea.TeaModel {
        public var deptId: Int64?

        public var leader: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deptId != nil {
                map["deptId"] = self.deptId!
            }
            if self.leader != nil {
                map["leader"] = self.leader!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deptId") && dict["deptId"] != nil {
                self.deptId = dict["deptId"] as! Int64
            }
            if dict.keys.contains("leader") && dict["leader"] != nil {
                self.leader = dict["leader"] as! Bool
            }
        }
    }
    public class RoleList : Tea.TeaModel {
        public var groupName: String?

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
            if self.groupName != nil {
                map["groupName"] = self.groupName!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("groupName") && dict["groupName"] != nil {
                self.groupName = dict["groupName"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
        }
    }
    public class UnionEmpExt : Tea.TeaModel {
        public class UnionEmpMapList : Tea.TeaModel {
            public var cropId: String?

            public var userid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cropId != nil {
                    map["cropId"] = self.cropId!
                }
                if self.userid != nil {
                    map["userid"] = self.userid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cropId") && dict["cropId"] != nil {
                    self.cropId = dict["cropId"] as! String
                }
                if dict.keys.contains("userid") && dict["userid"] != nil {
                    self.userid = dict["userid"] as! String
                }
            }
        }
        public var corpId: String?

        public var unionEmpMapList: [GetUserResponseBody.UnionEmpExt.UnionEmpMapList]?

        public var userid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.corpId != nil {
                map["corpId"] = self.corpId!
            }
            if self.unionEmpMapList != nil {
                var tmp : [Any] = []
                for k in self.unionEmpMapList! {
                    tmp.append(k.toMap())
                }
                map["unionEmpMapList"] = tmp
            }
            if self.userid != nil {
                map["userid"] = self.userid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("corpId") && dict["corpId"] != nil {
                self.corpId = dict["corpId"] as! String
            }
            if dict.keys.contains("unionEmpMapList") && dict["unionEmpMapList"] != nil {
                var tmp : [GetUserResponseBody.UnionEmpExt.UnionEmpMapList] = []
                for v in dict["unionEmpMapList"] as! [Any] {
                    var model = GetUserResponseBody.UnionEmpExt.UnionEmpMapList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.unionEmpMapList = tmp
            }
            if dict.keys.contains("userid") && dict["userid"] != nil {
                self.userid = dict["userid"] as! String
            }
        }
    }
    public var active: Bool?

    public var admin: Bool?

    public var avatar: String?

    public var boss: Bool?

    public var deptIdList: [Int64]?

    public var deptOrderList: [GetUserResponseBody.DeptOrderList]?

    public var email: String?

    public var exclusiveAccount: Bool?

    public var exclusiveAccountCorpId: String?

    public var exclusiveAccountCorpName: String?

    public var exclusiveAccountType: String?

    public var extension_: String?

    public var hideMobile: Bool?

    public var hiredDate: Int64?

    public var jobNumber: String?

    public var leaderInDept: [GetUserResponseBody.LeaderInDept]?

    public var loginId: String?

    public var managerUserid: String?

    public var mobile: String?

    public var name: String?

    public var nickname: String?

    public var orgEmail: String?

    public var realAuthed: Bool?

    public var remark: String?

    public var requestId: String?

    public var roleList: [GetUserResponseBody.RoleList]?

    public var senior: Bool?

    public var stateCode: String?

    public var telephone: String?

    public var title: String?

    public var unionEmpExt: GetUserResponseBody.UnionEmpExt?

    public var userid: String?

    public var workPlace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.unionEmpExt?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["active"] = self.active!
        }
        if self.admin != nil {
            map["admin"] = self.admin!
        }
        if self.avatar != nil {
            map["avatar"] = self.avatar!
        }
        if self.boss != nil {
            map["boss"] = self.boss!
        }
        if self.deptIdList != nil {
            map["deptIdList"] = self.deptIdList!
        }
        if self.deptOrderList != nil {
            var tmp : [Any] = []
            for k in self.deptOrderList! {
                tmp.append(k.toMap())
            }
            map["deptOrderList"] = tmp
        }
        if self.email != nil {
            map["email"] = self.email!
        }
        if self.exclusiveAccount != nil {
            map["exclusiveAccount"] = self.exclusiveAccount!
        }
        if self.exclusiveAccountCorpId != nil {
            map["exclusiveAccountCorpId"] = self.exclusiveAccountCorpId!
        }
        if self.exclusiveAccountCorpName != nil {
            map["exclusiveAccountCorpName"] = self.exclusiveAccountCorpName!
        }
        if self.exclusiveAccountType != nil {
            map["exclusiveAccountType"] = self.exclusiveAccountType!
        }
        if self.extension_ != nil {
            map["extension"] = self.extension_!
        }
        if self.hideMobile != nil {
            map["hideMobile"] = self.hideMobile!
        }
        if self.hiredDate != nil {
            map["hiredDate"] = self.hiredDate!
        }
        if self.jobNumber != nil {
            map["jobNumber"] = self.jobNumber!
        }
        if self.leaderInDept != nil {
            var tmp : [Any] = []
            for k in self.leaderInDept! {
                tmp.append(k.toMap())
            }
            map["leaderInDept"] = tmp
        }
        if self.loginId != nil {
            map["loginId"] = self.loginId!
        }
        if self.managerUserid != nil {
            map["managerUserid"] = self.managerUserid!
        }
        if self.mobile != nil {
            map["mobile"] = self.mobile!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nickname != nil {
            map["nickname"] = self.nickname!
        }
        if self.orgEmail != nil {
            map["orgEmail"] = self.orgEmail!
        }
        if self.realAuthed != nil {
            map["realAuthed"] = self.realAuthed!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.roleList != nil {
            var tmp : [Any] = []
            for k in self.roleList! {
                tmp.append(k.toMap())
            }
            map["roleList"] = tmp
        }
        if self.senior != nil {
            map["senior"] = self.senior!
        }
        if self.stateCode != nil {
            map["stateCode"] = self.stateCode!
        }
        if self.telephone != nil {
            map["telephone"] = self.telephone!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.unionEmpExt != nil {
            map["unionEmpExt"] = self.unionEmpExt?.toMap()
        }
        if self.userid != nil {
            map["userid"] = self.userid!
        }
        if self.workPlace != nil {
            map["workPlace"] = self.workPlace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("active") && dict["active"] != nil {
            self.active = dict["active"] as! Bool
        }
        if dict.keys.contains("admin") && dict["admin"] != nil {
            self.admin = dict["admin"] as! Bool
        }
        if dict.keys.contains("avatar") && dict["avatar"] != nil {
            self.avatar = dict["avatar"] as! String
        }
        if dict.keys.contains("boss") && dict["boss"] != nil {
            self.boss = dict["boss"] as! Bool
        }
        if dict.keys.contains("deptIdList") && dict["deptIdList"] != nil {
            self.deptIdList = dict["deptIdList"] as! [Int64]
        }
        if dict.keys.contains("deptOrderList") && dict["deptOrderList"] != nil {
            var tmp : [GetUserResponseBody.DeptOrderList] = []
            for v in dict["deptOrderList"] as! [Any] {
                var model = GetUserResponseBody.DeptOrderList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deptOrderList = tmp
        }
        if dict.keys.contains("email") && dict["email"] != nil {
            self.email = dict["email"] as! String
        }
        if dict.keys.contains("exclusiveAccount") && dict["exclusiveAccount"] != nil {
            self.exclusiveAccount = dict["exclusiveAccount"] as! Bool
        }
        if dict.keys.contains("exclusiveAccountCorpId") && dict["exclusiveAccountCorpId"] != nil {
            self.exclusiveAccountCorpId = dict["exclusiveAccountCorpId"] as! String
        }
        if dict.keys.contains("exclusiveAccountCorpName") && dict["exclusiveAccountCorpName"] != nil {
            self.exclusiveAccountCorpName = dict["exclusiveAccountCorpName"] as! String
        }
        if dict.keys.contains("exclusiveAccountType") && dict["exclusiveAccountType"] != nil {
            self.exclusiveAccountType = dict["exclusiveAccountType"] as! String
        }
        if dict.keys.contains("extension") && dict["extension"] != nil {
            self.extension_ = dict["extension"] as! String
        }
        if dict.keys.contains("hideMobile") && dict["hideMobile"] != nil {
            self.hideMobile = dict["hideMobile"] as! Bool
        }
        if dict.keys.contains("hiredDate") && dict["hiredDate"] != nil {
            self.hiredDate = dict["hiredDate"] as! Int64
        }
        if dict.keys.contains("jobNumber") && dict["jobNumber"] != nil {
            self.jobNumber = dict["jobNumber"] as! String
        }
        if dict.keys.contains("leaderInDept") && dict["leaderInDept"] != nil {
            var tmp : [GetUserResponseBody.LeaderInDept] = []
            for v in dict["leaderInDept"] as! [Any] {
                var model = GetUserResponseBody.LeaderInDept()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.leaderInDept = tmp
        }
        if dict.keys.contains("loginId") && dict["loginId"] != nil {
            self.loginId = dict["loginId"] as! String
        }
        if dict.keys.contains("managerUserid") && dict["managerUserid"] != nil {
            self.managerUserid = dict["managerUserid"] as! String
        }
        if dict.keys.contains("mobile") && dict["mobile"] != nil {
            self.mobile = dict["mobile"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nickname") && dict["nickname"] != nil {
            self.nickname = dict["nickname"] as! String
        }
        if dict.keys.contains("orgEmail") && dict["orgEmail"] != nil {
            self.orgEmail = dict["orgEmail"] as! String
        }
        if dict.keys.contains("realAuthed") && dict["realAuthed"] != nil {
            self.realAuthed = dict["realAuthed"] as! Bool
        }
        if dict.keys.contains("remark") && dict["remark"] != nil {
            self.remark = dict["remark"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("roleList") && dict["roleList"] != nil {
            var tmp : [GetUserResponseBody.RoleList] = []
            for v in dict["roleList"] as! [Any] {
                var model = GetUserResponseBody.RoleList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.roleList = tmp
        }
        if dict.keys.contains("senior") && dict["senior"] != nil {
            self.senior = dict["senior"] as! Bool
        }
        if dict.keys.contains("stateCode") && dict["stateCode"] != nil {
            self.stateCode = dict["stateCode"] as! String
        }
        if dict.keys.contains("telephone") && dict["telephone"] != nil {
            self.telephone = dict["telephone"] as! String
        }
        if dict.keys.contains("title") && dict["title"] != nil {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("unionEmpExt") && dict["unionEmpExt"] != nil {
            var model = GetUserResponseBody.UnionEmpExt()
            model.fromMap(dict["unionEmpExt"] as! [String: Any])
            self.unionEmpExt = model
        }
        if dict.keys.contains("userid") && dict["userid"] != nil {
            self.userid = dict["userid"] as! String
        }
        if dict.keys.contains("workPlace") && dict["workPlace"] != nil {
            self.workPlace = dict["workPlace"] as! String
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class InsertRowsBeforeHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: InsertRowsBeforeHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = InsertRowsBeforeHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class InsertRowsBeforeShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class InsertRowsBeforeRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var row: Int64?

    public var rowCount: Int64?

    public var sheetId: String?

    public var tenantContext: InsertRowsBeforeRequest.TenantContext?

    public var workbookId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.row != nil {
            map["Row"] = self.row!
        }
        if self.rowCount != nil {
            map["RowCount"] = self.rowCount!
        }
        if self.sheetId != nil {
            map["SheetId"] = self.sheetId!
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workbookId != nil {
            map["WorkbookId"] = self.workbookId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Row") && dict["Row"] != nil {
            self.row = dict["Row"] as! Int64
        }
        if dict.keys.contains("RowCount") && dict["RowCount"] != nil {
            self.rowCount = dict["RowCount"] as! Int64
        }
        if dict.keys.contains("SheetId") && dict["SheetId"] != nil {
            self.sheetId = dict["SheetId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = InsertRowsBeforeRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkbookId") && dict["WorkbookId"] != nil {
            self.workbookId = dict["WorkbookId"] as! String
        }
    }
}

public class InsertRowsBeforeShrinkRequest : Tea.TeaModel {
    public var row: Int64?

    public var rowCount: Int64?

    public var sheetId: String?

    public var tenantContextShrink: String?

    public var workbookId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.row != nil {
            map["Row"] = self.row!
        }
        if self.rowCount != nil {
            map["RowCount"] = self.rowCount!
        }
        if self.sheetId != nil {
            map["SheetId"] = self.sheetId!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workbookId != nil {
            map["WorkbookId"] = self.workbookId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Row") && dict["Row"] != nil {
            self.row = dict["Row"] as! Int64
        }
        if dict.keys.contains("RowCount") && dict["RowCount"] != nil {
            self.rowCount = dict["RowCount"] as! Int64
        }
        if dict.keys.contains("SheetId") && dict["SheetId"] != nil {
            self.sheetId = dict["SheetId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkbookId") && dict["WorkbookId"] != nil {
            self.workbookId = dict["WorkbookId"] as! String
        }
    }
}

public class InsertRowsBeforeResponseBody : Tea.TeaModel {
    public var id: String?

    public var requestId: String?

    public override init() {
        super.init()
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
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class InsertRowsBeforeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertRowsBeforeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = InsertRowsBeforeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryOrgTodoTasksHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: QueryOrgTodoTasksHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = QueryOrgTodoTasksHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class QueryOrgTodoTasksShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class QueryOrgTodoTasksRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var tenantContext: QueryOrgTodoTasksRequest.TenantContext?

    public var isDone: Bool?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.isDone != nil {
            map["isDone"] = self.isDone!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = QueryOrgTodoTasksRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("isDone") && dict["isDone"] != nil {
            self.isDone = dict["isDone"] as! Bool
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class QueryOrgTodoTasksShrinkRequest : Tea.TeaModel {
    public var tenantContextShrink: String?

    public var isDone: Bool?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.isDone != nil {
            map["isDone"] = self.isDone!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("isDone") && dict["isDone"] != nil {
            self.isDone = dict["isDone"] as! Bool
        }
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class QueryOrgTodoTasksResponseBody : Tea.TeaModel {
    public class TodoCards : Tea.TeaModel {
        public class DetailUrl : Tea.TeaModel {
            public var appUrl: String?

            public var pcUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appUrl != nil {
                    map["appUrl"] = self.appUrl!
                }
                if self.pcUrl != nil {
                    map["pcUrl"] = self.pcUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("appUrl") && dict["appUrl"] != nil {
                    self.appUrl = dict["appUrl"] as! String
                }
                if dict.keys.contains("pcUrl") && dict["pcUrl"] != nil {
                    self.pcUrl = dict["pcUrl"] as! String
                }
            }
        }
        public var bizTag: String?

        public var createdTime: Int64?

        public var creatorId: String?

        public var detailUrl: QueryOrgTodoTasksResponseBody.TodoCards.DetailUrl?

        public var dueTime: Int64?

        public var isDone: Bool?

        public var modifiedTime: Int64?

        public var priority: Int32?

        public var sourceId: String?

        public var subject: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detailUrl?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizTag != nil {
                map["bizTag"] = self.bizTag!
            }
            if self.createdTime != nil {
                map["createdTime"] = self.createdTime!
            }
            if self.creatorId != nil {
                map["creatorId"] = self.creatorId!
            }
            if self.detailUrl != nil {
                map["detailUrl"] = self.detailUrl?.toMap()
            }
            if self.dueTime != nil {
                map["dueTime"] = self.dueTime!
            }
            if self.isDone != nil {
                map["isDone"] = self.isDone!
            }
            if self.modifiedTime != nil {
                map["modifiedTime"] = self.modifiedTime!
            }
            if self.priority != nil {
                map["priority"] = self.priority!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bizTag") && dict["bizTag"] != nil {
                self.bizTag = dict["bizTag"] as! String
            }
            if dict.keys.contains("createdTime") && dict["createdTime"] != nil {
                self.createdTime = dict["createdTime"] as! Int64
            }
            if dict.keys.contains("creatorId") && dict["creatorId"] != nil {
                self.creatorId = dict["creatorId"] as! String
            }
            if dict.keys.contains("detailUrl") && dict["detailUrl"] != nil {
                var model = QueryOrgTodoTasksResponseBody.TodoCards.DetailUrl()
                model.fromMap(dict["detailUrl"] as! [String: Any])
                self.detailUrl = model
            }
            if dict.keys.contains("dueTime") && dict["dueTime"] != nil {
                self.dueTime = dict["dueTime"] as! Int64
            }
            if dict.keys.contains("isDone") && dict["isDone"] != nil {
                self.isDone = dict["isDone"] as! Bool
            }
            if dict.keys.contains("modifiedTime") && dict["modifiedTime"] != nil {
                self.modifiedTime = dict["modifiedTime"] as! Int64
            }
            if dict.keys.contains("priority") && dict["priority"] != nil {
                self.priority = dict["priority"] as! Int32
            }
            if dict.keys.contains("sourceId") && dict["sourceId"] != nil {
                self.sourceId = dict["sourceId"] as! String
            }
            if dict.keys.contains("subject") && dict["subject"] != nil {
                self.subject = dict["subject"] as! String
            }
            if dict.keys.contains("taskId") && dict["taskId"] != nil {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var todoCards: [QueryOrgTodoTasksResponseBody.TodoCards]?

    public override init() {
        super.init()
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
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.todoCards != nil {
            var tmp : [Any] = []
            for k in self.todoCards! {
                tmp.append(k.toMap())
            }
            map["todoCards"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nextToken") && dict["nextToken"] != nil {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("todoCards") && dict["todoCards"] != nil {
            var tmp : [QueryOrgTodoTasksResponseBody.TodoCards] = []
            for v in dict["todoCards"] as! [Any] {
                var model = QueryOrgTodoTasksResponseBody.TodoCards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.todoCards = tmp
        }
    }
}

public class QueryOrgTodoTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrgTodoTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryOrgTodoTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTodoTaskHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: UpdateTodoTaskHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = UpdateTodoTaskHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class UpdateTodoTaskShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class UpdateTodoTaskRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var tenantContext: UpdateTodoTaskRequest.TenantContext?

    public var description_: String?

    public var done: Bool?

    public var dueTime: Int64?

    public var executorIds: [String]?

    public var participantIds: [String]?

    public var subject: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.done != nil {
            map["done"] = self.done!
        }
        if self.dueTime != nil {
            map["dueTime"] = self.dueTime!
        }
        if self.executorIds != nil {
            map["executorIds"] = self.executorIds!
        }
        if self.participantIds != nil {
            map["participantIds"] = self.participantIds!
        }
        if self.subject != nil {
            map["subject"] = self.subject!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = UpdateTodoTaskRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("done") && dict["done"] != nil {
            self.done = dict["done"] as! Bool
        }
        if dict.keys.contains("dueTime") && dict["dueTime"] != nil {
            self.dueTime = dict["dueTime"] as! Int64
        }
        if dict.keys.contains("executorIds") && dict["executorIds"] != nil {
            self.executorIds = dict["executorIds"] as! [String]
        }
        if dict.keys.contains("participantIds") && dict["participantIds"] != nil {
            self.participantIds = dict["participantIds"] as! [String]
        }
        if dict.keys.contains("subject") && dict["subject"] != nil {
            self.subject = dict["subject"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class UpdateTodoTaskShrinkRequest : Tea.TeaModel {
    public var tenantContextShrink: String?

    public var description_: String?

    public var done: Bool?

    public var dueTime: Int64?

    public var executorIdsShrink: String?

    public var participantIdsShrink: String?

    public var subject: String?

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
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.done != nil {
            map["done"] = self.done!
        }
        if self.dueTime != nil {
            map["dueTime"] = self.dueTime!
        }
        if self.executorIdsShrink != nil {
            map["executorIds"] = self.executorIdsShrink!
        }
        if self.participantIdsShrink != nil {
            map["participantIds"] = self.participantIdsShrink!
        }
        if self.subject != nil {
            map["subject"] = self.subject!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("done") && dict["done"] != nil {
            self.done = dict["done"] as! Bool
        }
        if dict.keys.contains("dueTime") && dict["dueTime"] != nil {
            self.dueTime = dict["dueTime"] as! Int64
        }
        if dict.keys.contains("executorIds") && dict["executorIds"] != nil {
            self.executorIdsShrink = dict["executorIds"] as! String
        }
        if dict.keys.contains("participantIds") && dict["participantIds"] != nil {
            self.participantIdsShrink = dict["participantIds"] as! String
        }
        if dict.keys.contains("subject") && dict["subject"] != nil {
            self.subject = dict["subject"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class UpdateTodoTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Bool
        }
    }
}

public class UpdateTodoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTodoTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTodoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTodoTaskExecutorStatusHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: UpdateTodoTaskExecutorStatusHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = UpdateTodoTaskExecutorStatusHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class UpdateTodoTaskExecutorStatusShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class UpdateTodoTaskExecutorStatusRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public class ExecutorStatusList : Tea.TeaModel {
        public var id: String?

        public var isDone: Bool?

        public override init() {
            super.init()
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
                map["id"] = self.id!
            }
            if self.isDone != nil {
                map["isDone"] = self.isDone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("isDone") && dict["isDone"] != nil {
                self.isDone = dict["isDone"] as! Bool
            }
        }
    }
    public var tenantContext: UpdateTodoTaskExecutorStatusRequest.TenantContext?

    public var executorStatusList: [UpdateTodoTaskExecutorStatusRequest.ExecutorStatusList]?

    public var operatorId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.executorStatusList != nil {
            var tmp : [Any] = []
            for k in self.executorStatusList! {
                tmp.append(k.toMap())
            }
            map["executorStatusList"] = tmp
        }
        if self.operatorId != nil {
            map["operatorId"] = self.operatorId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = UpdateTodoTaskExecutorStatusRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("executorStatusList") && dict["executorStatusList"] != nil {
            var tmp : [UpdateTodoTaskExecutorStatusRequest.ExecutorStatusList] = []
            for v in dict["executorStatusList"] as! [Any] {
                var model = UpdateTodoTaskExecutorStatusRequest.ExecutorStatusList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.executorStatusList = tmp
        }
        if dict.keys.contains("operatorId") && dict["operatorId"] != nil {
            self.operatorId = dict["operatorId"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class UpdateTodoTaskExecutorStatusShrinkRequest : Tea.TeaModel {
    public var tenantContextShrink: String?

    public var executorStatusListShrink: String?

    public var operatorId: String?

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
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.executorStatusListShrink != nil {
            map["executorStatusList"] = self.executorStatusListShrink!
        }
        if self.operatorId != nil {
            map["operatorId"] = self.operatorId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("executorStatusList") && dict["executorStatusList"] != nil {
            self.executorStatusListShrink = dict["executorStatusList"] as! String
        }
        if dict.keys.contains("operatorId") && dict["operatorId"] != nil {
            self.operatorId = dict["operatorId"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class UpdateTodoTaskExecutorStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") && dict["result"] != nil {
            self.result = dict["result"] as! Bool
        }
    }
}

public class UpdateTodoTaskExecutorStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTodoTaskExecutorStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateTodoTaskExecutorStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkspaceDocMembersHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: UpdateWorkspaceDocMembersHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = UpdateWorkspaceDocMembersHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class UpdateWorkspaceDocMembersShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class UpdateWorkspaceDocMembersRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberId: String?

        public var memberType: String?

        public var roleType: String?

        public override init() {
            super.init()
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
            if self.memberType != nil {
                map["MemberType"] = self.memberType!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("MemberType") && dict["MemberType"] != nil {
                self.memberType = dict["MemberType"] as! String
            }
            if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
                self.roleType = dict["RoleType"] as! String
            }
        }
    }
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var members: [UpdateWorkspaceDocMembersRequest.Members]?

    public var nodeId: String?

    public var tenantContext: UpdateWorkspaceDocMembersRequest.TenantContext?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [UpdateWorkspaceDocMembersRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = UpdateWorkspaceDocMembersRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = UpdateWorkspaceDocMembersRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class UpdateWorkspaceDocMembersShrinkRequest : Tea.TeaModel {
    public var membersShrink: String?

    public var nodeId: String?

    public var tenantContextShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.membersShrink != nil {
            map["Members"] = self.membersShrink!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.membersShrink = dict["Members"] as! String
        }
        if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
            self.nodeId = dict["NodeId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class UpdateWorkspaceDocMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateWorkspaceDocMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkspaceDocMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateWorkspaceDocMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkspaceMembersHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: UpdateWorkspaceMembersHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = UpdateWorkspaceMembersHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class UpdateWorkspaceMembersShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class UpdateWorkspaceMembersRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberId: String?

        public var memberType: String?

        public var roleType: String?

        public override init() {
            super.init()
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
            if self.memberType != nil {
                map["MemberType"] = self.memberType!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("MemberType") && dict["MemberType"] != nil {
                self.memberType = dict["MemberType"] as! String
            }
            if dict.keys.contains("RoleType") && dict["RoleType"] != nil {
                self.roleType = dict["RoleType"] as! String
            }
        }
    }
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var members: [UpdateWorkspaceMembersRequest.Members]?

    public var tenantContext: UpdateWorkspaceMembersRequest.TenantContext?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [UpdateWorkspaceMembersRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = UpdateWorkspaceMembersRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = UpdateWorkspaceMembersRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class UpdateWorkspaceMembersShrinkRequest : Tea.TeaModel {
    public var membersShrink: String?

    public var tenantContextShrink: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.membersShrink != nil {
            map["Members"] = self.membersShrink!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.membersShrink = dict["Members"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class UpdateWorkspaceMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateWorkspaceMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkspaceMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateWorkspaceMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
