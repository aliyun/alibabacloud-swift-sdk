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
