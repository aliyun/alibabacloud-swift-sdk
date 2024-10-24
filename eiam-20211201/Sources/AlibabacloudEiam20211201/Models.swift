import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddUserToOrganizationalUnitsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitIds: [String]?

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
        if self.organizationalUnitIds != nil {
            map["OrganizationalUnitIds"] = self.organizationalUnitIds!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitIds") {
            self.organizationalUnitIds = dict["OrganizationalUnitIds"] as! [String]
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class AddUserToOrganizationalUnitsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AddUserToOrganizationalUnitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserToOrganizationalUnitsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddUserToOrganizationalUnitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUsersToGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class AddUsersToGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUsersToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AuthorizeApplicationToGroupsRequest : Tea.TeaModel {
    public var applicationId: String?

    public var groupIds: [String]?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.groupIds != nil {
            map["GroupIds"] = self.groupIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("GroupIds") {
            self.groupIds = dict["GroupIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class AuthorizeApplicationToGroupsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AuthorizeApplicationToGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeApplicationToGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AuthorizeApplicationToGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AuthorizeApplicationToOrganizationalUnitsRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public var organizationalUnitIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.organizationalUnitIds != nil {
            map["OrganizationalUnitIds"] = self.organizationalUnitIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitIds") {
            self.organizationalUnitIds = dict["OrganizationalUnitIds"] as! [String]
        }
    }
}

public class AuthorizeApplicationToOrganizationalUnitsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AuthorizeApplicationToOrganizationalUnitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeApplicationToOrganizationalUnitsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AuthorizeApplicationToOrganizationalUnitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AuthorizeApplicationToUsersRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class AuthorizeApplicationToUsersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AuthorizeApplicationToUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeApplicationToUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AuthorizeApplicationToUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicationRequest : Tea.TeaModel {
    public var applicationName: String?

    public var applicationSourceType: String?

    public var applicationTemplateId: String?

    public var description_: String?

    public var instanceId: String?

    public var logoUrl: String?

    public var ssoType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.applicationSourceType != nil {
            map["ApplicationSourceType"] = self.applicationSourceType!
        }
        if self.applicationTemplateId != nil {
            map["ApplicationTemplateId"] = self.applicationTemplateId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.logoUrl != nil {
            map["LogoUrl"] = self.logoUrl!
        }
        if self.ssoType != nil {
            map["SsoType"] = self.ssoType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("ApplicationSourceType") {
            self.applicationSourceType = dict["ApplicationSourceType"] as! String
        }
        if dict.keys.contains("ApplicationTemplateId") {
            self.applicationTemplateId = dict["ApplicationTemplateId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LogoUrl") {
            self.logoUrl = dict["LogoUrl"] as! String
        }
        if dict.keys.contains("SsoType") {
            self.ssoType = dict["SsoType"] as! String
        }
    }
}

public class CreateApplicationResponseBody : Tea.TeaModel {
    public var applicationId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicationClientSecretRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class CreateApplicationClientSecretResponseBody : Tea.TeaModel {
    public class ApplicationClientSecret : Tea.TeaModel {
        public var clientId: String?

        public var clientSecret: String?

        public var secretId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.clientSecret != nil {
                map["ClientSecret"] = self.clientSecret!
            }
            if self.secretId != nil {
                map["SecretId"] = self.secretId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("ClientSecret") {
                self.clientSecret = dict["ClientSecret"] as! String
            }
            if dict.keys.contains("SecretId") {
                self.secretId = dict["SecretId"] as! String
            }
        }
    }
    public var applicationClientSecret: CreateApplicationClientSecretResponseBody.ApplicationClientSecret?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationClientSecret?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationClientSecret != nil {
            map["ApplicationClientSecret"] = self.applicationClientSecret?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationClientSecret") {
            var model = CreateApplicationClientSecretResponseBody.ApplicationClientSecret()
            model.fromMap(dict["ApplicationClientSecret"] as! [String: Any])
            self.applicationClientSecret = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApplicationClientSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationClientSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateApplicationClientSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public class Filing : Tea.TeaModel {
        public var icpNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.icpNumber != nil {
                map["IcpNumber"] = self.icpNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IcpNumber") {
                self.icpNumber = dict["IcpNumber"] as! String
            }
        }
    }
    public var domain: String?

    public var filing: CreateDomainRequest.Filing?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filing?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.filing != nil {
            map["Filing"] = self.filing?.toMap()
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Filing") {
            var model = CreateDomainRequest.Filing()
            model.fromMap(dict["Filing"] as! [String: Any])
            self.filing = model
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class CreateDomainResponseBody : Tea.TeaModel {
    public var domainId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDomainProxyTokenRequest : Tea.TeaModel {
    public var domainId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class CreateDomainProxyTokenResponseBody : Tea.TeaModel {
    public var domainProxyTokenId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainProxyTokenId != nil {
            map["DomainProxyTokenId"] = self.domainProxyTokenId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainProxyTokenId") {
            self.domainProxyTokenId = dict["DomainProxyTokenId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDomainProxyTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDomainProxyTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDomainProxyTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var groupExternalId: String?

    public var groupName: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
        if self.groupExternalId != nil {
            map["GroupExternalId"] = self.groupExternalId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupExternalId") {
            self.groupExternalId = dict["GroupExternalId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public var groupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateInstanceRequest : Tea.TeaModel {
    public var description_: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNetworkAccessEndpointRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var networkAccessEndpointName: String?

    public var vSwitchIds: [String]?

    public var vpcId: String?

    public var vpcRegionId: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.networkAccessEndpointName != nil {
            map["NetworkAccessEndpointName"] = self.networkAccessEndpointName!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpcRegionId != nil {
            map["VpcRegionId"] = self.vpcRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkAccessEndpointName") {
            self.networkAccessEndpointName = dict["NetworkAccessEndpointName"] as! String
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VpcRegionId") {
            self.vpcRegionId = dict["VpcRegionId"] as! String
        }
    }
}

public class CreateNetworkAccessEndpointResponseBody : Tea.TeaModel {
    public var networkAccessEndpointId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkAccessEndpointId != nil {
            map["NetworkAccessEndpointId"] = self.networkAccessEndpointId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkAccessEndpointId") {
            self.networkAccessEndpointId = dict["NetworkAccessEndpointId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateNetworkAccessEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNetworkAccessEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateNetworkAccessEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOrganizationalUnitRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var organizationalUnitExternalId: String?

    public var organizationalUnitName: String?

    public var parentId: String?

    public override init() {
        super.init()
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
        if self.organizationalUnitExternalId != nil {
            map["OrganizationalUnitExternalId"] = self.organizationalUnitExternalId!
        }
        if self.organizationalUnitName != nil {
            map["OrganizationalUnitName"] = self.organizationalUnitName!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitExternalId") {
            self.organizationalUnitExternalId = dict["OrganizationalUnitExternalId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitName") {
            self.organizationalUnitName = dict["OrganizationalUnitName"] as! String
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
    }
}

public class CreateOrganizationalUnitResponseBody : Tea.TeaModel {
    public var organizationalUnitId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrganizationalUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateOrganizationalUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public class CustomFields : Tea.TeaModel {
        public var fieldName: String?

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
            if self.fieldName != nil {
                map["FieldName"] = self.fieldName!
            }
            if self.fieldValue != nil {
                map["FieldValue"] = self.fieldValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FieldName") {
                self.fieldName = dict["FieldName"] as! String
            }
            if dict.keys.contains("FieldValue") {
                self.fieldValue = dict["FieldValue"] as! String
            }
        }
    }
    public class PasswordInitializationConfig : Tea.TeaModel {
        public var passwordForcedUpdateStatus: String?

        public var passwordInitializationPolicyPriority: String?

        public var passwordInitializationType: String?

        public var userNotificationChannels: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.passwordForcedUpdateStatus != nil {
                map["PasswordForcedUpdateStatus"] = self.passwordForcedUpdateStatus!
            }
            if self.passwordInitializationPolicyPriority != nil {
                map["PasswordInitializationPolicyPriority"] = self.passwordInitializationPolicyPriority!
            }
            if self.passwordInitializationType != nil {
                map["PasswordInitializationType"] = self.passwordInitializationType!
            }
            if self.userNotificationChannels != nil {
                map["UserNotificationChannels"] = self.userNotificationChannels!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PasswordForcedUpdateStatus") {
                self.passwordForcedUpdateStatus = dict["PasswordForcedUpdateStatus"] as! String
            }
            if dict.keys.contains("PasswordInitializationPolicyPriority") {
                self.passwordInitializationPolicyPriority = dict["PasswordInitializationPolicyPriority"] as! String
            }
            if dict.keys.contains("PasswordInitializationType") {
                self.passwordInitializationType = dict["PasswordInitializationType"] as! String
            }
            if dict.keys.contains("UserNotificationChannels") {
                self.userNotificationChannels = dict["UserNotificationChannels"] as! [String]
            }
        }
    }
    public var customFields: [CreateUserRequest.CustomFields]?

    public var description_: String?

    public var displayName: String?

    public var email: String?

    public var emailVerified: Bool?

    public var instanceId: String?

    public var organizationalUnitIds: [String]?

    public var password: String?

    public var passwordInitializationConfig: CreateUserRequest.PasswordInitializationConfig?

    public var phoneNumber: String?

    public var phoneNumberVerified: Bool?

    public var phoneRegion: String?

    public var primaryOrganizationalUnitId: String?

    public var userExternalId: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordInitializationConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customFields != nil {
            var tmp : [Any] = []
            for k in self.customFields! {
                tmp.append(k.toMap())
            }
            map["CustomFields"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.emailVerified != nil {
            map["EmailVerified"] = self.emailVerified!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.organizationalUnitIds != nil {
            map["OrganizationalUnitIds"] = self.organizationalUnitIds!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordInitializationConfig != nil {
            map["PasswordInitializationConfig"] = self.passwordInitializationConfig?.toMap()
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.phoneNumberVerified != nil {
            map["PhoneNumberVerified"] = self.phoneNumberVerified!
        }
        if self.phoneRegion != nil {
            map["PhoneRegion"] = self.phoneRegion!
        }
        if self.primaryOrganizationalUnitId != nil {
            map["PrimaryOrganizationalUnitId"] = self.primaryOrganizationalUnitId!
        }
        if self.userExternalId != nil {
            map["UserExternalId"] = self.userExternalId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomFields") {
            var tmp : [CreateUserRequest.CustomFields] = []
            for v in dict["CustomFields"] as! [Any] {
                var model = CreateUserRequest.CustomFields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customFields = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EmailVerified") {
            self.emailVerified = dict["EmailVerified"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitIds") {
            self.organizationalUnitIds = dict["OrganizationalUnitIds"] as! [String]
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PasswordInitializationConfig") {
            var model = CreateUserRequest.PasswordInitializationConfig()
            model.fromMap(dict["PasswordInitializationConfig"] as! [String: Any])
            self.passwordInitializationConfig = model
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("PhoneNumberVerified") {
            self.phoneNumberVerified = dict["PhoneNumberVerified"] as! Bool
        }
        if dict.keys.contains("PhoneRegion") {
            self.phoneRegion = dict["PhoneRegion"] as! String
        }
        if dict.keys.contains("PrimaryOrganizationalUnitId") {
            self.primaryOrganizationalUnitId = dict["PrimaryOrganizationalUnitId"] as! String
        }
        if dict.keys.contains("UserExternalId") {
            self.userExternalId = dict["UserExternalId"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DeleteApplicationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationClientSecretRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public var secretId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.secretId != nil {
            map["SecretId"] = self.secretId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecretId") {
            self.secretId = dict["SecretId"] as! String
        }
    }
}

public class DeleteApplicationClientSecretResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteApplicationClientSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationClientSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteApplicationClientSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainRequest : Tea.TeaModel {
    public var domainId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainProxyTokenRequest : Tea.TeaModel {
    public var domainId: String?

    public var domainProxyTokenId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.domainProxyTokenId != nil {
            map["DomainProxyTokenId"] = self.domainProxyTokenId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("DomainProxyTokenId") {
            self.domainProxyTokenId = dict["DomainProxyTokenId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DeleteDomainProxyTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteDomainProxyTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainProxyTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDomainProxyTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DeleteGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNetworkAccessEndpointRequest : Tea.TeaModel {
    public var instanceId: String?

    public var networkAccessEndpointId: String?

    public override init() {
        super.init()
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
        if self.networkAccessEndpointId != nil {
            map["NetworkAccessEndpointId"] = self.networkAccessEndpointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkAccessEndpointId") {
            self.networkAccessEndpointId = dict["NetworkAccessEndpointId"] as! String
        }
    }
}

public class DeleteNetworkAccessEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteNetworkAccessEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNetworkAccessEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteNetworkAccessEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOrganizationalUnitRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitId: String?

    public override init() {
        super.init()
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
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
    }
}

public class DeleteOrganizationalUnitResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOrganizationalUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteOrganizationalUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOrganizationalUnitChildrenRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitId: String?

    public override init() {
        super.init()
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
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
    }
}

public class DeleteOrganizationalUnitChildrenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteOrganizationalUnitChildrenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOrganizationalUnitChildrenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteOrganizationalUnitChildrenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DisableApplicationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableApplicationApiInvokeRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DisableApplicationApiInvokeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableApplicationApiInvokeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableApplicationApiInvokeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableApplicationApiInvokeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableApplicationClientSecretRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public var secretId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.secretId != nil {
            map["SecretId"] = self.secretId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecretId") {
            self.secretId = dict["SecretId"] as! String
        }
    }
}

public class DisableApplicationClientSecretResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableApplicationClientSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableApplicationClientSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableApplicationClientSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableApplicationProvisioningRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DisableApplicationProvisioningResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableApplicationProvisioningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableApplicationProvisioningResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableApplicationProvisioningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableApplicationSsoRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DisableApplicationSsoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableApplicationSsoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableApplicationSsoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableApplicationSsoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableDomainProxyTokenRequest : Tea.TeaModel {
    public var domainId: String?

    public var domainProxyTokenId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.domainProxyTokenId != nil {
            map["DomainProxyTokenId"] = self.domainProxyTokenId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("DomainProxyTokenId") {
            self.domainProxyTokenId = dict["DomainProxyTokenId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DisableDomainProxyTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableDomainProxyTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableDomainProxyTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableDomainProxyTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableInitDomainAutoRedirectRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DisableInitDomainAutoRedirectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableInitDomainAutoRedirectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableInitDomainAutoRedirectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableInitDomainAutoRedirectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableUserRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DisableUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class EnableApplicationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableApplicationApiInvokeRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class EnableApplicationApiInvokeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableApplicationApiInvokeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableApplicationApiInvokeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableApplicationApiInvokeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableApplicationClientSecretRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public var secretId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.secretId != nil {
            map["SecretId"] = self.secretId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecretId") {
            self.secretId = dict["SecretId"] as! String
        }
    }
}

public class EnableApplicationClientSecretResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableApplicationClientSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableApplicationClientSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableApplicationClientSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableApplicationProvisioningRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class EnableApplicationProvisioningResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableApplicationProvisioningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableApplicationProvisioningResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableApplicationProvisioningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableApplicationSsoRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class EnableApplicationSsoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableApplicationSsoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableApplicationSsoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableApplicationSsoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableDomainProxyTokenRequest : Tea.TeaModel {
    public var domainId: String?

    public var domainProxyTokenId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.domainProxyTokenId != nil {
            map["DomainProxyTokenId"] = self.domainProxyTokenId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("DomainProxyTokenId") {
            self.domainProxyTokenId = dict["DomainProxyTokenId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class EnableDomainProxyTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableDomainProxyTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableDomainProxyTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableDomainProxyTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableInitDomainAutoRedirectRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class EnableInitDomainAutoRedirectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableInitDomainAutoRedirectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableInitDomainAutoRedirectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableInitDomainAutoRedirectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableUserRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class EnableUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public var apiInvokeStatus: String?

        public var applicationId: String?

        public var applicationName: String?

        public var applicationSourceType: String?

        public var applicationTemplateId: String?

        public var applicationVisibility: [String]?

        public var authorizationType: String?

        public var clientId: String?

        public var createTime: Int64?

        public var description_: String?

        public var features: String?

        public var instanceId: String?

        public var logoUrl: String?

        public var managedServiceCode: String?

        public var serviceManaged: Bool?

        public var ssoType: String?

        public var status: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiInvokeStatus != nil {
                map["ApiInvokeStatus"] = self.apiInvokeStatus!
            }
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.applicationSourceType != nil {
                map["ApplicationSourceType"] = self.applicationSourceType!
            }
            if self.applicationTemplateId != nil {
                map["ApplicationTemplateId"] = self.applicationTemplateId!
            }
            if self.applicationVisibility != nil {
                map["ApplicationVisibility"] = self.applicationVisibility!
            }
            if self.authorizationType != nil {
                map["AuthorizationType"] = self.authorizationType!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.features != nil {
                map["Features"] = self.features!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.logoUrl != nil {
                map["LogoUrl"] = self.logoUrl!
            }
            if self.managedServiceCode != nil {
                map["ManagedServiceCode"] = self.managedServiceCode!
            }
            if self.serviceManaged != nil {
                map["ServiceManaged"] = self.serviceManaged!
            }
            if self.ssoType != nil {
                map["SsoType"] = self.ssoType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiInvokeStatus") {
                self.apiInvokeStatus = dict["ApiInvokeStatus"] as! String
            }
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("ApplicationSourceType") {
                self.applicationSourceType = dict["ApplicationSourceType"] as! String
            }
            if dict.keys.contains("ApplicationTemplateId") {
                self.applicationTemplateId = dict["ApplicationTemplateId"] as! String
            }
            if dict.keys.contains("ApplicationVisibility") {
                self.applicationVisibility = dict["ApplicationVisibility"] as! [String]
            }
            if dict.keys.contains("AuthorizationType") {
                self.authorizationType = dict["AuthorizationType"] as! String
            }
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Features") {
                self.features = dict["Features"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LogoUrl") {
                self.logoUrl = dict["LogoUrl"] as! String
            }
            if dict.keys.contains("ManagedServiceCode") {
                self.managedServiceCode = dict["ManagedServiceCode"] as! String
            }
            if dict.keys.contains("ServiceManaged") {
                self.serviceManaged = dict["ServiceManaged"] as! Bool
            }
            if dict.keys.contains("SsoType") {
                self.ssoType = dict["SsoType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var application: GetApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            var model = GetApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationGrantScopeRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetApplicationGrantScopeResponseBody : Tea.TeaModel {
    public class ApplicationGrantScope : Tea.TeaModel {
        public var grantScopes: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.grantScopes != nil {
                map["GrantScopes"] = self.grantScopes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GrantScopes") {
                self.grantScopes = dict["GrantScopes"] as! [String]
            }
        }
    }
    public var applicationGrantScope: GetApplicationGrantScopeResponseBody.ApplicationGrantScope?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationGrantScope?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationGrantScope != nil {
            map["ApplicationGrantScope"] = self.applicationGrantScope?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationGrantScope") {
            var model = GetApplicationGrantScopeResponseBody.ApplicationGrantScope()
            model.fromMap(dict["ApplicationGrantScope"] as! [String: Any])
            self.applicationGrantScope = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApplicationGrantScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationGrantScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetApplicationGrantScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationProvisioningConfigRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetApplicationProvisioningConfigResponseBody : Tea.TeaModel {
    public class ApplicationProvisioningConfig : Tea.TeaModel {
        public class CallbackProvisioningConfig : Tea.TeaModel {
            public var callbackUrl: String?

            public var encryptKey: String?

            public var encryptRequired: Bool?

            public var listenEventScopes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callbackUrl != nil {
                    map["CallbackUrl"] = self.callbackUrl!
                }
                if self.encryptKey != nil {
                    map["EncryptKey"] = self.encryptKey!
                }
                if self.encryptRequired != nil {
                    map["EncryptRequired"] = self.encryptRequired!
                }
                if self.listenEventScopes != nil {
                    map["ListenEventScopes"] = self.listenEventScopes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallbackUrl") {
                    self.callbackUrl = dict["CallbackUrl"] as! String
                }
                if dict.keys.contains("EncryptKey") {
                    self.encryptKey = dict["EncryptKey"] as! String
                }
                if dict.keys.contains("EncryptRequired") {
                    self.encryptRequired = dict["EncryptRequired"] as! Bool
                }
                if dict.keys.contains("ListenEventScopes") {
                    self.listenEventScopes = dict["ListenEventScopes"] as! [String]
                }
            }
        }
        public class ScimProvisioningConfig : Tea.TeaModel {
            public class AuthnConfiguration : Tea.TeaModel {
                public class AuthnParam : Tea.TeaModel {
                    public var accessToken: String?

                    public var authnMethod: String?

                    public var clientId: String?

                    public var clientSecret: String?

                    public var tokenEndpoint: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessToken != nil {
                            map["AccessToken"] = self.accessToken!
                        }
                        if self.authnMethod != nil {
                            map["AuthnMethod"] = self.authnMethod!
                        }
                        if self.clientId != nil {
                            map["ClientId"] = self.clientId!
                        }
                        if self.clientSecret != nil {
                            map["ClientSecret"] = self.clientSecret!
                        }
                        if self.tokenEndpoint != nil {
                            map["TokenEndpoint"] = self.tokenEndpoint!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessToken") {
                            self.accessToken = dict["AccessToken"] as! String
                        }
                        if dict.keys.contains("AuthnMethod") {
                            self.authnMethod = dict["AuthnMethod"] as! String
                        }
                        if dict.keys.contains("ClientId") {
                            self.clientId = dict["ClientId"] as! String
                        }
                        if dict.keys.contains("ClientSecret") {
                            self.clientSecret = dict["ClientSecret"] as! String
                        }
                        if dict.keys.contains("TokenEndpoint") {
                            self.tokenEndpoint = dict["TokenEndpoint"] as! String
                        }
                    }
                }
                public var authnMode: String?

                public var authnParam: GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig.ScimProvisioningConfig.AuthnConfiguration.AuthnParam?

                public var grantType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.authnParam?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authnMode != nil {
                        map["AuthnMode"] = self.authnMode!
                    }
                    if self.authnParam != nil {
                        map["AuthnParam"] = self.authnParam?.toMap()
                    }
                    if self.grantType != nil {
                        map["GrantType"] = self.grantType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AuthnMode") {
                        self.authnMode = dict["AuthnMode"] as! String
                    }
                    if dict.keys.contains("AuthnParam") {
                        var model = GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig.ScimProvisioningConfig.AuthnConfiguration.AuthnParam()
                        model.fromMap(dict["AuthnParam"] as! [String: Any])
                        self.authnParam = model
                    }
                    if dict.keys.contains("GrantType") {
                        self.grantType = dict["GrantType"] as! String
                    }
                }
            }
            public var authnConfiguration: GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig.ScimProvisioningConfig.AuthnConfiguration?

            public var fullPushScopes: [String]?

            public var provisioningActions: [String]?

            public var scimBaseUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.authnConfiguration?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authnConfiguration != nil {
                    map["AuthnConfiguration"] = self.authnConfiguration?.toMap()
                }
                if self.fullPushScopes != nil {
                    map["FullPushScopes"] = self.fullPushScopes!
                }
                if self.provisioningActions != nil {
                    map["ProvisioningActions"] = self.provisioningActions!
                }
                if self.scimBaseUrl != nil {
                    map["ScimBaseUrl"] = self.scimBaseUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthnConfiguration") {
                    var model = GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig.ScimProvisioningConfig.AuthnConfiguration()
                    model.fromMap(dict["AuthnConfiguration"] as! [String: Any])
                    self.authnConfiguration = model
                }
                if dict.keys.contains("FullPushScopes") {
                    self.fullPushScopes = dict["FullPushScopes"] as! [String]
                }
                if dict.keys.contains("ProvisioningActions") {
                    self.provisioningActions = dict["ProvisioningActions"] as! [String]
                }
                if dict.keys.contains("ScimBaseUrl") {
                    self.scimBaseUrl = dict["ScimBaseUrl"] as! String
                }
            }
        }
        public var applicationId: String?

        public var callbackProvisioningConfig: GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig.CallbackProvisioningConfig?

        public var configOperateMode: String?

        public var instanceId: String?

        public var provisionJwksEndpoint: String?

        public var provisionPassword: Bool?

        public var provisionProtocolType: String?

        public var scimProvisioningConfig: GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig.ScimProvisioningConfig?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.callbackProvisioningConfig?.validate()
            try self.scimProvisioningConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.callbackProvisioningConfig != nil {
                map["CallbackProvisioningConfig"] = self.callbackProvisioningConfig?.toMap()
            }
            if self.configOperateMode != nil {
                map["ConfigOperateMode"] = self.configOperateMode!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.provisionJwksEndpoint != nil {
                map["ProvisionJwksEndpoint"] = self.provisionJwksEndpoint!
            }
            if self.provisionPassword != nil {
                map["ProvisionPassword"] = self.provisionPassword!
            }
            if self.provisionProtocolType != nil {
                map["ProvisionProtocolType"] = self.provisionProtocolType!
            }
            if self.scimProvisioningConfig != nil {
                map["ScimProvisioningConfig"] = self.scimProvisioningConfig?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("CallbackProvisioningConfig") {
                var model = GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig.CallbackProvisioningConfig()
                model.fromMap(dict["CallbackProvisioningConfig"] as! [String: Any])
                self.callbackProvisioningConfig = model
            }
            if dict.keys.contains("ConfigOperateMode") {
                self.configOperateMode = dict["ConfigOperateMode"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ProvisionJwksEndpoint") {
                self.provisionJwksEndpoint = dict["ProvisionJwksEndpoint"] as! String
            }
            if dict.keys.contains("ProvisionPassword") {
                self.provisionPassword = dict["ProvisionPassword"] as! Bool
            }
            if dict.keys.contains("ProvisionProtocolType") {
                self.provisionProtocolType = dict["ProvisionProtocolType"] as! String
            }
            if dict.keys.contains("ScimProvisioningConfig") {
                var model = GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig.ScimProvisioningConfig()
                model.fromMap(dict["ScimProvisioningConfig"] as! [String: Any])
                self.scimProvisioningConfig = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var applicationProvisioningConfig: GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationProvisioningConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationProvisioningConfig != nil {
            map["ApplicationProvisioningConfig"] = self.applicationProvisioningConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationProvisioningConfig") {
            var model = GetApplicationProvisioningConfigResponseBody.ApplicationProvisioningConfig()
            model.fromMap(dict["ApplicationProvisioningConfig"] as! [String: Any])
            self.applicationProvisioningConfig = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApplicationProvisioningConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationProvisioningConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetApplicationProvisioningConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationProvisioningScopeRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetApplicationProvisioningScopeResponseBody : Tea.TeaModel {
    public class ApplicationProvisioningScope : Tea.TeaModel {
        public var groupIds: [String]?

        public var maxQuota: Int32?

        public var organizationalUnitIds: [String]?

        public var usedQuota: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupIds != nil {
                map["GroupIds"] = self.groupIds!
            }
            if self.maxQuota != nil {
                map["MaxQuota"] = self.maxQuota!
            }
            if self.organizationalUnitIds != nil {
                map["OrganizationalUnitIds"] = self.organizationalUnitIds!
            }
            if self.usedQuota != nil {
                map["UsedQuota"] = self.usedQuota!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupIds") {
                self.groupIds = dict["GroupIds"] as! [String]
            }
            if dict.keys.contains("MaxQuota") {
                self.maxQuota = dict["MaxQuota"] as! Int32
            }
            if dict.keys.contains("OrganizationalUnitIds") {
                self.organizationalUnitIds = dict["OrganizationalUnitIds"] as! [String]
            }
            if dict.keys.contains("UsedQuota") {
                self.usedQuota = dict["UsedQuota"] as! Int32
            }
        }
    }
    public var applicationProvisioningScope: GetApplicationProvisioningScopeResponseBody.ApplicationProvisioningScope?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationProvisioningScope?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationProvisioningScope != nil {
            map["ApplicationProvisioningScope"] = self.applicationProvisioningScope?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationProvisioningScope") {
            var model = GetApplicationProvisioningScopeResponseBody.ApplicationProvisioningScope()
            model.fromMap(dict["ApplicationProvisioningScope"] as! [String: Any])
            self.applicationProvisioningScope = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApplicationProvisioningScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationProvisioningScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetApplicationProvisioningScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationSsoConfigRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetApplicationSsoConfigResponseBody : Tea.TeaModel {
    public class ApplicationSsoConfig : Tea.TeaModel {
        public class OidcSsoConfig : Tea.TeaModel {
            public class CustomClaims : Tea.TeaModel {
                public var claimName: String?

                public var claimValueExpression: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.claimName != nil {
                        map["ClaimName"] = self.claimName!
                    }
                    if self.claimValueExpression != nil {
                        map["ClaimValueExpression"] = self.claimValueExpression!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClaimName") {
                        self.claimName = dict["ClaimName"] as! String
                    }
                    if dict.keys.contains("ClaimValueExpression") {
                        self.claimValueExpression = dict["ClaimValueExpression"] as! String
                    }
                }
            }
            public var accessTokenEffectiveTime: Int64?

            public var codeEffectiveTime: Int64?

            public var customClaims: [GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.OidcSsoConfig.CustomClaims]?

            public var grantScopes: [String]?

            public var grantTypes: [String]?

            public var idTokenEffectiveTime: Int64?

            public var passwordAuthenticationSourceId: String?

            public var passwordTotpMfaRequired: Bool?

            public var pkceChallengeMethods: [String]?

            public var pkceRequired: Bool?

            public var postLogoutRedirectUris: [String]?

            public var redirectUris: [String]?

            public var refreshTokenEffective: Int64?

            public var responseTypes: [String]?

            public var subjectIdExpression: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessTokenEffectiveTime != nil {
                    map["AccessTokenEffectiveTime"] = self.accessTokenEffectiveTime!
                }
                if self.codeEffectiveTime != nil {
                    map["CodeEffectiveTime"] = self.codeEffectiveTime!
                }
                if self.customClaims != nil {
                    var tmp : [Any] = []
                    for k in self.customClaims! {
                        tmp.append(k.toMap())
                    }
                    map["CustomClaims"] = tmp
                }
                if self.grantScopes != nil {
                    map["GrantScopes"] = self.grantScopes!
                }
                if self.grantTypes != nil {
                    map["GrantTypes"] = self.grantTypes!
                }
                if self.idTokenEffectiveTime != nil {
                    map["IdTokenEffectiveTime"] = self.idTokenEffectiveTime!
                }
                if self.passwordAuthenticationSourceId != nil {
                    map["PasswordAuthenticationSourceId"] = self.passwordAuthenticationSourceId!
                }
                if self.passwordTotpMfaRequired != nil {
                    map["PasswordTotpMfaRequired"] = self.passwordTotpMfaRequired!
                }
                if self.pkceChallengeMethods != nil {
                    map["PkceChallengeMethods"] = self.pkceChallengeMethods!
                }
                if self.pkceRequired != nil {
                    map["PkceRequired"] = self.pkceRequired!
                }
                if self.postLogoutRedirectUris != nil {
                    map["PostLogoutRedirectUris"] = self.postLogoutRedirectUris!
                }
                if self.redirectUris != nil {
                    map["RedirectUris"] = self.redirectUris!
                }
                if self.refreshTokenEffective != nil {
                    map["RefreshTokenEffective"] = self.refreshTokenEffective!
                }
                if self.responseTypes != nil {
                    map["ResponseTypes"] = self.responseTypes!
                }
                if self.subjectIdExpression != nil {
                    map["SubjectIdExpression"] = self.subjectIdExpression!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessTokenEffectiveTime") {
                    self.accessTokenEffectiveTime = dict["AccessTokenEffectiveTime"] as! Int64
                }
                if dict.keys.contains("CodeEffectiveTime") {
                    self.codeEffectiveTime = dict["CodeEffectiveTime"] as! Int64
                }
                if dict.keys.contains("CustomClaims") {
                    var tmp : [GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.OidcSsoConfig.CustomClaims] = []
                    for v in dict["CustomClaims"] as! [Any] {
                        var model = GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.OidcSsoConfig.CustomClaims()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customClaims = tmp
                }
                if dict.keys.contains("GrantScopes") {
                    self.grantScopes = dict["GrantScopes"] as! [String]
                }
                if dict.keys.contains("GrantTypes") {
                    self.grantTypes = dict["GrantTypes"] as! [String]
                }
                if dict.keys.contains("IdTokenEffectiveTime") {
                    self.idTokenEffectiveTime = dict["IdTokenEffectiveTime"] as! Int64
                }
                if dict.keys.contains("PasswordAuthenticationSourceId") {
                    self.passwordAuthenticationSourceId = dict["PasswordAuthenticationSourceId"] as! String
                }
                if dict.keys.contains("PasswordTotpMfaRequired") {
                    self.passwordTotpMfaRequired = dict["PasswordTotpMfaRequired"] as! Bool
                }
                if dict.keys.contains("PkceChallengeMethods") {
                    self.pkceChallengeMethods = dict["PkceChallengeMethods"] as! [String]
                }
                if dict.keys.contains("PkceRequired") {
                    self.pkceRequired = dict["PkceRequired"] as! Bool
                }
                if dict.keys.contains("PostLogoutRedirectUris") {
                    self.postLogoutRedirectUris = dict["PostLogoutRedirectUris"] as! [String]
                }
                if dict.keys.contains("RedirectUris") {
                    self.redirectUris = dict["RedirectUris"] as! [String]
                }
                if dict.keys.contains("RefreshTokenEffective") {
                    self.refreshTokenEffective = dict["RefreshTokenEffective"] as! Int64
                }
                if dict.keys.contains("ResponseTypes") {
                    self.responseTypes = dict["ResponseTypes"] as! [String]
                }
                if dict.keys.contains("SubjectIdExpression") {
                    self.subjectIdExpression = dict["SubjectIdExpression"] as! String
                }
            }
        }
        public class ProtocolEndpointDomain : Tea.TeaModel {
            public var oauth2AuthorizationEndpoint: String?

            public var oauth2DeviceAuthorizationEndpoint: String?

            public var oauth2RevokeEndpoint: String?

            public var oauth2TokenEndpoint: String?

            public var oauth2UserinfoEndpoint: String?

            public var oidcIssuer: String?

            public var oidcJwksEndpoint: String?

            public var oidcLogoutEndpoint: String?

            public var samlMetaEndpoint: String?

            public var samlSsoEndpoint: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.oauth2AuthorizationEndpoint != nil {
                    map["Oauth2AuthorizationEndpoint"] = self.oauth2AuthorizationEndpoint!
                }
                if self.oauth2DeviceAuthorizationEndpoint != nil {
                    map["Oauth2DeviceAuthorizationEndpoint"] = self.oauth2DeviceAuthorizationEndpoint!
                }
                if self.oauth2RevokeEndpoint != nil {
                    map["Oauth2RevokeEndpoint"] = self.oauth2RevokeEndpoint!
                }
                if self.oauth2TokenEndpoint != nil {
                    map["Oauth2TokenEndpoint"] = self.oauth2TokenEndpoint!
                }
                if self.oauth2UserinfoEndpoint != nil {
                    map["Oauth2UserinfoEndpoint"] = self.oauth2UserinfoEndpoint!
                }
                if self.oidcIssuer != nil {
                    map["OidcIssuer"] = self.oidcIssuer!
                }
                if self.oidcJwksEndpoint != nil {
                    map["OidcJwksEndpoint"] = self.oidcJwksEndpoint!
                }
                if self.oidcLogoutEndpoint != nil {
                    map["OidcLogoutEndpoint"] = self.oidcLogoutEndpoint!
                }
                if self.samlMetaEndpoint != nil {
                    map["SamlMetaEndpoint"] = self.samlMetaEndpoint!
                }
                if self.samlSsoEndpoint != nil {
                    map["SamlSsoEndpoint"] = self.samlSsoEndpoint!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Oauth2AuthorizationEndpoint") {
                    self.oauth2AuthorizationEndpoint = dict["Oauth2AuthorizationEndpoint"] as! String
                }
                if dict.keys.contains("Oauth2DeviceAuthorizationEndpoint") {
                    self.oauth2DeviceAuthorizationEndpoint = dict["Oauth2DeviceAuthorizationEndpoint"] as! String
                }
                if dict.keys.contains("Oauth2RevokeEndpoint") {
                    self.oauth2RevokeEndpoint = dict["Oauth2RevokeEndpoint"] as! String
                }
                if dict.keys.contains("Oauth2TokenEndpoint") {
                    self.oauth2TokenEndpoint = dict["Oauth2TokenEndpoint"] as! String
                }
                if dict.keys.contains("Oauth2UserinfoEndpoint") {
                    self.oauth2UserinfoEndpoint = dict["Oauth2UserinfoEndpoint"] as! String
                }
                if dict.keys.contains("OidcIssuer") {
                    self.oidcIssuer = dict["OidcIssuer"] as! String
                }
                if dict.keys.contains("OidcJwksEndpoint") {
                    self.oidcJwksEndpoint = dict["OidcJwksEndpoint"] as! String
                }
                if dict.keys.contains("OidcLogoutEndpoint") {
                    self.oidcLogoutEndpoint = dict["OidcLogoutEndpoint"] as! String
                }
                if dict.keys.contains("SamlMetaEndpoint") {
                    self.samlMetaEndpoint = dict["SamlMetaEndpoint"] as! String
                }
                if dict.keys.contains("SamlSsoEndpoint") {
                    self.samlSsoEndpoint = dict["SamlSsoEndpoint"] as! String
                }
            }
        }
        public class SamlSsoConfig : Tea.TeaModel {
            public class AttributeStatements : Tea.TeaModel {
                public var attributeName: String?

                public var attributeValueExpression: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attributeName != nil {
                        map["AttributeName"] = self.attributeName!
                    }
                    if self.attributeValueExpression != nil {
                        map["AttributeValueExpression"] = self.attributeValueExpression!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AttributeName") {
                        self.attributeName = dict["AttributeName"] as! String
                    }
                    if dict.keys.contains("AttributeValueExpression") {
                        self.attributeValueExpression = dict["AttributeValueExpression"] as! String
                    }
                }
            }
            public var assertionSigned: Bool?

            public var attributeStatements: [GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.SamlSsoConfig.AttributeStatements]?

            public var defaultRelayState: String?

            public var idPEntityId: String?

            public var nameIdFormat: String?

            public var nameIdValueExpression: String?

            public var responseSigned: Bool?

            public var signatureAlgorithm: String?

            public var spEntityId: String?

            public var spSsoAcsUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assertionSigned != nil {
                    map["AssertionSigned"] = self.assertionSigned!
                }
                if self.attributeStatements != nil {
                    var tmp : [Any] = []
                    for k in self.attributeStatements! {
                        tmp.append(k.toMap())
                    }
                    map["AttributeStatements"] = tmp
                }
                if self.defaultRelayState != nil {
                    map["DefaultRelayState"] = self.defaultRelayState!
                }
                if self.idPEntityId != nil {
                    map["IdPEntityId"] = self.idPEntityId!
                }
                if self.nameIdFormat != nil {
                    map["NameIdFormat"] = self.nameIdFormat!
                }
                if self.nameIdValueExpression != nil {
                    map["NameIdValueExpression"] = self.nameIdValueExpression!
                }
                if self.responseSigned != nil {
                    map["ResponseSigned"] = self.responseSigned!
                }
                if self.signatureAlgorithm != nil {
                    map["SignatureAlgorithm"] = self.signatureAlgorithm!
                }
                if self.spEntityId != nil {
                    map["SpEntityId"] = self.spEntityId!
                }
                if self.spSsoAcsUrl != nil {
                    map["SpSsoAcsUrl"] = self.spSsoAcsUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AssertionSigned") {
                    self.assertionSigned = dict["AssertionSigned"] as! Bool
                }
                if dict.keys.contains("AttributeStatements") {
                    var tmp : [GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.SamlSsoConfig.AttributeStatements] = []
                    for v in dict["AttributeStatements"] as! [Any] {
                        var model = GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.SamlSsoConfig.AttributeStatements()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attributeStatements = tmp
                }
                if dict.keys.contains("DefaultRelayState") {
                    self.defaultRelayState = dict["DefaultRelayState"] as! String
                }
                if dict.keys.contains("IdPEntityId") {
                    self.idPEntityId = dict["IdPEntityId"] as! String
                }
                if dict.keys.contains("NameIdFormat") {
                    self.nameIdFormat = dict["NameIdFormat"] as! String
                }
                if dict.keys.contains("NameIdValueExpression") {
                    self.nameIdValueExpression = dict["NameIdValueExpression"] as! String
                }
                if dict.keys.contains("ResponseSigned") {
                    self.responseSigned = dict["ResponseSigned"] as! Bool
                }
                if dict.keys.contains("SignatureAlgorithm") {
                    self.signatureAlgorithm = dict["SignatureAlgorithm"] as! String
                }
                if dict.keys.contains("SpEntityId") {
                    self.spEntityId = dict["SpEntityId"] as! String
                }
                if dict.keys.contains("SpSsoAcsUrl") {
                    self.spSsoAcsUrl = dict["SpSsoAcsUrl"] as! String
                }
            }
        }
        public var initLoginType: String?

        public var initLoginUrl: String?

        public var oidcSsoConfig: GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.OidcSsoConfig?

        public var protocolEndpointDomain: GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.ProtocolEndpointDomain?

        public var samlSsoConfig: GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.SamlSsoConfig?

        public var ssoStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.oidcSsoConfig?.validate()
            try self.protocolEndpointDomain?.validate()
            try self.samlSsoConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.initLoginType != nil {
                map["InitLoginType"] = self.initLoginType!
            }
            if self.initLoginUrl != nil {
                map["InitLoginUrl"] = self.initLoginUrl!
            }
            if self.oidcSsoConfig != nil {
                map["OidcSsoConfig"] = self.oidcSsoConfig?.toMap()
            }
            if self.protocolEndpointDomain != nil {
                map["ProtocolEndpointDomain"] = self.protocolEndpointDomain?.toMap()
            }
            if self.samlSsoConfig != nil {
                map["SamlSsoConfig"] = self.samlSsoConfig?.toMap()
            }
            if self.ssoStatus != nil {
                map["SsoStatus"] = self.ssoStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InitLoginType") {
                self.initLoginType = dict["InitLoginType"] as! String
            }
            if dict.keys.contains("InitLoginUrl") {
                self.initLoginUrl = dict["InitLoginUrl"] as! String
            }
            if dict.keys.contains("OidcSsoConfig") {
                var model = GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.OidcSsoConfig()
                model.fromMap(dict["OidcSsoConfig"] as! [String: Any])
                self.oidcSsoConfig = model
            }
            if dict.keys.contains("ProtocolEndpointDomain") {
                var model = GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.ProtocolEndpointDomain()
                model.fromMap(dict["ProtocolEndpointDomain"] as! [String: Any])
                self.protocolEndpointDomain = model
            }
            if dict.keys.contains("SamlSsoConfig") {
                var model = GetApplicationSsoConfigResponseBody.ApplicationSsoConfig.SamlSsoConfig()
                model.fromMap(dict["SamlSsoConfig"] as! [String: Any])
                self.samlSsoConfig = model
            }
            if dict.keys.contains("SsoStatus") {
                self.ssoStatus = dict["SsoStatus"] as! String
            }
        }
    }
    public var applicationSsoConfig: GetApplicationSsoConfigResponseBody.ApplicationSsoConfig?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationSsoConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationSsoConfig != nil {
            map["ApplicationSsoConfig"] = self.applicationSsoConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationSsoConfig") {
            var model = GetApplicationSsoConfigResponseBody.ApplicationSsoConfig()
            model.fromMap(dict["ApplicationSsoConfig"] as! [String: Any])
            self.applicationSsoConfig = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApplicationSsoConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationSsoConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetApplicationSsoConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDomainRequest : Tea.TeaModel {
    public var domainId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetDomainResponseBody : Tea.TeaModel {
    public class Domain : Tea.TeaModel {
        public class Filing : Tea.TeaModel {
            public var icpNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.icpNumber != nil {
                    map["IcpNumber"] = self.icpNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IcpNumber") {
                    self.icpNumber = dict["IcpNumber"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var defaultDomain: Bool?

        public var domain: String?

        public var domainId: String?

        public var domainType: String?

        public var filing: GetDomainResponseBody.Domain.Filing?

        public var instanceId: String?

        public var lockMode: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.filing?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultDomain != nil {
                map["DefaultDomain"] = self.defaultDomain!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.filing != nil {
                map["Filing"] = self.filing?.toMap()
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DefaultDomain") {
                self.defaultDomain = dict["DefaultDomain"] as! Bool
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainId") {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("DomainType") {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("Filing") {
                var model = GetDomainResponseBody.Domain.Filing()
                model.fromMap(dict["Filing"] as! [String: Any])
                self.filing = model
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LockMode") {
                self.lockMode = dict["LockMode"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var domain: GetDomainResponseBody.Domain?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domain?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            var model = GetDomainResponseBody.Domain()
            model.fromMap(dict["Domain"] as! [String: Any])
            self.domain = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDomainDnsChallengeRequest : Tea.TeaModel {
    public var domain: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetDomainDnsChallengeResponseBody : Tea.TeaModel {
    public class DomainDnsChallenge : Tea.TeaModel {
        public var dnsChallengeName: String?

        public var dnsChallengeValue: String?

        public var dnsType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dnsChallengeName != nil {
                map["DnsChallengeName"] = self.dnsChallengeName!
            }
            if self.dnsChallengeValue != nil {
                map["DnsChallengeValue"] = self.dnsChallengeValue!
            }
            if self.dnsType != nil {
                map["DnsType"] = self.dnsType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DnsChallengeName") {
                self.dnsChallengeName = dict["DnsChallengeName"] as! String
            }
            if dict.keys.contains("DnsChallengeValue") {
                self.dnsChallengeValue = dict["DnsChallengeValue"] as! String
            }
            if dict.keys.contains("DnsType") {
                self.dnsType = dict["DnsType"] as! String
            }
        }
    }
    public var domainDnsChallenge: GetDomainDnsChallengeResponseBody.DomainDnsChallenge?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainDnsChallenge?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainDnsChallenge != nil {
            map["DomainDnsChallenge"] = self.domainDnsChallenge?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainDnsChallenge") {
            var model = GetDomainDnsChallengeResponseBody.DomainDnsChallenge()
            model.fromMap(dict["DomainDnsChallenge"] as! [String: Any])
            self.domainDnsChallenge = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDomainDnsChallengeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainDnsChallengeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDomainDnsChallengeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetForgetPasswordConfigurationRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetForgetPasswordConfigurationResponseBody : Tea.TeaModel {
    public class OpenForgetPasswordConfiguration : Tea.TeaModel {
        public var authenticationChannels: [String]?

        public var enable: Bool?

        public var enableEmail: Bool?

        public var enableSms: Bool?

        public var forgetPasswordStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authenticationChannels != nil {
                map["AuthenticationChannels"] = self.authenticationChannels!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.enableEmail != nil {
                map["EnableEmail"] = self.enableEmail!
            }
            if self.enableSms != nil {
                map["EnableSms"] = self.enableSms!
            }
            if self.forgetPasswordStatus != nil {
                map["ForgetPasswordStatus"] = self.forgetPasswordStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthenticationChannels") {
                self.authenticationChannels = dict["AuthenticationChannels"] as! [String]
            }
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("EnableEmail") {
                self.enableEmail = dict["EnableEmail"] as! Bool
            }
            if dict.keys.contains("EnableSms") {
                self.enableSms = dict["EnableSms"] as! Bool
            }
            if dict.keys.contains("ForgetPasswordStatus") {
                self.forgetPasswordStatus = dict["ForgetPasswordStatus"] as! String
            }
        }
    }
    public var openForgetPasswordConfiguration: GetForgetPasswordConfigurationResponseBody.OpenForgetPasswordConfiguration?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.openForgetPasswordConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.openForgetPasswordConfiguration != nil {
            map["OpenForgetPasswordConfiguration"] = self.openForgetPasswordConfiguration?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OpenForgetPasswordConfiguration") {
            var model = GetForgetPasswordConfigurationResponseBody.OpenForgetPasswordConfiguration()
            model.fromMap(dict["OpenForgetPasswordConfiguration"] as! [String: Any])
            self.openForgetPasswordConfiguration = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetForgetPasswordConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetForgetPasswordConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetForgetPasswordConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var createTime: Int64?

        public var description_: String?

        public var groupExternalId: String?

        public var groupId: String?

        public var groupName: String?

        public var groupSourceId: String?

        public var groupSourceType: String?

        public var instanceId: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupExternalId != nil {
                map["GroupExternalId"] = self.groupExternalId!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupSourceId != nil {
                map["GroupSourceId"] = self.groupSourceId!
            }
            if self.groupSourceType != nil {
                map["GroupSourceType"] = self.groupSourceType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GroupExternalId") {
                self.groupExternalId = dict["GroupExternalId"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupSourceId") {
                self.groupSourceId = dict["GroupSourceId"] as! String
            }
            if dict.keys.contains("GroupSourceType") {
                self.groupSourceType = dict["GroupSourceType"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var group: GetGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Group") {
            var model = GetGroupResponseBody.Group()
            model.fromMap(dict["Group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public class DefaultEndpoint : Tea.TeaModel {
            public var endpoint: String?

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
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class DomainConfig : Tea.TeaModel {
            public var defaultDomain: String?

            public var initDomain: String?

            public var initDomainAutoRedirectStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultDomain != nil {
                    map["DefaultDomain"] = self.defaultDomain!
                }
                if self.initDomain != nil {
                    map["InitDomain"] = self.initDomain!
                }
                if self.initDomainAutoRedirectStatus != nil {
                    map["InitDomainAutoRedirectStatus"] = self.initDomainAutoRedirectStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultDomain") {
                    self.defaultDomain = dict["DefaultDomain"] as! String
                }
                if dict.keys.contains("InitDomain") {
                    self.initDomain = dict["InitDomain"] as! String
                }
                if dict.keys.contains("InitDomainAutoRedirectStatus") {
                    self.initDomainAutoRedirectStatus = dict["InitDomainAutoRedirectStatus"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var defaultEndpoint: GetInstanceResponseBody.Instance.DefaultEndpoint?

        public var description_: String?

        public var domainConfig: GetInstanceResponseBody.Instance.DomainConfig?

        public var egressAddresses: [String]?

        public var instanceId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.defaultEndpoint?.validate()
            try self.domainConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultEndpoint != nil {
                map["DefaultEndpoint"] = self.defaultEndpoint?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domainConfig != nil {
                map["DomainConfig"] = self.domainConfig?.toMap()
            }
            if self.egressAddresses != nil {
                map["EgressAddresses"] = self.egressAddresses!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DefaultEndpoint") {
                var model = GetInstanceResponseBody.Instance.DefaultEndpoint()
                model.fromMap(dict["DefaultEndpoint"] as! [String: Any])
                self.defaultEndpoint = model
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DomainConfig") {
                var model = GetInstanceResponseBody.Instance.DomainConfig()
                model.fromMap(dict["DomainConfig"] as! [String: Any])
                self.domainConfig = model
            }
            if dict.keys.contains("EgressAddresses") {
                self.egressAddresses = dict["EgressAddresses"] as! [String]
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var instance: GetInstanceResponseBody.Instance?

    public var requestId: String?

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
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instance") {
            var model = GetInstanceResponseBody.Instance()
            model.fromMap(dict["Instance"] as! [String: Any])
            self.instance = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNetworkAccessEndpointRequest : Tea.TeaModel {
    public var instanceId: String?

    public var networkAccessEndpointId: String?

    public override init() {
        super.init()
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
        if self.networkAccessEndpointId != nil {
            map["NetworkAccessEndpointId"] = self.networkAccessEndpointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkAccessEndpointId") {
            self.networkAccessEndpointId = dict["NetworkAccessEndpointId"] as! String
        }
    }
}

public class GetNetworkAccessEndpointResponseBody : Tea.TeaModel {
    public class NetworkAccessEndpoint : Tea.TeaModel {
        public var createTime: Int64?

        public var egressPrivateIpAddresses: [String]?

        public var egressPublicIpAddresses: [String]?

        public var instanceId: String?

        public var networkAccessEndpointId: String?

        public var networkAccessEndpointName: String?

        public var networkAccessEndpointType: String?

        public var securityGroupId: String?

        public var status: String?

        public var updateTime: Int64?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public var vpcRegionId: String?

        public override init() {
            super.init()
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
            if self.egressPrivateIpAddresses != nil {
                map["EgressPrivateIpAddresses"] = self.egressPrivateIpAddresses!
            }
            if self.egressPublicIpAddresses != nil {
                map["EgressPublicIpAddresses"] = self.egressPublicIpAddresses!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.networkAccessEndpointId != nil {
                map["NetworkAccessEndpointId"] = self.networkAccessEndpointId!
            }
            if self.networkAccessEndpointName != nil {
                map["NetworkAccessEndpointName"] = self.networkAccessEndpointName!
            }
            if self.networkAccessEndpointType != nil {
                map["NetworkAccessEndpointType"] = self.networkAccessEndpointType!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcRegionId != nil {
                map["VpcRegionId"] = self.vpcRegionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("EgressPrivateIpAddresses") {
                self.egressPrivateIpAddresses = dict["EgressPrivateIpAddresses"] as! [String]
            }
            if dict.keys.contains("EgressPublicIpAddresses") {
                self.egressPublicIpAddresses = dict["EgressPublicIpAddresses"] as! [String]
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("NetworkAccessEndpointId") {
                self.networkAccessEndpointId = dict["NetworkAccessEndpointId"] as! String
            }
            if dict.keys.contains("NetworkAccessEndpointName") {
                self.networkAccessEndpointName = dict["NetworkAccessEndpointName"] as! String
            }
            if dict.keys.contains("NetworkAccessEndpointType") {
                self.networkAccessEndpointType = dict["NetworkAccessEndpointType"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcRegionId") {
                self.vpcRegionId = dict["VpcRegionId"] as! String
            }
        }
    }
    public var networkAccessEndpoint: GetNetworkAccessEndpointResponseBody.NetworkAccessEndpoint?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkAccessEndpoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkAccessEndpoint != nil {
            map["NetworkAccessEndpoint"] = self.networkAccessEndpoint?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkAccessEndpoint") {
            var model = GetNetworkAccessEndpointResponseBody.NetworkAccessEndpoint()
            model.fromMap(dict["NetworkAccessEndpoint"] as! [String: Any])
            self.networkAccessEndpoint = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNetworkAccessEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNetworkAccessEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetNetworkAccessEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrganizationalUnitRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitId: String?

    public override init() {
        super.init()
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
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
    }
}

public class GetOrganizationalUnitResponseBody : Tea.TeaModel {
    public class OrganizationalUnit : Tea.TeaModel {
        public var createTime: Int64?

        public var description_: String?

        public var instanceId: String?

        public var leaf: Bool?

        public var organizationalUnitExternalId: String?

        public var organizationalUnitId: String?

        public var organizationalUnitName: String?

        public var organizationalUnitSourceId: String?

        public var organizationalUnitSourceType: String?

        public var parentId: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.leaf != nil {
                map["Leaf"] = self.leaf!
            }
            if self.organizationalUnitExternalId != nil {
                map["OrganizationalUnitExternalId"] = self.organizationalUnitExternalId!
            }
            if self.organizationalUnitId != nil {
                map["OrganizationalUnitId"] = self.organizationalUnitId!
            }
            if self.organizationalUnitName != nil {
                map["OrganizationalUnitName"] = self.organizationalUnitName!
            }
            if self.organizationalUnitSourceId != nil {
                map["OrganizationalUnitSourceId"] = self.organizationalUnitSourceId!
            }
            if self.organizationalUnitSourceType != nil {
                map["OrganizationalUnitSourceType"] = self.organizationalUnitSourceType!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Leaf") {
                self.leaf = dict["Leaf"] as! Bool
            }
            if dict.keys.contains("OrganizationalUnitExternalId") {
                self.organizationalUnitExternalId = dict["OrganizationalUnitExternalId"] as! String
            }
            if dict.keys.contains("OrganizationalUnitId") {
                self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
            }
            if dict.keys.contains("OrganizationalUnitName") {
                self.organizationalUnitName = dict["OrganizationalUnitName"] as! String
            }
            if dict.keys.contains("OrganizationalUnitSourceId") {
                self.organizationalUnitSourceId = dict["OrganizationalUnitSourceId"] as! String
            }
            if dict.keys.contains("OrganizationalUnitSourceType") {
                self.organizationalUnitSourceType = dict["OrganizationalUnitSourceType"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var organizationalUnit: GetOrganizationalUnitResponseBody.OrganizationalUnit?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.organizationalUnit?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationalUnit != nil {
            map["OrganizationalUnit"] = self.organizationalUnit?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationalUnit") {
            var model = GetOrganizationalUnitResponseBody.OrganizationalUnit()
            model.fromMap(dict["OrganizationalUnit"] as! [String: Any])
            self.organizationalUnit = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrganizationalUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetOrganizationalUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPasswordComplexityConfigurationRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetPasswordComplexityConfigurationResponseBody : Tea.TeaModel {
    public class PasswordComplexityConfiguration : Tea.TeaModel {
        public class PasswordComplexityRules : Tea.TeaModel {
            public var passwordCheckType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.passwordCheckType != nil {
                    map["PasswordCheckType"] = self.passwordCheckType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PasswordCheckType") {
                    self.passwordCheckType = dict["PasswordCheckType"] as! String
                }
            }
        }
        public var passwordComplexityRules: [GetPasswordComplexityConfigurationResponseBody.PasswordComplexityConfiguration.PasswordComplexityRules]?

        public var passwordMinLength: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.passwordComplexityRules != nil {
                var tmp : [Any] = []
                for k in self.passwordComplexityRules! {
                    tmp.append(k.toMap())
                }
                map["PasswordComplexityRules"] = tmp
            }
            if self.passwordMinLength != nil {
                map["PasswordMinLength"] = self.passwordMinLength!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PasswordComplexityRules") {
                var tmp : [GetPasswordComplexityConfigurationResponseBody.PasswordComplexityConfiguration.PasswordComplexityRules] = []
                for v in dict["PasswordComplexityRules"] as! [Any] {
                    var model = GetPasswordComplexityConfigurationResponseBody.PasswordComplexityConfiguration.PasswordComplexityRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.passwordComplexityRules = tmp
            }
            if dict.keys.contains("PasswordMinLength") {
                self.passwordMinLength = dict["PasswordMinLength"] as! Int32
            }
        }
    }
    public var passwordComplexityConfiguration: GetPasswordComplexityConfigurationResponseBody.PasswordComplexityConfiguration?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordComplexityConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordComplexityConfiguration != nil {
            map["PasswordComplexityConfiguration"] = self.passwordComplexityConfiguration?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasswordComplexityConfiguration") {
            var model = GetPasswordComplexityConfigurationResponseBody.PasswordComplexityConfiguration()
            model.fromMap(dict["PasswordComplexityConfiguration"] as! [String: Any])
            self.passwordComplexityConfiguration = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPasswordComplexityConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPasswordComplexityConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPasswordComplexityConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPasswordExpirationConfigurationRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetPasswordExpirationConfigurationResponseBody : Tea.TeaModel {
    public class PasswordExpirationConfiguration : Tea.TeaModel {
        public var passwordExpirationAction: String?

        public var passwordExpirationNotificationChannels: [String]?

        public var passwordExpirationNotificationDuration: Int32?

        public var passwordExpirationNotificationStatus: String?

        public var passwordExpirationStatus: String?

        public var passwordForcedUpdateDuration: Int32?

        public var passwordValidMaxDay: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.passwordExpirationAction != nil {
                map["PasswordExpirationAction"] = self.passwordExpirationAction!
            }
            if self.passwordExpirationNotificationChannels != nil {
                map["PasswordExpirationNotificationChannels"] = self.passwordExpirationNotificationChannels!
            }
            if self.passwordExpirationNotificationDuration != nil {
                map["PasswordExpirationNotificationDuration"] = self.passwordExpirationNotificationDuration!
            }
            if self.passwordExpirationNotificationStatus != nil {
                map["PasswordExpirationNotificationStatus"] = self.passwordExpirationNotificationStatus!
            }
            if self.passwordExpirationStatus != nil {
                map["PasswordExpirationStatus"] = self.passwordExpirationStatus!
            }
            if self.passwordForcedUpdateDuration != nil {
                map["PasswordForcedUpdateDuration"] = self.passwordForcedUpdateDuration!
            }
            if self.passwordValidMaxDay != nil {
                map["PasswordValidMaxDay"] = self.passwordValidMaxDay!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PasswordExpirationAction") {
                self.passwordExpirationAction = dict["PasswordExpirationAction"] as! String
            }
            if dict.keys.contains("PasswordExpirationNotificationChannels") {
                self.passwordExpirationNotificationChannels = dict["PasswordExpirationNotificationChannels"] as! [String]
            }
            if dict.keys.contains("PasswordExpirationNotificationDuration") {
                self.passwordExpirationNotificationDuration = dict["PasswordExpirationNotificationDuration"] as! Int32
            }
            if dict.keys.contains("PasswordExpirationNotificationStatus") {
                self.passwordExpirationNotificationStatus = dict["PasswordExpirationNotificationStatus"] as! String
            }
            if dict.keys.contains("PasswordExpirationStatus") {
                self.passwordExpirationStatus = dict["PasswordExpirationStatus"] as! String
            }
            if dict.keys.contains("PasswordForcedUpdateDuration") {
                self.passwordForcedUpdateDuration = dict["PasswordForcedUpdateDuration"] as! Int32
            }
            if dict.keys.contains("PasswordValidMaxDay") {
                self.passwordValidMaxDay = dict["PasswordValidMaxDay"] as! Int32
            }
        }
    }
    public var passwordExpirationConfiguration: GetPasswordExpirationConfigurationResponseBody.PasswordExpirationConfiguration?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordExpirationConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordExpirationConfiguration != nil {
            map["PasswordExpirationConfiguration"] = self.passwordExpirationConfiguration?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasswordExpirationConfiguration") {
            var model = GetPasswordExpirationConfigurationResponseBody.PasswordExpirationConfiguration()
            model.fromMap(dict["PasswordExpirationConfiguration"] as! [String: Any])
            self.passwordExpirationConfiguration = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPasswordExpirationConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPasswordExpirationConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPasswordExpirationConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPasswordHistoryConfigurationRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetPasswordHistoryConfigurationResponseBody : Tea.TeaModel {
    public class PasswordHistoryConfiguration : Tea.TeaModel {
        public var passwordHistoryMaxRetention: Int32?

        public var passwordHistoryStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.passwordHistoryMaxRetention != nil {
                map["PasswordHistoryMaxRetention"] = self.passwordHistoryMaxRetention!
            }
            if self.passwordHistoryStatus != nil {
                map["PasswordHistoryStatus"] = self.passwordHistoryStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PasswordHistoryMaxRetention") {
                self.passwordHistoryMaxRetention = dict["PasswordHistoryMaxRetention"] as! Int32
            }
            if dict.keys.contains("PasswordHistoryStatus") {
                self.passwordHistoryStatus = dict["PasswordHistoryStatus"] as! String
            }
        }
    }
    public var passwordHistoryConfiguration: GetPasswordHistoryConfigurationResponseBody.PasswordHistoryConfiguration?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordHistoryConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordHistoryConfiguration != nil {
            map["PasswordHistoryConfiguration"] = self.passwordHistoryConfiguration?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasswordHistoryConfiguration") {
            var model = GetPasswordHistoryConfigurationResponseBody.PasswordHistoryConfiguration()
            model.fromMap(dict["PasswordHistoryConfiguration"] as! [String: Any])
            self.passwordHistoryConfiguration = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPasswordHistoryConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPasswordHistoryConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPasswordHistoryConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPasswordInitializationConfigurationRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetPasswordInitializationConfigurationResponseBody : Tea.TeaModel {
    public class PasswordInitializationConfiguration : Tea.TeaModel {
        public var passwordForcedUpdateStatus: String?

        public var passwordInitializationNotificationChannels: [String]?

        public var passwordInitializationStatus: String?

        public var passwordInitializationType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.passwordForcedUpdateStatus != nil {
                map["PasswordForcedUpdateStatus"] = self.passwordForcedUpdateStatus!
            }
            if self.passwordInitializationNotificationChannels != nil {
                map["PasswordInitializationNotificationChannels"] = self.passwordInitializationNotificationChannels!
            }
            if self.passwordInitializationStatus != nil {
                map["PasswordInitializationStatus"] = self.passwordInitializationStatus!
            }
            if self.passwordInitializationType != nil {
                map["PasswordInitializationType"] = self.passwordInitializationType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PasswordForcedUpdateStatus") {
                self.passwordForcedUpdateStatus = dict["PasswordForcedUpdateStatus"] as! String
            }
            if dict.keys.contains("PasswordInitializationNotificationChannels") {
                self.passwordInitializationNotificationChannels = dict["PasswordInitializationNotificationChannels"] as! [String]
            }
            if dict.keys.contains("PasswordInitializationStatus") {
                self.passwordInitializationStatus = dict["PasswordInitializationStatus"] as! String
            }
            if dict.keys.contains("PasswordInitializationType") {
                self.passwordInitializationType = dict["PasswordInitializationType"] as! String
            }
        }
    }
    public var passwordInitializationConfiguration: GetPasswordInitializationConfigurationResponseBody.PasswordInitializationConfiguration?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordInitializationConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordInitializationConfiguration != nil {
            map["PasswordInitializationConfiguration"] = self.passwordInitializationConfiguration?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasswordInitializationConfiguration") {
            var model = GetPasswordInitializationConfigurationResponseBody.PasswordInitializationConfiguration()
            model.fromMap(dict["PasswordInitializationConfiguration"] as! [String: Any])
            self.passwordInitializationConfiguration = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPasswordInitializationConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPasswordInitializationConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPasswordInitializationConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRootOrganizationalUnitRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetRootOrganizationalUnitResponseBody : Tea.TeaModel {
    public class OrganizationalUnit : Tea.TeaModel {
        public var createTime: Int64?

        public var description_: String?

        public var instanceId: String?

        public var organizationalUnitId: String?

        public var organizationalUnitName: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.organizationalUnitId != nil {
                map["OrganizationalUnitId"] = self.organizationalUnitId!
            }
            if self.organizationalUnitName != nil {
                map["OrganizationalUnitName"] = self.organizationalUnitName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrganizationalUnitId") {
                self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
            }
            if dict.keys.contains("OrganizationalUnitName") {
                self.organizationalUnitName = dict["OrganizationalUnitName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var organizationalUnit: GetRootOrganizationalUnitResponseBody.OrganizationalUnit?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.organizationalUnit?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationalUnit != nil {
            map["OrganizationalUnit"] = self.organizationalUnit?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationalUnit") {
            var model = GetRootOrganizationalUnitResponseBody.OrganizationalUnit()
            model.fromMap(dict["OrganizationalUnit"] as! [String: Any])
            self.organizationalUnit = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRootOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRootOrganizationalUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetRootOrganizationalUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSynchronizationJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
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
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class GetSynchronizationJobResponseBody : Tea.TeaModel {
    public class SynchronizationJob : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class GroupMemberStatistics : Tea.TeaModel {
                public class Binded : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Created : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Deleted : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Pushed : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Same : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Updated : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public var binded: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Binded?

                public var created: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Created?

                public var deleted: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Deleted?

                public var pushed: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Pushed?

                public var same: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Same?

                public var updated: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Updated?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.binded?.validate()
                    try self.created?.validate()
                    try self.deleted?.validate()
                    try self.pushed?.validate()
                    try self.same?.validate()
                    try self.updated?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.binded != nil {
                        map["Binded"] = self.binded?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted?.toMap()
                    }
                    if self.pushed != nil {
                        map["Pushed"] = self.pushed?.toMap()
                    }
                    if self.same != nil {
                        map["Same"] = self.same?.toMap()
                    }
                    if self.updated != nil {
                        map["Updated"] = self.updated?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Binded") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Binded()
                        model.fromMap(dict["Binded"] as! [String: Any])
                        self.binded = model
                    }
                    if dict.keys.contains("Created") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Created()
                        model.fromMap(dict["Created"] as! [String: Any])
                        self.created = model
                    }
                    if dict.keys.contains("Deleted") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Deleted()
                        model.fromMap(dict["Deleted"] as! [String: Any])
                        self.deleted = model
                    }
                    if dict.keys.contains("Pushed") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Pushed()
                        model.fromMap(dict["Pushed"] as! [String: Any])
                        self.pushed = model
                    }
                    if dict.keys.contains("Same") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Same()
                        model.fromMap(dict["Same"] as! [String: Any])
                        self.same = model
                    }
                    if dict.keys.contains("Updated") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics.Updated()
                        model.fromMap(dict["Updated"] as! [String: Any])
                        self.updated = model
                    }
                }
            }
            public class GroupStatistics : Tea.TeaModel {
                public class Binded : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Created : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Deleted : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Pushed : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Same : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Updated : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public var binded: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Binded?

                public var created: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Created?

                public var deleted: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Deleted?

                public var pushed: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Pushed?

                public var same: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Same?

                public var updated: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Updated?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.binded?.validate()
                    try self.created?.validate()
                    try self.deleted?.validate()
                    try self.pushed?.validate()
                    try self.same?.validate()
                    try self.updated?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.binded != nil {
                        map["Binded"] = self.binded?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted?.toMap()
                    }
                    if self.pushed != nil {
                        map["Pushed"] = self.pushed?.toMap()
                    }
                    if self.same != nil {
                        map["Same"] = self.same?.toMap()
                    }
                    if self.updated != nil {
                        map["Updated"] = self.updated?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Binded") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Binded()
                        model.fromMap(dict["Binded"] as! [String: Any])
                        self.binded = model
                    }
                    if dict.keys.contains("Created") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Created()
                        model.fromMap(dict["Created"] as! [String: Any])
                        self.created = model
                    }
                    if dict.keys.contains("Deleted") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Deleted()
                        model.fromMap(dict["Deleted"] as! [String: Any])
                        self.deleted = model
                    }
                    if dict.keys.contains("Pushed") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Pushed()
                        model.fromMap(dict["Pushed"] as! [String: Any])
                        self.pushed = model
                    }
                    if dict.keys.contains("Same") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Same()
                        model.fromMap(dict["Same"] as! [String: Any])
                        self.same = model
                    }
                    if dict.keys.contains("Updated") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics.Updated()
                        model.fromMap(dict["Updated"] as! [String: Any])
                        self.updated = model
                    }
                }
            }
            public class OrganizationalUnitStatistics : Tea.TeaModel {
                public class Binded : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Created : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Deleted : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Pushed : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Same : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Updated : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public var binded: GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Binded?

                public var created: GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Created?

                public var deleted: GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Deleted?

                public var pushed: GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Pushed?

                public var same: GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Same?

                public var updated: GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Updated?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.binded?.validate()
                    try self.created?.validate()
                    try self.deleted?.validate()
                    try self.pushed?.validate()
                    try self.same?.validate()
                    try self.updated?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.binded != nil {
                        map["Binded"] = self.binded?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted?.toMap()
                    }
                    if self.pushed != nil {
                        map["Pushed"] = self.pushed?.toMap()
                    }
                    if self.same != nil {
                        map["Same"] = self.same?.toMap()
                    }
                    if self.updated != nil {
                        map["Updated"] = self.updated?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Binded") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Binded()
                        model.fromMap(dict["Binded"] as! [String: Any])
                        self.binded = model
                    }
                    if dict.keys.contains("Created") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Created()
                        model.fromMap(dict["Created"] as! [String: Any])
                        self.created = model
                    }
                    if dict.keys.contains("Deleted") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Deleted()
                        model.fromMap(dict["Deleted"] as! [String: Any])
                        self.deleted = model
                    }
                    if dict.keys.contains("Pushed") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Pushed()
                        model.fromMap(dict["Pushed"] as! [String: Any])
                        self.pushed = model
                    }
                    if dict.keys.contains("Same") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Same()
                        model.fromMap(dict["Same"] as! [String: Any])
                        self.same = model
                    }
                    if dict.keys.contains("Updated") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics.Updated()
                        model.fromMap(dict["Updated"] as! [String: Any])
                        self.updated = model
                    }
                }
            }
            public class UserStatistics : Tea.TeaModel {
                public class Binded : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Created : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Deleted : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Pushed : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Same : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Updated : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public var binded: GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Binded?

                public var created: GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Created?

                public var deleted: GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Deleted?

                public var pushed: GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Pushed?

                public var same: GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Same?

                public var updated: GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Updated?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.binded?.validate()
                    try self.created?.validate()
                    try self.deleted?.validate()
                    try self.pushed?.validate()
                    try self.same?.validate()
                    try self.updated?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.binded != nil {
                        map["Binded"] = self.binded?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted?.toMap()
                    }
                    if self.pushed != nil {
                        map["Pushed"] = self.pushed?.toMap()
                    }
                    if self.same != nil {
                        map["Same"] = self.same?.toMap()
                    }
                    if self.updated != nil {
                        map["Updated"] = self.updated?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Binded") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Binded()
                        model.fromMap(dict["Binded"] as! [String: Any])
                        self.binded = model
                    }
                    if dict.keys.contains("Created") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Created()
                        model.fromMap(dict["Created"] as! [String: Any])
                        self.created = model
                    }
                    if dict.keys.contains("Deleted") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Deleted()
                        model.fromMap(dict["Deleted"] as! [String: Any])
                        self.deleted = model
                    }
                    if dict.keys.contains("Pushed") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Pushed()
                        model.fromMap(dict["Pushed"] as! [String: Any])
                        self.pushed = model
                    }
                    if dict.keys.contains("Same") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Same()
                        model.fromMap(dict["Same"] as! [String: Any])
                        self.same = model
                    }
                    if dict.keys.contains("Updated") {
                        var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics.Updated()
                        model.fromMap(dict["Updated"] as! [String: Any])
                        self.updated = model
                    }
                }
            }
            public var errorCode: String?

            public var errorMessage: String?

            public var groupMemberStatistics: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics?

            public var groupStatistics: GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics?

            public var organizationalUnitStatistics: GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics?

            public var userStatistics: GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.groupMemberStatistics?.validate()
                try self.groupStatistics?.validate()
                try self.organizationalUnitStatistics?.validate()
                try self.userStatistics?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.groupMemberStatistics != nil {
                    map["GroupMemberStatistics"] = self.groupMemberStatistics?.toMap()
                }
                if self.groupStatistics != nil {
                    map["GroupStatistics"] = self.groupStatistics?.toMap()
                }
                if self.organizationalUnitStatistics != nil {
                    map["OrganizationalUnitStatistics"] = self.organizationalUnitStatistics?.toMap()
                }
                if self.userStatistics != nil {
                    map["UserStatistics"] = self.userStatistics?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("GroupMemberStatistics") {
                    var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupMemberStatistics()
                    model.fromMap(dict["GroupMemberStatistics"] as! [String: Any])
                    self.groupMemberStatistics = model
                }
                if dict.keys.contains("GroupStatistics") {
                    var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.GroupStatistics()
                    model.fromMap(dict["GroupStatistics"] as! [String: Any])
                    self.groupStatistics = model
                }
                if dict.keys.contains("OrganizationalUnitStatistics") {
                    var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.OrganizationalUnitStatistics()
                    model.fromMap(dict["OrganizationalUnitStatistics"] as! [String: Any])
                    self.organizationalUnitStatistics = model
                }
                if dict.keys.contains("UserStatistics") {
                    var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result.UserStatistics()
                    model.fromMap(dict["UserStatistics"] as! [String: Any])
                    self.userStatistics = model
                }
            }
        }
        public var direction: String?

        public var endTime: Int64?

        public var result: GetSynchronizationJobResponseBody.SynchronizationJob.Result?

        public var startTime: Int64?

        public var status: String?

        public var synchronizationJobId: String?

        public var targetId: String?

        public var targetType: String?

        public var triggerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.result != nil {
                map["Result"] = self.result?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.synchronizationJobId != nil {
                map["SynchronizationJobId"] = self.synchronizationJobId!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Direction") {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Result") {
                var model = GetSynchronizationJobResponseBody.SynchronizationJob.Result()
                model.fromMap(dict["Result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SynchronizationJobId") {
                self.synchronizationJobId = dict["SynchronizationJobId"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("TriggerType") {
                self.triggerType = dict["TriggerType"] as! String
            }
        }
    }
    public var requestId: String?

    public var synchronizationJob: GetSynchronizationJobResponseBody.SynchronizationJob?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.synchronizationJob?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.synchronizationJob != nil {
            map["SynchronizationJob"] = self.synchronizationJob?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SynchronizationJob") {
            var model = GetSynchronizationJobResponseBody.SynchronizationJob()
            model.fromMap(dict["SynchronizationJob"] as! [String: Any])
            self.synchronizationJob = model
        }
    }
}

public class GetSynchronizationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSynchronizationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSynchronizationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public class CustomFields : Tea.TeaModel {
            public var fieldName: String?

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
                if self.fieldName != nil {
                    map["FieldName"] = self.fieldName!
                }
                if self.fieldValue != nil {
                    map["FieldValue"] = self.fieldValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FieldName") {
                    self.fieldName = dict["FieldName"] as! String
                }
                if dict.keys.contains("FieldValue") {
                    self.fieldValue = dict["FieldValue"] as! String
                }
            }
        }
        public class Groups : Tea.TeaModel {
            public var description_: String?

            public var groupId: String?

            public var groupName: String?

            public override init() {
                super.init()
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
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
            }
        }
        public class OrganizationalUnits : Tea.TeaModel {
            public var organizationalUnitId: String?

            public var organizationalUnitName: String?

            public var primary: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.organizationalUnitId != nil {
                    map["OrganizationalUnitId"] = self.organizationalUnitId!
                }
                if self.organizationalUnitName != nil {
                    map["OrganizationalUnitName"] = self.organizationalUnitName!
                }
                if self.primary != nil {
                    map["Primary"] = self.primary!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OrganizationalUnitId") {
                    self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
                }
                if dict.keys.contains("OrganizationalUnitName") {
                    self.organizationalUnitName = dict["OrganizationalUnitName"] as! String
                }
                if dict.keys.contains("Primary") {
                    self.primary = dict["Primary"] as! Bool
                }
            }
        }
        public var accountExpireTime: Int64?

        public var createTime: Int64?

        public var customFields: [GetUserResponseBody.User.CustomFields]?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var emailVerified: Bool?

        public var groups: [GetUserResponseBody.User.Groups]?

        public var instanceId: String?

        public var lockExpireTime: Int64?

        public var organizationalUnits: [GetUserResponseBody.User.OrganizationalUnits]?

        public var passwordExpireTime: Int64?

        public var passwordSet: Bool?

        public var phoneNumber: String?

        public var phoneNumberVerified: Bool?

        public var phoneRegion: String?

        public var preferredLanguage: String?

        public var primaryOrganizationalUnitId: String?

        public var registerTime: Int64?

        public var status: String?

        public var updateTime: Int64?

        public var userExternalId: String?

        public var userId: String?

        public var userSourceId: String?

        public var userSourceType: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountExpireTime != nil {
                map["AccountExpireTime"] = self.accountExpireTime!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customFields != nil {
                var tmp : [Any] = []
                for k in self.customFields! {
                    tmp.append(k.toMap())
                }
                map["CustomFields"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.emailVerified != nil {
                map["EmailVerified"] = self.emailVerified!
            }
            if self.groups != nil {
                var tmp : [Any] = []
                for k in self.groups! {
                    tmp.append(k.toMap())
                }
                map["Groups"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lockExpireTime != nil {
                map["LockExpireTime"] = self.lockExpireTime!
            }
            if self.organizationalUnits != nil {
                var tmp : [Any] = []
                for k in self.organizationalUnits! {
                    tmp.append(k.toMap())
                }
                map["OrganizationalUnits"] = tmp
            }
            if self.passwordExpireTime != nil {
                map["PasswordExpireTime"] = self.passwordExpireTime!
            }
            if self.passwordSet != nil {
                map["PasswordSet"] = self.passwordSet!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.phoneNumberVerified != nil {
                map["PhoneNumberVerified"] = self.phoneNumberVerified!
            }
            if self.phoneRegion != nil {
                map["PhoneRegion"] = self.phoneRegion!
            }
            if self.preferredLanguage != nil {
                map["PreferredLanguage"] = self.preferredLanguage!
            }
            if self.primaryOrganizationalUnitId != nil {
                map["PrimaryOrganizationalUnitId"] = self.primaryOrganizationalUnitId!
            }
            if self.registerTime != nil {
                map["RegisterTime"] = self.registerTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userExternalId != nil {
                map["UserExternalId"] = self.userExternalId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userSourceId != nil {
                map["UserSourceId"] = self.userSourceId!
            }
            if self.userSourceType != nil {
                map["UserSourceType"] = self.userSourceType!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountExpireTime") {
                self.accountExpireTime = dict["AccountExpireTime"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("CustomFields") {
                var tmp : [GetUserResponseBody.User.CustomFields] = []
                for v in dict["CustomFields"] as! [Any] {
                    var model = GetUserResponseBody.User.CustomFields()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customFields = tmp
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EmailVerified") {
                self.emailVerified = dict["EmailVerified"] as! Bool
            }
            if dict.keys.contains("Groups") {
                var tmp : [GetUserResponseBody.User.Groups] = []
                for v in dict["Groups"] as! [Any] {
                    var model = GetUserResponseBody.User.Groups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.groups = tmp
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LockExpireTime") {
                self.lockExpireTime = dict["LockExpireTime"] as! Int64
            }
            if dict.keys.contains("OrganizationalUnits") {
                var tmp : [GetUserResponseBody.User.OrganizationalUnits] = []
                for v in dict["OrganizationalUnits"] as! [Any] {
                    var model = GetUserResponseBody.User.OrganizationalUnits()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.organizationalUnits = tmp
            }
            if dict.keys.contains("PasswordExpireTime") {
                self.passwordExpireTime = dict["PasswordExpireTime"] as! Int64
            }
            if dict.keys.contains("PasswordSet") {
                self.passwordSet = dict["PasswordSet"] as! Bool
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("PhoneNumberVerified") {
                self.phoneNumberVerified = dict["PhoneNumberVerified"] as! Bool
            }
            if dict.keys.contains("PhoneRegion") {
                self.phoneRegion = dict["PhoneRegion"] as! String
            }
            if dict.keys.contains("PreferredLanguage") {
                self.preferredLanguage = dict["PreferredLanguage"] as! String
            }
            if dict.keys.contains("PrimaryOrganizationalUnitId") {
                self.primaryOrganizationalUnitId = dict["PrimaryOrganizationalUnitId"] as! String
            }
            if dict.keys.contains("RegisterTime") {
                self.registerTime = dict["RegisterTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserExternalId") {
                self.userExternalId = dict["UserExternalId"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserSourceId") {
                self.userSourceId = dict["UserSourceId"] as! String
            }
            if dict.keys.contains("UserSourceType") {
                self.userSourceType = dict["UserSourceType"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("User") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationClientSecretsRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class ListApplicationClientSecretsResponseBody : Tea.TeaModel {
    public class ApplicationClientSecrets : Tea.TeaModel {
        public var applicationId: String?

        public var clientId: String?

        public var clientSecret: String?

        public var instanceId: String?

        public var lastUsedTime: Int64?

        public var secretId: String?

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
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.clientSecret != nil {
                map["ClientSecret"] = self.clientSecret!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lastUsedTime != nil {
                map["LastUsedTime"] = self.lastUsedTime!
            }
            if self.secretId != nil {
                map["SecretId"] = self.secretId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("ClientSecret") {
                self.clientSecret = dict["ClientSecret"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LastUsedTime") {
                self.lastUsedTime = dict["LastUsedTime"] as! Int64
            }
            if dict.keys.contains("SecretId") {
                self.secretId = dict["SecretId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var applicationClientSecrets: [ListApplicationClientSecretsResponseBody.ApplicationClientSecrets]?

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
        if self.applicationClientSecrets != nil {
            var tmp : [Any] = []
            for k in self.applicationClientSecrets! {
                tmp.append(k.toMap())
            }
            map["ApplicationClientSecrets"] = tmp
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
        if dict.keys.contains("ApplicationClientSecrets") {
            var tmp : [ListApplicationClientSecretsResponseBody.ApplicationClientSecrets] = []
            for v in dict["ApplicationClientSecrets"] as! [Any] {
                var model = ListApplicationClientSecretsResponseBody.ApplicationClientSecrets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applicationClientSecrets = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListApplicationClientSecretsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationClientSecretsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListApplicationClientSecretsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var applicationName: String?

    public var authorizationType: String?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.applicationName != nil {
            map["ApplicationName"] = self.applicationName!
        }
        if self.authorizationType != nil {
            map["AuthorizationType"] = self.authorizationType!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ApplicationName") {
            self.applicationName = dict["ApplicationName"] as! String
        }
        if dict.keys.contains("AuthorizationType") {
            self.authorizationType = dict["AuthorizationType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public var applicationName: String?

        public var applicationSourceType: String?

        public var applicationTemplateId: String?

        public var clientId: String?

        public var createTime: Int64?

        public var description_: String?

        public var features: String?

        public var instanceId: String?

        public var logoUrl: String?

        public var managedServiceCode: String?

        public var serviceManaged: Bool?

        public var ssoType: String?

        public var status: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.applicationName != nil {
                map["ApplicationName"] = self.applicationName!
            }
            if self.applicationSourceType != nil {
                map["ApplicationSourceType"] = self.applicationSourceType!
            }
            if self.applicationTemplateId != nil {
                map["ApplicationTemplateId"] = self.applicationTemplateId!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.features != nil {
                map["Features"] = self.features!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.logoUrl != nil {
                map["LogoUrl"] = self.logoUrl!
            }
            if self.managedServiceCode != nil {
                map["ManagedServiceCode"] = self.managedServiceCode!
            }
            if self.serviceManaged != nil {
                map["ServiceManaged"] = self.serviceManaged!
            }
            if self.ssoType != nil {
                map["SsoType"] = self.ssoType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ApplicationName") {
                self.applicationName = dict["ApplicationName"] as! String
            }
            if dict.keys.contains("ApplicationSourceType") {
                self.applicationSourceType = dict["ApplicationSourceType"] as! String
            }
            if dict.keys.contains("ApplicationTemplateId") {
                self.applicationTemplateId = dict["ApplicationTemplateId"] as! String
            }
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Features") {
                self.features = dict["Features"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LogoUrl") {
                self.logoUrl = dict["LogoUrl"] as! String
            }
            if dict.keys.contains("ManagedServiceCode") {
                self.managedServiceCode = dict["ManagedServiceCode"] as! String
            }
            if dict.keys.contains("ServiceManaged") {
                self.serviceManaged = dict["ServiceManaged"] as! Bool
            }
            if dict.keys.contains("SsoType") {
                self.ssoType = dict["SsoType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var applications: [ListApplicationsResponseBody.Applications]?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
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
        if dict.keys.contains("Applications") {
            var tmp : [ListApplicationsResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListApplicationsResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsForOrganizationalUnitRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var instanceId: String?

    public var organizationalUnitId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
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
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListApplicationsForOrganizationalUnitResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
        }
    }
    public var applications: [ListApplicationsForOrganizationalUnitResponseBody.Applications]?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
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
        if dict.keys.contains("Applications") {
            var tmp : [ListApplicationsForOrganizationalUnitResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListApplicationsForOrganizationalUnitResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListApplicationsForOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsForOrganizationalUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListApplicationsForOrganizationalUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsForUserRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var queryMode: String?

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
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
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
        if self.queryMode != nil {
            map["QueryMode"] = self.queryMode!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("QueryMode") {
            self.queryMode = dict["QueryMode"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListApplicationsForUserResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public var hasDirectAuthorization: Bool?

        public var hasInheritAuthorization: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.hasDirectAuthorization != nil {
                map["HasDirectAuthorization"] = self.hasDirectAuthorization!
            }
            if self.hasInheritAuthorization != nil {
                map["HasInheritAuthorization"] = self.hasInheritAuthorization!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("HasDirectAuthorization") {
                self.hasDirectAuthorization = dict["HasDirectAuthorization"] as! Bool
            }
            if dict.keys.contains("HasInheritAuthorization") {
                self.hasInheritAuthorization = dict["HasInheritAuthorization"] as! Bool
            }
        }
    }
    public var applications: [ListApplicationsForUserResponseBody.Applications]?

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
        if self.applications != nil {
            var tmp : [Any] = []
            for k in self.applications! {
                tmp.append(k.toMap())
            }
            map["Applications"] = tmp
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
        if dict.keys.contains("Applications") {
            var tmp : [ListApplicationsForUserResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListApplicationsForUserResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListApplicationsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListApplicationsForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDomainProxyTokensRequest : Tea.TeaModel {
    public var domainId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class ListDomainProxyTokensResponseBody : Tea.TeaModel {
    public class DomainProxyTokens : Tea.TeaModel {
        public var createTime: Int64?

        public var domainId: String?

        public var domainProxyToken: String?

        public var domainProxyTokenId: String?

        public var instanceId: String?

        public var lastUsedTime: Int64?

        public var status: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.domainProxyToken != nil {
                map["DomainProxyToken"] = self.domainProxyToken!
            }
            if self.domainProxyTokenId != nil {
                map["DomainProxyTokenId"] = self.domainProxyTokenId!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lastUsedTime != nil {
                map["LastUsedTime"] = self.lastUsedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DomainId") {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("DomainProxyToken") {
                self.domainProxyToken = dict["DomainProxyToken"] as! String
            }
            if dict.keys.contains("DomainProxyTokenId") {
                self.domainProxyTokenId = dict["DomainProxyTokenId"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LastUsedTime") {
                self.lastUsedTime = dict["LastUsedTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var domainProxyTokens: [ListDomainProxyTokensResponseBody.DomainProxyTokens]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainProxyTokens != nil {
            var tmp : [Any] = []
            for k in self.domainProxyTokens! {
                tmp.append(k.toMap())
            }
            map["DomainProxyTokens"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainProxyTokens") {
            var tmp : [ListDomainProxyTokensResponseBody.DomainProxyTokens] = []
            for v in dict["DomainProxyTokens"] as! [Any] {
                var model = ListDomainProxyTokensResponseBody.DomainProxyTokens()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domainProxyTokens = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDomainProxyTokensResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDomainProxyTokensResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDomainProxyTokensResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDomainsRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class ListDomainsResponseBody : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public class Filing : Tea.TeaModel {
            public var icpNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.icpNumber != nil {
                    map["IcpNumber"] = self.icpNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IcpNumber") {
                    self.icpNumber = dict["IcpNumber"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var defaultDomain: Bool?

        public var domain: String?

        public var domainId: String?

        public var domainType: String?

        public var filing: ListDomainsResponseBody.Domains.Filing?

        public var instanceId: String?

        public var lockMode: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.filing?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultDomain != nil {
                map["DefaultDomain"] = self.defaultDomain!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.filing != nil {
                map["Filing"] = self.filing?.toMap()
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DefaultDomain") {
                self.defaultDomain = dict["DefaultDomain"] as! Bool
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainId") {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("DomainType") {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("Filing") {
                var model = ListDomainsResponseBody.Domains.Filing()
                model.fromMap(dict["Filing"] as! [String: Any])
                self.filing = model
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LockMode") {
                self.lockMode = dict["LockMode"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var domains: [ListDomainsResponseBody.Domains]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domains != nil {
            var tmp : [Any] = []
            for k in self.domains! {
                tmp.append(k.toMap())
            }
            map["Domains"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domains") {
            var tmp : [ListDomainsResponseBody.Domains] = []
            for v in dict["Domains"] as! [Any] {
                var model = ListDomainsResponseBody.Domains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domains = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEiamInstancesRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var instanceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.instanceRegionId != nil {
            map["InstanceRegionId"] = self.instanceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("InstanceRegionId") {
            self.instanceRegionId = dict["InstanceRegionId"] as! String
        }
    }
}

public class ListEiamInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var description_: String?

        public var developerAPIPrivateDomain: String?

        public var developerAPIPublicDomain: String?

        public var instanceId: String?

        public var instanceStatus: String?

        public var instanceVersion: String?

        public var openAPIPrivateDomain: String?

        public var openAPIPublicDomain: String?

        public var SSODomain: String?

        public var startTime: Int64?

        public override init() {
            super.init()
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
            if self.developerAPIPrivateDomain != nil {
                map["DeveloperAPIPrivateDomain"] = self.developerAPIPrivateDomain!
            }
            if self.developerAPIPublicDomain != nil {
                map["DeveloperAPIPublicDomain"] = self.developerAPIPublicDomain!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.instanceVersion != nil {
                map["InstanceVersion"] = self.instanceVersion!
            }
            if self.openAPIPrivateDomain != nil {
                map["OpenAPIPrivateDomain"] = self.openAPIPrivateDomain!
            }
            if self.openAPIPublicDomain != nil {
                map["OpenAPIPublicDomain"] = self.openAPIPublicDomain!
            }
            if self.SSODomain != nil {
                map["SSODomain"] = self.SSODomain!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeveloperAPIPrivateDomain") {
                self.developerAPIPrivateDomain = dict["DeveloperAPIPrivateDomain"] as! String
            }
            if dict.keys.contains("DeveloperAPIPublicDomain") {
                self.developerAPIPublicDomain = dict["DeveloperAPIPublicDomain"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceStatus") {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("InstanceVersion") {
                self.instanceVersion = dict["InstanceVersion"] as! String
            }
            if dict.keys.contains("OpenAPIPrivateDomain") {
                self.openAPIPrivateDomain = dict["OpenAPIPrivateDomain"] as! String
            }
            if dict.keys.contains("OpenAPIPublicDomain") {
                self.openAPIPublicDomain = dict["OpenAPIPublicDomain"] as! String
            }
            if dict.keys.contains("SSODomain") {
                self.SSODomain = dict["SSODomain"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var instances: [ListEiamInstancesResponseBody.Instances]?

    public var requestId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") {
            var tmp : [ListEiamInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = ListEiamInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEiamInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEiamInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListEiamInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEiamRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regions: [ListEiamRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if dict.keys.contains("Regions") {
            var tmp : [ListEiamRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = ListEiamRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEiamRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEiamRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListEiamRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var groupExternalId: String?

    public var groupIds: [String]?

    public var groupName: String?

    public var groupNameStartsWith: String?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupExternalId != nil {
            map["GroupExternalId"] = self.groupExternalId!
        }
        if self.groupIds != nil {
            map["GroupIds"] = self.groupIds!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupNameStartsWith != nil {
            map["GroupNameStartsWith"] = self.groupNameStartsWith!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupExternalId") {
            self.groupExternalId = dict["GroupExternalId"] as! String
        }
        if dict.keys.contains("GroupIds") {
            self.groupIds = dict["GroupIds"] as! [String]
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("GroupNameStartsWith") {
            self.groupNameStartsWith = dict["GroupNameStartsWith"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public var createTime: Int64?

        public var description_: String?

        public var groupExternalId: String?

        public var groupId: String?

        public var groupName: String?

        public var groupSourceId: String?

        public var groupSourceType: String?

        public var instanceId: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupExternalId != nil {
                map["GroupExternalId"] = self.groupExternalId!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupSourceId != nil {
                map["GroupSourceId"] = self.groupSourceId!
            }
            if self.groupSourceType != nil {
                map["GroupSourceType"] = self.groupSourceType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GroupExternalId") {
                self.groupExternalId = dict["GroupExternalId"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupSourceId") {
                self.groupSourceId = dict["GroupSourceId"] as! String
            }
            if dict.keys.contains("GroupSourceType") {
                self.groupSourceType = dict["GroupSourceType"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var groups: [ListGroupsResponseBody.Groups]?

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
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
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
        if dict.keys.contains("Groups") {
            var tmp : [ListGroupsResponseBody.Groups] = []
            for v in dict["Groups"] as! [Any] {
                var model = ListGroupsResponseBody.Groups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groups = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsForApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var groupIds: [String]?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.groupIds != nil {
            map["GroupIds"] = self.groupIds!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("GroupIds") {
            self.groupIds = dict["GroupIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListGroupsForApplicationResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public var groupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
        }
    }
    public var groups: [ListGroupsForApplicationResponseBody.Groups]?

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
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
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
        if dict.keys.contains("Groups") {
            var tmp : [ListGroupsForApplicationResponseBody.Groups] = []
            for v in dict["Groups"] as! [Any] {
                var model = ListGroupsForApplicationResponseBody.Groups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groups = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListGroupsForApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsForApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListGroupsForApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsForUserRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListGroupsForUserResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public var groupId: String?

        public var groupMemberRelationSourceId: String?

        public var groupMemberRelationSourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupMemberRelationSourceId != nil {
                map["GroupMemberRelationSourceId"] = self.groupMemberRelationSourceId!
            }
            if self.groupMemberRelationSourceType != nil {
                map["GroupMemberRelationSourceType"] = self.groupMemberRelationSourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupMemberRelationSourceId") {
                self.groupMemberRelationSourceId = dict["GroupMemberRelationSourceId"] as! String
            }
            if dict.keys.contains("GroupMemberRelationSourceType") {
                self.groupMemberRelationSourceType = dict["GroupMemberRelationSourceType"] as! String
            }
        }
    }
    public var groups: [ListGroupsForUserResponseBody.Groups]?

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
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
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
        if dict.keys.contains("Groups") {
            var tmp : [ListGroupsForUserResponseBody.Groups] = []
            for v in dict["Groups"] as! [Any] {
                var model = ListGroupsForUserResponseBody.Groups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groups = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListGroupsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListGroupsForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class DefaultEndpoint : Tea.TeaModel {
            public var endpoint: String?

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
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var defaultEndpoint: ListInstancesResponseBody.Instances.DefaultEndpoint?

        public var description_: String?

        public var instanceId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.defaultEndpoint?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.defaultEndpoint != nil {
                map["DefaultEndpoint"] = self.defaultEndpoint?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DefaultEndpoint") {
                var model = ListInstancesResponseBody.Instances.DefaultEndpoint()
                model.fromMap(dict["DefaultEndpoint"] as! [String: Any])
                self.defaultEndpoint = model
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var instances: [ListInstancesResponseBody.Instances]?

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
        if dict.keys.contains("Instances") {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = ListInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

public class ListNetworkAccessEndpointAvailableRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regions: [ListNetworkAccessEndpointAvailableRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if dict.keys.contains("Regions") {
            var tmp : [ListNetworkAccessEndpointAvailableRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = ListNetworkAccessEndpointAvailableRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListNetworkAccessEndpointAvailableRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNetworkAccessEndpointAvailableRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListNetworkAccessEndpointAvailableRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNetworkAccessEndpointAvailableZonesRequest : Tea.TeaModel {
    public var naeRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.naeRegionId != nil {
            map["NaeRegionId"] = self.naeRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NaeRegionId") {
            self.naeRegionId = dict["NaeRegionId"] as! String
        }
    }
}

public class ListNetworkAccessEndpointAvailableZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
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
    public var requestId: String?

    public var zones: [ListNetworkAccessEndpointAvailableZonesResponseBody.Zones]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zones != nil {
            var tmp : [Any] = []
            for k in self.zones! {
                tmp.append(k.toMap())
            }
            map["Zones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") {
            var tmp : [ListNetworkAccessEndpointAvailableZonesResponseBody.Zones] = []
            for v in dict["Zones"] as! [Any] {
                var model = ListNetworkAccessEndpointAvailableZonesResponseBody.Zones()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zones = tmp
        }
    }
}

public class ListNetworkAccessEndpointAvailableZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNetworkAccessEndpointAvailableZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListNetworkAccessEndpointAvailableZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNetworkAccessEndpointsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var maxResults: Int64?

    public var networkAccessEndpointStatus: String?

    public var networkAccessEndpointType: String?

    public var nextToken: String?

    public var vpcId: String?

    public var vpcRegionId: String?

    public override init() {
        super.init()
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
        if self.networkAccessEndpointStatus != nil {
            map["NetworkAccessEndpointStatus"] = self.networkAccessEndpointStatus!
        }
        if self.networkAccessEndpointType != nil {
            map["NetworkAccessEndpointType"] = self.networkAccessEndpointType!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpcRegionId != nil {
            map["VpcRegionId"] = self.vpcRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NetworkAccessEndpointStatus") {
            self.networkAccessEndpointStatus = dict["NetworkAccessEndpointStatus"] as! String
        }
        if dict.keys.contains("NetworkAccessEndpointType") {
            self.networkAccessEndpointType = dict["NetworkAccessEndpointType"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VpcRegionId") {
            self.vpcRegionId = dict["VpcRegionId"] as! String
        }
    }
}

public class ListNetworkAccessEndpointsResponseBody : Tea.TeaModel {
    public class NetworkAccessEndpoints : Tea.TeaModel {
        public var createTime: Int64?

        public var instanceId: String?

        public var networkAccessEndpointId: String?

        public var networkAccessEndpointName: String?

        public var networkAccessEndpointType: String?

        public var securityGroupId: String?

        public var status: String?

        public var updateTime: Int64?

        public var vSwitchIds: [String]?

        public var vpcId: String?

        public var vpcRegionId: String?

        public override init() {
            super.init()
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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.networkAccessEndpointId != nil {
                map["NetworkAccessEndpointId"] = self.networkAccessEndpointId!
            }
            if self.networkAccessEndpointName != nil {
                map["NetworkAccessEndpointName"] = self.networkAccessEndpointName!
            }
            if self.networkAccessEndpointType != nil {
                map["NetworkAccessEndpointType"] = self.networkAccessEndpointType!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcRegionId != nil {
                map["VpcRegionId"] = self.vpcRegionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("NetworkAccessEndpointId") {
                self.networkAccessEndpointId = dict["NetworkAccessEndpointId"] as! String
            }
            if dict.keys.contains("NetworkAccessEndpointName") {
                self.networkAccessEndpointName = dict["NetworkAccessEndpointName"] as! String
            }
            if dict.keys.contains("NetworkAccessEndpointType") {
                self.networkAccessEndpointType = dict["NetworkAccessEndpointType"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcRegionId") {
                self.vpcRegionId = dict["VpcRegionId"] as! String
            }
        }
    }
    public var networkAccessEndpoints: [ListNetworkAccessEndpointsResponseBody.NetworkAccessEndpoints]?

    public var nextToken: String?

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
        if self.networkAccessEndpoints != nil {
            var tmp : [Any] = []
            for k in self.networkAccessEndpoints! {
                tmp.append(k.toMap())
            }
            map["NetworkAccessEndpoints"] = tmp
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
        if dict.keys.contains("NetworkAccessEndpoints") {
            var tmp : [ListNetworkAccessEndpointsResponseBody.NetworkAccessEndpoints] = []
            for v in dict["NetworkAccessEndpoints"] as! [Any] {
                var model = ListNetworkAccessEndpointsResponseBody.NetworkAccessEndpoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.networkAccessEndpoints = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListNetworkAccessEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNetworkAccessEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListNetworkAccessEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNetworkAccessPathsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var networkAccessEndpointId: String?

    public override init() {
        super.init()
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
        if self.networkAccessEndpointId != nil {
            map["NetworkAccessEndpointId"] = self.networkAccessEndpointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkAccessEndpointId") {
            self.networkAccessEndpointId = dict["NetworkAccessEndpointId"] as! String
        }
    }
}

public class ListNetworkAccessPathsResponseBody : Tea.TeaModel {
    public class NetworkAccessPaths : Tea.TeaModel {
        public var createTime: Int64?

        public var instanceId: String?

        public var networkAccessEndpointId: String?

        public var networkAccessPathId: String?

        public var networkInterfaceId: String?

        public var privateIpAddress: String?

        public var status: String?

        public var updateTime: Int64?

        public var vSwitchId: String?

        public override init() {
            super.init()
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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.networkAccessEndpointId != nil {
                map["NetworkAccessEndpointId"] = self.networkAccessEndpointId!
            }
            if self.networkAccessPathId != nil {
                map["NetworkAccessPathId"] = self.networkAccessPathId!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.privateIpAddress != nil {
                map["PrivateIpAddress"] = self.privateIpAddress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("NetworkAccessEndpointId") {
                self.networkAccessEndpointId = dict["NetworkAccessEndpointId"] as! String
            }
            if dict.keys.contains("NetworkAccessPathId") {
                self.networkAccessPathId = dict["NetworkAccessPathId"] as! String
            }
            if dict.keys.contains("NetworkInterfaceId") {
                self.networkInterfaceId = dict["NetworkInterfaceId"] as! String
            }
            if dict.keys.contains("PrivateIpAddress") {
                self.privateIpAddress = dict["PrivateIpAddress"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
        }
    }
    public var networkAccessPaths: [ListNetworkAccessPathsResponseBody.NetworkAccessPaths]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkAccessPaths != nil {
            var tmp : [Any] = []
            for k in self.networkAccessPaths! {
                tmp.append(k.toMap())
            }
            map["NetworkAccessPaths"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkAccessPaths") {
            var tmp : [ListNetworkAccessPathsResponseBody.NetworkAccessPaths] = []
            for v in dict["NetworkAccessPaths"] as! [Any] {
                var model = ListNetworkAccessPathsResponseBody.NetworkAccessPaths()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.networkAccessPaths = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListNetworkAccessPathsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNetworkAccessPathsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListNetworkAccessPathsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrganizationalUnitParentsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitId: String?

    public override init() {
        super.init()
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
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
    }
}

public class ListOrganizationalUnitParentsResponseBody : Tea.TeaModel {
    public class Parents : Tea.TeaModel {
        public var organizationalUnitId: String?

        public var parentId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.organizationalUnitId != nil {
                map["OrganizationalUnitId"] = self.organizationalUnitId!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrganizationalUnitId") {
                self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
        }
    }
    public var parents: [ListOrganizationalUnitParentsResponseBody.Parents]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parents != nil {
            var tmp : [Any] = []
            for k in self.parents! {
                tmp.append(k.toMap())
            }
            map["Parents"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Parents") {
            var tmp : [ListOrganizationalUnitParentsResponseBody.Parents] = []
            for v in dict["Parents"] as! [Any] {
                var model = ListOrganizationalUnitParentsResponseBody.Parents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parents = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListOrganizationalUnitParentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationalUnitParentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOrganizationalUnitParentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrganizationalUnitsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitIds: [String]?

    public var organizationalUnitName: String?

    public var organizationalUnitNameStartsWith: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var parentId: String?

    public override init() {
        super.init()
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
        if self.organizationalUnitIds != nil {
            map["OrganizationalUnitIds"] = self.organizationalUnitIds!
        }
        if self.organizationalUnitName != nil {
            map["OrganizationalUnitName"] = self.organizationalUnitName!
        }
        if self.organizationalUnitNameStartsWith != nil {
            map["OrganizationalUnitNameStartsWith"] = self.organizationalUnitNameStartsWith!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitIds") {
            self.organizationalUnitIds = dict["OrganizationalUnitIds"] as! [String]
        }
        if dict.keys.contains("OrganizationalUnitName") {
            self.organizationalUnitName = dict["OrganizationalUnitName"] as! String
        }
        if dict.keys.contains("OrganizationalUnitNameStartsWith") {
            self.organizationalUnitNameStartsWith = dict["OrganizationalUnitNameStartsWith"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
    }
}

public class ListOrganizationalUnitsResponseBody : Tea.TeaModel {
    public class OrganizationalUnits : Tea.TeaModel {
        public var createTime: Int64?

        public var description_: String?

        public var instanceId: String?

        public var leaf: Bool?

        public var organizationalUnitExternalId: String?

        public var organizationalUnitId: String?

        public var organizationalUnitName: String?

        public var organizationalUnitSourceId: String?

        public var organizationalUnitSourceType: String?

        public var parentId: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.leaf != nil {
                map["Leaf"] = self.leaf!
            }
            if self.organizationalUnitExternalId != nil {
                map["OrganizationalUnitExternalId"] = self.organizationalUnitExternalId!
            }
            if self.organizationalUnitId != nil {
                map["OrganizationalUnitId"] = self.organizationalUnitId!
            }
            if self.organizationalUnitName != nil {
                map["OrganizationalUnitName"] = self.organizationalUnitName!
            }
            if self.organizationalUnitSourceId != nil {
                map["OrganizationalUnitSourceId"] = self.organizationalUnitSourceId!
            }
            if self.organizationalUnitSourceType != nil {
                map["OrganizationalUnitSourceType"] = self.organizationalUnitSourceType!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Leaf") {
                self.leaf = dict["Leaf"] as! Bool
            }
            if dict.keys.contains("OrganizationalUnitExternalId") {
                self.organizationalUnitExternalId = dict["OrganizationalUnitExternalId"] as! String
            }
            if dict.keys.contains("OrganizationalUnitId") {
                self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
            }
            if dict.keys.contains("OrganizationalUnitName") {
                self.organizationalUnitName = dict["OrganizationalUnitName"] as! String
            }
            if dict.keys.contains("OrganizationalUnitSourceId") {
                self.organizationalUnitSourceId = dict["OrganizationalUnitSourceId"] as! String
            }
            if dict.keys.contains("OrganizationalUnitSourceType") {
                self.organizationalUnitSourceType = dict["OrganizationalUnitSourceType"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var organizationalUnits: [ListOrganizationalUnitsResponseBody.OrganizationalUnits]?

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
        if self.organizationalUnits != nil {
            var tmp : [Any] = []
            for k in self.organizationalUnits! {
                tmp.append(k.toMap())
            }
            map["OrganizationalUnits"] = tmp
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
        if dict.keys.contains("OrganizationalUnits") {
            var tmp : [ListOrganizationalUnitsResponseBody.OrganizationalUnits] = []
            for v in dict["OrganizationalUnits"] as! [Any] {
                var model = ListOrganizationalUnitsResponseBody.OrganizationalUnits()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.organizationalUnits = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListOrganizationalUnitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationalUnitsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOrganizationalUnitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrganizationalUnitsForApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public var organizationalUnitIds: [String]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.organizationalUnitIds != nil {
            map["OrganizationalUnitIds"] = self.organizationalUnitIds!
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
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitIds") {
            self.organizationalUnitIds = dict["OrganizationalUnitIds"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListOrganizationalUnitsForApplicationResponseBody : Tea.TeaModel {
    public class OrganizationalUnits : Tea.TeaModel {
        public var organizationalUnitId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.organizationalUnitId != nil {
                map["OrganizationalUnitId"] = self.organizationalUnitId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrganizationalUnitId") {
                self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
            }
        }
    }
    public var organizationalUnits: [ListOrganizationalUnitsForApplicationResponseBody.OrganizationalUnits]?

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
        if self.organizationalUnits != nil {
            var tmp : [Any] = []
            for k in self.organizationalUnits! {
                tmp.append(k.toMap())
            }
            map["OrganizationalUnits"] = tmp
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
        if dict.keys.contains("OrganizationalUnits") {
            var tmp : [ListOrganizationalUnitsForApplicationResponseBody.OrganizationalUnits] = []
            for v in dict["OrganizationalUnits"] as! [Any] {
                var model = ListOrganizationalUnitsForApplicationResponseBody.OrganizationalUnits()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.organizationalUnits = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListOrganizationalUnitsForApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationalUnitsForApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOrganizationalUnitsForApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
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
    public var regions: [ListRegionsResponseBody.Regions]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if dict.keys.contains("Regions") {
            var tmp : [ListRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = ListRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSynchronizationJobsRequest : Tea.TeaModel {
    public var direction: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var startTime: Int64?

    public var status: String?

    public var targetIds: [String]?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.targetIds != nil {
            map["TargetIds"] = self.targetIds!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TargetIds") {
            self.targetIds = dict["TargetIds"] as! [String]
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class ListSynchronizationJobsResponseBody : Tea.TeaModel {
    public class SynchronizationJobs : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class GroupMemberStatistics : Tea.TeaModel {
                public class Binded : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Created : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Deleted : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Pushed : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Same : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Updated : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public var binded: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Binded?

                public var created: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Created?

                public var deleted: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Deleted?

                public var pushed: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Pushed?

                public var same: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Same?

                public var updated: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Updated?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.binded?.validate()
                    try self.created?.validate()
                    try self.deleted?.validate()
                    try self.pushed?.validate()
                    try self.same?.validate()
                    try self.updated?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.binded != nil {
                        map["Binded"] = self.binded?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted?.toMap()
                    }
                    if self.pushed != nil {
                        map["Pushed"] = self.pushed?.toMap()
                    }
                    if self.same != nil {
                        map["Same"] = self.same?.toMap()
                    }
                    if self.updated != nil {
                        map["Updated"] = self.updated?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Binded") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Binded()
                        model.fromMap(dict["Binded"] as! [String: Any])
                        self.binded = model
                    }
                    if dict.keys.contains("Created") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Created()
                        model.fromMap(dict["Created"] as! [String: Any])
                        self.created = model
                    }
                    if dict.keys.contains("Deleted") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Deleted()
                        model.fromMap(dict["Deleted"] as! [String: Any])
                        self.deleted = model
                    }
                    if dict.keys.contains("Pushed") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Pushed()
                        model.fromMap(dict["Pushed"] as! [String: Any])
                        self.pushed = model
                    }
                    if dict.keys.contains("Same") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Same()
                        model.fromMap(dict["Same"] as! [String: Any])
                        self.same = model
                    }
                    if dict.keys.contains("Updated") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics.Updated()
                        model.fromMap(dict["Updated"] as! [String: Any])
                        self.updated = model
                    }
                }
            }
            public class GroupStatistics : Tea.TeaModel {
                public class Binded : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Created : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Deleted : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Pushed : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Same : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Updated : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public var binded: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Binded?

                public var created: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Created?

                public var deleted: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Deleted?

                public var pushed: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Pushed?

                public var same: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Same?

                public var updated: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Updated?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.binded?.validate()
                    try self.created?.validate()
                    try self.deleted?.validate()
                    try self.pushed?.validate()
                    try self.same?.validate()
                    try self.updated?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.binded != nil {
                        map["Binded"] = self.binded?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted?.toMap()
                    }
                    if self.pushed != nil {
                        map["Pushed"] = self.pushed?.toMap()
                    }
                    if self.same != nil {
                        map["Same"] = self.same?.toMap()
                    }
                    if self.updated != nil {
                        map["Updated"] = self.updated?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Binded") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Binded()
                        model.fromMap(dict["Binded"] as! [String: Any])
                        self.binded = model
                    }
                    if dict.keys.contains("Created") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Created()
                        model.fromMap(dict["Created"] as! [String: Any])
                        self.created = model
                    }
                    if dict.keys.contains("Deleted") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Deleted()
                        model.fromMap(dict["Deleted"] as! [String: Any])
                        self.deleted = model
                    }
                    if dict.keys.contains("Pushed") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Pushed()
                        model.fromMap(dict["Pushed"] as! [String: Any])
                        self.pushed = model
                    }
                    if dict.keys.contains("Same") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Same()
                        model.fromMap(dict["Same"] as! [String: Any])
                        self.same = model
                    }
                    if dict.keys.contains("Updated") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics.Updated()
                        model.fromMap(dict["Updated"] as! [String: Any])
                        self.updated = model
                    }
                }
            }
            public class OrganizationalUnitStatistics : Tea.TeaModel {
                public class Binded : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Created : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Deleted : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Pushed : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Same : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Updated : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public var binded: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Binded?

                public var created: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Created?

                public var deleted: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Deleted?

                public var pushed: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Pushed?

                public var same: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Same?

                public var updated: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Updated?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.binded?.validate()
                    try self.created?.validate()
                    try self.deleted?.validate()
                    try self.pushed?.validate()
                    try self.same?.validate()
                    try self.updated?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.binded != nil {
                        map["Binded"] = self.binded?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted?.toMap()
                    }
                    if self.pushed != nil {
                        map["Pushed"] = self.pushed?.toMap()
                    }
                    if self.same != nil {
                        map["Same"] = self.same?.toMap()
                    }
                    if self.updated != nil {
                        map["Updated"] = self.updated?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Binded") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Binded()
                        model.fromMap(dict["Binded"] as! [String: Any])
                        self.binded = model
                    }
                    if dict.keys.contains("Created") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Created()
                        model.fromMap(dict["Created"] as! [String: Any])
                        self.created = model
                    }
                    if dict.keys.contains("Deleted") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Deleted()
                        model.fromMap(dict["Deleted"] as! [String: Any])
                        self.deleted = model
                    }
                    if dict.keys.contains("Pushed") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Pushed()
                        model.fromMap(dict["Pushed"] as! [String: Any])
                        self.pushed = model
                    }
                    if dict.keys.contains("Same") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Same()
                        model.fromMap(dict["Same"] as! [String: Any])
                        self.same = model
                    }
                    if dict.keys.contains("Updated") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics.Updated()
                        model.fromMap(dict["Updated"] as! [String: Any])
                        self.updated = model
                    }
                }
            }
            public class UserStatistics : Tea.TeaModel {
                public class Binded : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Created : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Deleted : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Pushed : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Same : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public class Updated : Tea.TeaModel {
                    public var failed: Int64?

                    public var skipped: Int64?

                    public var success: Int64?

                    public var total: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failed != nil {
                            map["Failed"] = self.failed!
                        }
                        if self.skipped != nil {
                            map["Skipped"] = self.skipped!
                        }
                        if self.success != nil {
                            map["Success"] = self.success!
                        }
                        if self.total != nil {
                            map["Total"] = self.total!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Failed") {
                            self.failed = dict["Failed"] as! Int64
                        }
                        if dict.keys.contains("Skipped") {
                            self.skipped = dict["Skipped"] as! Int64
                        }
                        if dict.keys.contains("Success") {
                            self.success = dict["Success"] as! Int64
                        }
                        if dict.keys.contains("Total") {
                            self.total = dict["Total"] as! Int64
                        }
                    }
                }
                public var binded: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Binded?

                public var created: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Created?

                public var deleted: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Deleted?

                public var pushed: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Pushed?

                public var same: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Same?

                public var updated: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Updated?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.binded?.validate()
                    try self.created?.validate()
                    try self.deleted?.validate()
                    try self.pushed?.validate()
                    try self.same?.validate()
                    try self.updated?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.binded != nil {
                        map["Binded"] = self.binded?.toMap()
                    }
                    if self.created != nil {
                        map["Created"] = self.created?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted?.toMap()
                    }
                    if self.pushed != nil {
                        map["Pushed"] = self.pushed?.toMap()
                    }
                    if self.same != nil {
                        map["Same"] = self.same?.toMap()
                    }
                    if self.updated != nil {
                        map["Updated"] = self.updated?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Binded") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Binded()
                        model.fromMap(dict["Binded"] as! [String: Any])
                        self.binded = model
                    }
                    if dict.keys.contains("Created") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Created()
                        model.fromMap(dict["Created"] as! [String: Any])
                        self.created = model
                    }
                    if dict.keys.contains("Deleted") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Deleted()
                        model.fromMap(dict["Deleted"] as! [String: Any])
                        self.deleted = model
                    }
                    if dict.keys.contains("Pushed") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Pushed()
                        model.fromMap(dict["Pushed"] as! [String: Any])
                        self.pushed = model
                    }
                    if dict.keys.contains("Same") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Same()
                        model.fromMap(dict["Same"] as! [String: Any])
                        self.same = model
                    }
                    if dict.keys.contains("Updated") {
                        var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics.Updated()
                        model.fromMap(dict["Updated"] as! [String: Any])
                        self.updated = model
                    }
                }
            }
            public var errorCode: String?

            public var errorMessage: String?

            public var groupMemberStatistics: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics?

            public var groupStatistics: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics?

            public var organizationalUnitStatistics: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics?

            public var userStatistics: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.groupMemberStatistics?.validate()
                try self.groupStatistics?.validate()
                try self.organizationalUnitStatistics?.validate()
                try self.userStatistics?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.groupMemberStatistics != nil {
                    map["GroupMemberStatistics"] = self.groupMemberStatistics?.toMap()
                }
                if self.groupStatistics != nil {
                    map["GroupStatistics"] = self.groupStatistics?.toMap()
                }
                if self.organizationalUnitStatistics != nil {
                    map["OrganizationalUnitStatistics"] = self.organizationalUnitStatistics?.toMap()
                }
                if self.userStatistics != nil {
                    map["UserStatistics"] = self.userStatistics?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("GroupMemberStatistics") {
                    var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupMemberStatistics()
                    model.fromMap(dict["GroupMemberStatistics"] as! [String: Any])
                    self.groupMemberStatistics = model
                }
                if dict.keys.contains("GroupStatistics") {
                    var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.GroupStatistics()
                    model.fromMap(dict["GroupStatistics"] as! [String: Any])
                    self.groupStatistics = model
                }
                if dict.keys.contains("OrganizationalUnitStatistics") {
                    var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.OrganizationalUnitStatistics()
                    model.fromMap(dict["OrganizationalUnitStatistics"] as! [String: Any])
                    self.organizationalUnitStatistics = model
                }
                if dict.keys.contains("UserStatistics") {
                    var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result.UserStatistics()
                    model.fromMap(dict["UserStatistics"] as! [String: Any])
                    self.userStatistics = model
                }
            }
        }
        public var direction: String?

        public var endTime: Int64?

        public var result: ListSynchronizationJobsResponseBody.SynchronizationJobs.Result?

        public var startTime: Int64?

        public var status: String?

        public var synchronizationJobId: String?

        public var targetId: String?

        public var targetType: String?

        public var triggerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.result != nil {
                map["Result"] = self.result?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.synchronizationJobId != nil {
                map["SynchronizationJobId"] = self.synchronizationJobId!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Direction") {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Result") {
                var model = ListSynchronizationJobsResponseBody.SynchronizationJobs.Result()
                model.fromMap(dict["Result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SynchronizationJobId") {
                self.synchronizationJobId = dict["SynchronizationJobId"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("TriggerType") {
                self.triggerType = dict["TriggerType"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var synchronizationJobs: [ListSynchronizationJobsResponseBody.SynchronizationJobs]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.synchronizationJobs != nil {
            var tmp : [Any] = []
            for k in self.synchronizationJobs! {
                tmp.append(k.toMap())
            }
            map["SynchronizationJobs"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("SynchronizationJobs") {
            var tmp : [ListSynchronizationJobsResponseBody.SynchronizationJobs] = []
            for v in dict["SynchronizationJobs"] as! [Any] {
                var model = ListSynchronizationJobsResponseBody.SynchronizationJobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.synchronizationJobs = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListSynchronizationJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSynchronizationJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListSynchronizationJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var displayNameStartsWith: String?

    public var email: String?

    public var instanceId: String?

    public var organizationalUnitId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var phoneNumber: String?

    public var phoneRegion: String?

    public var status: String?

    public var userExternalId: String?

    public var userIds: [String]?

    public var userSourceId: String?

    public var userSourceType: String?

    public var usernameStartsWith: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayNameStartsWith != nil {
            map["DisplayNameStartsWith"] = self.displayNameStartsWith!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.phoneRegion != nil {
            map["PhoneRegion"] = self.phoneRegion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userExternalId != nil {
            map["UserExternalId"] = self.userExternalId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        if self.userSourceId != nil {
            map["UserSourceId"] = self.userSourceId!
        }
        if self.userSourceType != nil {
            map["UserSourceType"] = self.userSourceType!
        }
        if self.usernameStartsWith != nil {
            map["UsernameStartsWith"] = self.usernameStartsWith!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisplayNameStartsWith") {
            self.displayNameStartsWith = dict["DisplayNameStartsWith"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("PhoneRegion") {
            self.phoneRegion = dict["PhoneRegion"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserExternalId") {
            self.userExternalId = dict["UserExternalId"] as! String
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! [String]
        }
        if dict.keys.contains("UserSourceId") {
            self.userSourceId = dict["UserSourceId"] as! String
        }
        if dict.keys.contains("UserSourceType") {
            self.userSourceType = dict["UserSourceType"] as! String
        }
        if dict.keys.contains("UsernameStartsWith") {
            self.usernameStartsWith = dict["UsernameStartsWith"] as! String
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var accountExpireTime: Int64?

        public var createTime: Int64?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var emailVerified: Bool?

        public var instanceId: String?

        public var lockExpireTime: Int64?

        public var passwordExpireTime: Int64?

        public var passwordSet: Bool?

        public var phoneNumber: String?

        public var phoneNumberVerified: Bool?

        public var phoneRegion: String?

        public var registerTime: Int64?

        public var status: String?

        public var updateTime: Int64?

        public var userExternalId: String?

        public var userId: String?

        public var userSourceId: String?

        public var userSourceType: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountExpireTime != nil {
                map["AccountExpireTime"] = self.accountExpireTime!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.emailVerified != nil {
                map["EmailVerified"] = self.emailVerified!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lockExpireTime != nil {
                map["LockExpireTime"] = self.lockExpireTime!
            }
            if self.passwordExpireTime != nil {
                map["PasswordExpireTime"] = self.passwordExpireTime!
            }
            if self.passwordSet != nil {
                map["PasswordSet"] = self.passwordSet!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.phoneNumberVerified != nil {
                map["PhoneNumberVerified"] = self.phoneNumberVerified!
            }
            if self.phoneRegion != nil {
                map["PhoneRegion"] = self.phoneRegion!
            }
            if self.registerTime != nil {
                map["RegisterTime"] = self.registerTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userExternalId != nil {
                map["UserExternalId"] = self.userExternalId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userSourceId != nil {
                map["UserSourceId"] = self.userSourceId!
            }
            if self.userSourceType != nil {
                map["UserSourceType"] = self.userSourceType!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountExpireTime") {
                self.accountExpireTime = dict["AccountExpireTime"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EmailVerified") {
                self.emailVerified = dict["EmailVerified"] as! Bool
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LockExpireTime") {
                self.lockExpireTime = dict["LockExpireTime"] as! Int64
            }
            if dict.keys.contains("PasswordExpireTime") {
                self.passwordExpireTime = dict["PasswordExpireTime"] as! Int64
            }
            if dict.keys.contains("PasswordSet") {
                self.passwordSet = dict["PasswordSet"] as! Bool
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("PhoneNumberVerified") {
                self.phoneNumberVerified = dict["PhoneNumberVerified"] as! Bool
            }
            if dict.keys.contains("PhoneRegion") {
                self.phoneRegion = dict["PhoneRegion"] as! String
            }
            if dict.keys.contains("RegisterTime") {
                self.registerTime = dict["RegisterTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserExternalId") {
                self.userExternalId = dict["UserExternalId"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserSourceId") {
                self.userSourceId = dict["UserSourceId"] as! String
            }
            if dict.keys.contains("UserSourceType") {
                self.userSourceType = dict["UserSourceType"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("Users") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersForApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
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
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class ListUsersForApplicationResponseBody : Tea.TeaModel {
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
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

    public var users: [ListUsersForApplicationResponseBody.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("Users") {
            var tmp : [ListUsersForApplicationResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = ListUsersForApplicationResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class ListUsersForApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersForApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUsersForApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersForGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
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
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class ListUsersForGroupResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var groupMemberRelationSourceId: String?

        public var groupMemberRelationSourceType: String?

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
            if self.groupMemberRelationSourceId != nil {
                map["GroupMemberRelationSourceId"] = self.groupMemberRelationSourceId!
            }
            if self.groupMemberRelationSourceType != nil {
                map["GroupMemberRelationSourceType"] = self.groupMemberRelationSourceType!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupMemberRelationSourceId") {
                self.groupMemberRelationSourceId = dict["GroupMemberRelationSourceId"] as! String
            }
            if dict.keys.contains("GroupMemberRelationSourceType") {
                self.groupMemberRelationSourceType = dict["GroupMemberRelationSourceType"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

    public var users: [ListUsersForGroupResponseBody.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("Users") {
            var tmp : [ListUsersForGroupResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = ListUsersForGroupResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class ListUsersForGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersForGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUsersForGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ObtainApplicationClientSecretRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public var secretId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.secretId != nil {
            map["SecretId"] = self.secretId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SecretId") {
            self.secretId = dict["SecretId"] as! String
        }
    }
}

public class ObtainApplicationClientSecretResponseBody : Tea.TeaModel {
    public class ApplicationClientSecret : Tea.TeaModel {
        public var applicationId: String?

        public var clientId: String?

        public var clientSecret: String?

        public var instanceId: String?

        public var lastUsedTime: Int64?

        public var secretId: String?

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
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.clientSecret != nil {
                map["ClientSecret"] = self.clientSecret!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lastUsedTime != nil {
                map["LastUsedTime"] = self.lastUsedTime!
            }
            if self.secretId != nil {
                map["SecretId"] = self.secretId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("ClientSecret") {
                self.clientSecret = dict["ClientSecret"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LastUsedTime") {
                self.lastUsedTime = dict["LastUsedTime"] as! Int64
            }
            if dict.keys.contains("SecretId") {
                self.secretId = dict["SecretId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var applicationClientSecret: ObtainApplicationClientSecretResponseBody.ApplicationClientSecret?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationClientSecret?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationClientSecret != nil {
            map["ApplicationClientSecret"] = self.applicationClientSecret?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationClientSecret") {
            var model = ObtainApplicationClientSecretResponseBody.ApplicationClientSecret()
            model.fromMap(dict["ApplicationClientSecret"] as! [String: Any])
            self.applicationClientSecret = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ObtainApplicationClientSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ObtainApplicationClientSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ObtainApplicationClientSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ObtainDomainProxyTokenRequest : Tea.TeaModel {
    public var domainId: String?

    public var domainProxyTokenId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.domainProxyTokenId != nil {
            map["DomainProxyTokenId"] = self.domainProxyTokenId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("DomainProxyTokenId") {
            self.domainProxyTokenId = dict["DomainProxyTokenId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class ObtainDomainProxyTokenResponseBody : Tea.TeaModel {
    public class DomainProxyToken : Tea.TeaModel {
        public var createTime: Int64?

        public var domainId: String?

        public var domainProxyToken: String?

        public var domainProxyTokenId: String?

        public var instanceId: String?

        public var lastUsedTime: Int64?

        public var status: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.domainProxyToken != nil {
                map["DomainProxyToken"] = self.domainProxyToken!
            }
            if self.domainProxyTokenId != nil {
                map["DomainProxyTokenId"] = self.domainProxyTokenId!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lastUsedTime != nil {
                map["LastUsedTime"] = self.lastUsedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DomainId") {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("DomainProxyToken") {
                self.domainProxyToken = dict["DomainProxyToken"] as! String
            }
            if dict.keys.contains("DomainProxyTokenId") {
                self.domainProxyTokenId = dict["DomainProxyTokenId"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LastUsedTime") {
                self.lastUsedTime = dict["LastUsedTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var domainProxyToken: ObtainDomainProxyTokenResponseBody.DomainProxyToken?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainProxyToken?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainProxyToken != nil {
            map["DomainProxyToken"] = self.domainProxyToken?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainProxyToken") {
            var model = ObtainDomainProxyTokenResponseBody.DomainProxyToken()
            model.fromMap(dict["DomainProxyToken"] as! [String: Any])
            self.domainProxyToken = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ObtainDomainProxyTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ObtainDomainProxyTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ObtainDomainProxyTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUserFromOrganizationalUnitsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitIds: [String]?

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
        if self.organizationalUnitIds != nil {
            map["OrganizationalUnitIds"] = self.organizationalUnitIds!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitIds") {
            self.organizationalUnitIds = dict["OrganizationalUnitIds"] as! [String]
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class RemoveUserFromOrganizationalUnitsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RemoveUserFromOrganizationalUnitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserFromOrganizationalUnitsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveUserFromOrganizationalUnitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUsersFromGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class RemoveUsersFromGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveUsersFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeApplicationFromGroupsRequest : Tea.TeaModel {
    public var applicationId: String?

    public var groupIds: [String]?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.groupIds != nil {
            map["GroupIds"] = self.groupIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("GroupIds") {
            self.groupIds = dict["GroupIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class RevokeApplicationFromGroupsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RevokeApplicationFromGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeApplicationFromGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RevokeApplicationFromGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeApplicationFromOrganizationalUnitsRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

    public var organizationalUnitIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.organizationalUnitIds != nil {
            map["OrganizationalUnitIds"] = self.organizationalUnitIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitIds") {
            self.organizationalUnitIds = dict["OrganizationalUnitIds"] as! [String]
        }
    }
}

public class RevokeApplicationFromOrganizationalUnitsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RevokeApplicationFromOrganizationalUnitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeApplicationFromOrganizationalUnitsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RevokeApplicationFromOrganizationalUnitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeApplicationFromUsersRequest : Tea.TeaModel {
    public var applicationId: String?

    public var instanceId: String?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! [String]
        }
    }
}

public class RevokeApplicationFromUsersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RevokeApplicationFromUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeApplicationFromUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RevokeApplicationFromUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunSynchronizationJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public var targetId: String?

    public var targetType: String?

    public override init() {
        super.init()
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
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class RunSynchronizationJobResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SynchronizationJobId") {
            self.synchronizationJobId = dict["SynchronizationJobId"] as! String
        }
    }
}

public class RunSynchronizationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunSynchronizationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RunSynchronizationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetApplicationGrantScopeRequest : Tea.TeaModel {
    public var applicationId: String?

    public var grantScopes: [String]?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.grantScopes != nil {
            map["GrantScopes"] = self.grantScopes!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("GrantScopes") {
            self.grantScopes = dict["GrantScopes"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class SetApplicationGrantScopeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetApplicationGrantScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetApplicationGrantScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetApplicationGrantScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetApplicationProvisioningConfigRequest : Tea.TeaModel {
    public class CallbackProvisioningConfig : Tea.TeaModel {
        public var callbackUrl: String?

        public var encryptKey: String?

        public var encryptRequired: Bool?

        public var listenEventScopes: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callbackUrl != nil {
                map["CallbackUrl"] = self.callbackUrl!
            }
            if self.encryptKey != nil {
                map["EncryptKey"] = self.encryptKey!
            }
            if self.encryptRequired != nil {
                map["EncryptRequired"] = self.encryptRequired!
            }
            if self.listenEventScopes != nil {
                map["ListenEventScopes"] = self.listenEventScopes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallbackUrl") {
                self.callbackUrl = dict["CallbackUrl"] as! String
            }
            if dict.keys.contains("EncryptKey") {
                self.encryptKey = dict["EncryptKey"] as! String
            }
            if dict.keys.contains("EncryptRequired") {
                self.encryptRequired = dict["EncryptRequired"] as! Bool
            }
            if dict.keys.contains("ListenEventScopes") {
                self.listenEventScopes = dict["ListenEventScopes"] as! [String]
            }
        }
    }
    public class ScimProvisioningConfig : Tea.TeaModel {
        public class AuthnConfiguration : Tea.TeaModel {
            public class AuthnParam : Tea.TeaModel {
                public var accessToken: String?

                public var authnMethod: String?

                public var clientId: String?

                public var clientSecret: String?

                public var tokenEndpoint: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessToken != nil {
                        map["AccessToken"] = self.accessToken!
                    }
                    if self.authnMethod != nil {
                        map["AuthnMethod"] = self.authnMethod!
                    }
                    if self.clientId != nil {
                        map["ClientId"] = self.clientId!
                    }
                    if self.clientSecret != nil {
                        map["ClientSecret"] = self.clientSecret!
                    }
                    if self.tokenEndpoint != nil {
                        map["TokenEndpoint"] = self.tokenEndpoint!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessToken") {
                        self.accessToken = dict["AccessToken"] as! String
                    }
                    if dict.keys.contains("AuthnMethod") {
                        self.authnMethod = dict["AuthnMethod"] as! String
                    }
                    if dict.keys.contains("ClientId") {
                        self.clientId = dict["ClientId"] as! String
                    }
                    if dict.keys.contains("ClientSecret") {
                        self.clientSecret = dict["ClientSecret"] as! String
                    }
                    if dict.keys.contains("TokenEndpoint") {
                        self.tokenEndpoint = dict["TokenEndpoint"] as! String
                    }
                }
            }
            public var authnMode: String?

            public var authnParam: SetApplicationProvisioningConfigRequest.ScimProvisioningConfig.AuthnConfiguration.AuthnParam?

            public var grantType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.authnParam?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authnMode != nil {
                    map["AuthnMode"] = self.authnMode!
                }
                if self.authnParam != nil {
                    map["AuthnParam"] = self.authnParam?.toMap()
                }
                if self.grantType != nil {
                    map["GrantType"] = self.grantType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthnMode") {
                    self.authnMode = dict["AuthnMode"] as! String
                }
                if dict.keys.contains("AuthnParam") {
                    var model = SetApplicationProvisioningConfigRequest.ScimProvisioningConfig.AuthnConfiguration.AuthnParam()
                    model.fromMap(dict["AuthnParam"] as! [String: Any])
                    self.authnParam = model
                }
                if dict.keys.contains("GrantType") {
                    self.grantType = dict["GrantType"] as! String
                }
            }
        }
        public var authnConfiguration: SetApplicationProvisioningConfigRequest.ScimProvisioningConfig.AuthnConfiguration?

        public var fullPushScopes: [String]?

        public var provisioningActions: [String]?

        public var scimBaseUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authnConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authnConfiguration != nil {
                map["AuthnConfiguration"] = self.authnConfiguration?.toMap()
            }
            if self.fullPushScopes != nil {
                map["FullPushScopes"] = self.fullPushScopes!
            }
            if self.provisioningActions != nil {
                map["ProvisioningActions"] = self.provisioningActions!
            }
            if self.scimBaseUrl != nil {
                map["ScimBaseUrl"] = self.scimBaseUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthnConfiguration") {
                var model = SetApplicationProvisioningConfigRequest.ScimProvisioningConfig.AuthnConfiguration()
                model.fromMap(dict["AuthnConfiguration"] as! [String: Any])
                self.authnConfiguration = model
            }
            if dict.keys.contains("FullPushScopes") {
                self.fullPushScopes = dict["FullPushScopes"] as! [String]
            }
            if dict.keys.contains("ProvisioningActions") {
                self.provisioningActions = dict["ProvisioningActions"] as! [String]
            }
            if dict.keys.contains("ScimBaseUrl") {
                self.scimBaseUrl = dict["ScimBaseUrl"] as! String
            }
        }
    }
    public var applicationId: String?

    public var callbackProvisioningConfig: SetApplicationProvisioningConfigRequest.CallbackProvisioningConfig?

    public var instanceId: String?

    public var provisionPassword: Bool?

    public var provisionProtocolType: String?

    public var scimProvisioningConfig: SetApplicationProvisioningConfigRequest.ScimProvisioningConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.callbackProvisioningConfig?.validate()
        try self.scimProvisioningConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.callbackProvisioningConfig != nil {
            map["CallbackProvisioningConfig"] = self.callbackProvisioningConfig?.toMap()
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.provisionPassword != nil {
            map["ProvisionPassword"] = self.provisionPassword!
        }
        if self.provisionProtocolType != nil {
            map["ProvisionProtocolType"] = self.provisionProtocolType!
        }
        if self.scimProvisioningConfig != nil {
            map["ScimProvisioningConfig"] = self.scimProvisioningConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("CallbackProvisioningConfig") {
            var model = SetApplicationProvisioningConfigRequest.CallbackProvisioningConfig()
            model.fromMap(dict["CallbackProvisioningConfig"] as! [String: Any])
            self.callbackProvisioningConfig = model
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ProvisionPassword") {
            self.provisionPassword = dict["ProvisionPassword"] as! Bool
        }
        if dict.keys.contains("ProvisionProtocolType") {
            self.provisionProtocolType = dict["ProvisionProtocolType"] as! String
        }
        if dict.keys.contains("ScimProvisioningConfig") {
            var model = SetApplicationProvisioningConfigRequest.ScimProvisioningConfig()
            model.fromMap(dict["ScimProvisioningConfig"] as! [String: Any])
            self.scimProvisioningConfig = model
        }
    }
}

public class SetApplicationProvisioningConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetApplicationProvisioningConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetApplicationProvisioningConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetApplicationProvisioningConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetApplicationProvisioningScopeRequest : Tea.TeaModel {
    public var applicationId: String?

    public var groupIds: [String]?

    public var instanceId: String?

    public var organizationalUnitIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.groupIds != nil {
            map["GroupIds"] = self.groupIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.organizationalUnitIds != nil {
            map["OrganizationalUnitIds"] = self.organizationalUnitIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("GroupIds") {
            self.groupIds = dict["GroupIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitIds") {
            self.organizationalUnitIds = dict["OrganizationalUnitIds"] as! [String]
        }
    }
}

public class SetApplicationProvisioningScopeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetApplicationProvisioningScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetApplicationProvisioningScopeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetApplicationProvisioningScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetApplicationSsoConfigRequest : Tea.TeaModel {
    public class OidcSsoConfig : Tea.TeaModel {
        public class CustomClaims : Tea.TeaModel {
            public var claimName: String?

            public var claimValueExpression: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.claimName != nil {
                    map["ClaimName"] = self.claimName!
                }
                if self.claimValueExpression != nil {
                    map["ClaimValueExpression"] = self.claimValueExpression!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClaimName") {
                    self.claimName = dict["ClaimName"] as! String
                }
                if dict.keys.contains("ClaimValueExpression") {
                    self.claimValueExpression = dict["ClaimValueExpression"] as! String
                }
            }
        }
        public var accessTokenEffectiveTime: Int64?

        public var codeEffectiveTime: Int64?

        public var customClaims: [SetApplicationSsoConfigRequest.OidcSsoConfig.CustomClaims]?

        public var grantScopes: [String]?

        public var grantTypes: [String]?

        public var idTokenEffectiveTime: Int64?

        public var passwordAuthenticationSourceId: String?

        public var passwordTotpMfaRequired: Bool?

        public var pkceChallengeMethods: [String]?

        public var pkceRequired: Bool?

        public var postLogoutRedirectUris: [String]?

        public var redirectUris: [String]?

        public var refreshTokenEffective: Int64?

        public var responseTypes: [String]?

        public var subjectIdExpression: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenEffectiveTime != nil {
                map["AccessTokenEffectiveTime"] = self.accessTokenEffectiveTime!
            }
            if self.codeEffectiveTime != nil {
                map["CodeEffectiveTime"] = self.codeEffectiveTime!
            }
            if self.customClaims != nil {
                var tmp : [Any] = []
                for k in self.customClaims! {
                    tmp.append(k.toMap())
                }
                map["CustomClaims"] = tmp
            }
            if self.grantScopes != nil {
                map["GrantScopes"] = self.grantScopes!
            }
            if self.grantTypes != nil {
                map["GrantTypes"] = self.grantTypes!
            }
            if self.idTokenEffectiveTime != nil {
                map["IdTokenEffectiveTime"] = self.idTokenEffectiveTime!
            }
            if self.passwordAuthenticationSourceId != nil {
                map["PasswordAuthenticationSourceId"] = self.passwordAuthenticationSourceId!
            }
            if self.passwordTotpMfaRequired != nil {
                map["PasswordTotpMfaRequired"] = self.passwordTotpMfaRequired!
            }
            if self.pkceChallengeMethods != nil {
                map["PkceChallengeMethods"] = self.pkceChallengeMethods!
            }
            if self.pkceRequired != nil {
                map["PkceRequired"] = self.pkceRequired!
            }
            if self.postLogoutRedirectUris != nil {
                map["PostLogoutRedirectUris"] = self.postLogoutRedirectUris!
            }
            if self.redirectUris != nil {
                map["RedirectUris"] = self.redirectUris!
            }
            if self.refreshTokenEffective != nil {
                map["RefreshTokenEffective"] = self.refreshTokenEffective!
            }
            if self.responseTypes != nil {
                map["ResponseTypes"] = self.responseTypes!
            }
            if self.subjectIdExpression != nil {
                map["SubjectIdExpression"] = self.subjectIdExpression!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessTokenEffectiveTime") {
                self.accessTokenEffectiveTime = dict["AccessTokenEffectiveTime"] as! Int64
            }
            if dict.keys.contains("CodeEffectiveTime") {
                self.codeEffectiveTime = dict["CodeEffectiveTime"] as! Int64
            }
            if dict.keys.contains("CustomClaims") {
                var tmp : [SetApplicationSsoConfigRequest.OidcSsoConfig.CustomClaims] = []
                for v in dict["CustomClaims"] as! [Any] {
                    var model = SetApplicationSsoConfigRequest.OidcSsoConfig.CustomClaims()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customClaims = tmp
            }
            if dict.keys.contains("GrantScopes") {
                self.grantScopes = dict["GrantScopes"] as! [String]
            }
            if dict.keys.contains("GrantTypes") {
                self.grantTypes = dict["GrantTypes"] as! [String]
            }
            if dict.keys.contains("IdTokenEffectiveTime") {
                self.idTokenEffectiveTime = dict["IdTokenEffectiveTime"] as! Int64
            }
            if dict.keys.contains("PasswordAuthenticationSourceId") {
                self.passwordAuthenticationSourceId = dict["PasswordAuthenticationSourceId"] as! String
            }
            if dict.keys.contains("PasswordTotpMfaRequired") {
                self.passwordTotpMfaRequired = dict["PasswordTotpMfaRequired"] as! Bool
            }
            if dict.keys.contains("PkceChallengeMethods") {
                self.pkceChallengeMethods = dict["PkceChallengeMethods"] as! [String]
            }
            if dict.keys.contains("PkceRequired") {
                self.pkceRequired = dict["PkceRequired"] as! Bool
            }
            if dict.keys.contains("PostLogoutRedirectUris") {
                self.postLogoutRedirectUris = dict["PostLogoutRedirectUris"] as! [String]
            }
            if dict.keys.contains("RedirectUris") {
                self.redirectUris = dict["RedirectUris"] as! [String]
            }
            if dict.keys.contains("RefreshTokenEffective") {
                self.refreshTokenEffective = dict["RefreshTokenEffective"] as! Int64
            }
            if dict.keys.contains("ResponseTypes") {
                self.responseTypes = dict["ResponseTypes"] as! [String]
            }
            if dict.keys.contains("SubjectIdExpression") {
                self.subjectIdExpression = dict["SubjectIdExpression"] as! String
            }
        }
    }
    public class SamlSsoConfig : Tea.TeaModel {
        public class AttributeStatements : Tea.TeaModel {
            public var attributeName: String?

            public var attributeValueExpression: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attributeName != nil {
                    map["AttributeName"] = self.attributeName!
                }
                if self.attributeValueExpression != nil {
                    map["AttributeValueExpression"] = self.attributeValueExpression!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttributeName") {
                    self.attributeName = dict["AttributeName"] as! String
                }
                if dict.keys.contains("AttributeValueExpression") {
                    self.attributeValueExpression = dict["AttributeValueExpression"] as! String
                }
            }
        }
        public var assertionSigned: Bool?

        public var attributeStatements: [SetApplicationSsoConfigRequest.SamlSsoConfig.AttributeStatements]?

        public var defaultRelayState: String?

        public var idPEntityId: String?

        public var nameIdFormat: String?

        public var nameIdValueExpression: String?

        public var responseSigned: Bool?

        public var signatureAlgorithm: String?

        public var spEntityId: String?

        public var spSsoAcsUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assertionSigned != nil {
                map["AssertionSigned"] = self.assertionSigned!
            }
            if self.attributeStatements != nil {
                var tmp : [Any] = []
                for k in self.attributeStatements! {
                    tmp.append(k.toMap())
                }
                map["AttributeStatements"] = tmp
            }
            if self.defaultRelayState != nil {
                map["DefaultRelayState"] = self.defaultRelayState!
            }
            if self.idPEntityId != nil {
                map["IdPEntityId"] = self.idPEntityId!
            }
            if self.nameIdFormat != nil {
                map["NameIdFormat"] = self.nameIdFormat!
            }
            if self.nameIdValueExpression != nil {
                map["NameIdValueExpression"] = self.nameIdValueExpression!
            }
            if self.responseSigned != nil {
                map["ResponseSigned"] = self.responseSigned!
            }
            if self.signatureAlgorithm != nil {
                map["SignatureAlgorithm"] = self.signatureAlgorithm!
            }
            if self.spEntityId != nil {
                map["SpEntityId"] = self.spEntityId!
            }
            if self.spSsoAcsUrl != nil {
                map["SpSsoAcsUrl"] = self.spSsoAcsUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssertionSigned") {
                self.assertionSigned = dict["AssertionSigned"] as! Bool
            }
            if dict.keys.contains("AttributeStatements") {
                var tmp : [SetApplicationSsoConfigRequest.SamlSsoConfig.AttributeStatements] = []
                for v in dict["AttributeStatements"] as! [Any] {
                    var model = SetApplicationSsoConfigRequest.SamlSsoConfig.AttributeStatements()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.attributeStatements = tmp
            }
            if dict.keys.contains("DefaultRelayState") {
                self.defaultRelayState = dict["DefaultRelayState"] as! String
            }
            if dict.keys.contains("IdPEntityId") {
                self.idPEntityId = dict["IdPEntityId"] as! String
            }
            if dict.keys.contains("NameIdFormat") {
                self.nameIdFormat = dict["NameIdFormat"] as! String
            }
            if dict.keys.contains("NameIdValueExpression") {
                self.nameIdValueExpression = dict["NameIdValueExpression"] as! String
            }
            if dict.keys.contains("ResponseSigned") {
                self.responseSigned = dict["ResponseSigned"] as! Bool
            }
            if dict.keys.contains("SignatureAlgorithm") {
                self.signatureAlgorithm = dict["SignatureAlgorithm"] as! String
            }
            if dict.keys.contains("SpEntityId") {
                self.spEntityId = dict["SpEntityId"] as! String
            }
            if dict.keys.contains("SpSsoAcsUrl") {
                self.spSsoAcsUrl = dict["SpSsoAcsUrl"] as! String
            }
        }
    }
    public var applicationId: String?

    public var initLoginType: String?

    public var initLoginUrl: String?

    public var instanceId: String?

    public var oidcSsoConfig: SetApplicationSsoConfigRequest.OidcSsoConfig?

    public var samlSsoConfig: SetApplicationSsoConfigRequest.SamlSsoConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.oidcSsoConfig?.validate()
        try self.samlSsoConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.initLoginType != nil {
            map["InitLoginType"] = self.initLoginType!
        }
        if self.initLoginUrl != nil {
            map["InitLoginUrl"] = self.initLoginUrl!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.oidcSsoConfig != nil {
            map["OidcSsoConfig"] = self.oidcSsoConfig?.toMap()
        }
        if self.samlSsoConfig != nil {
            map["SamlSsoConfig"] = self.samlSsoConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("InitLoginType") {
            self.initLoginType = dict["InitLoginType"] as! String
        }
        if dict.keys.contains("InitLoginUrl") {
            self.initLoginUrl = dict["InitLoginUrl"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OidcSsoConfig") {
            var model = SetApplicationSsoConfigRequest.OidcSsoConfig()
            model.fromMap(dict["OidcSsoConfig"] as! [String: Any])
            self.oidcSsoConfig = model
        }
        if dict.keys.contains("SamlSsoConfig") {
            var model = SetApplicationSsoConfigRequest.SamlSsoConfig()
            model.fromMap(dict["SamlSsoConfig"] as! [String: Any])
            self.samlSsoConfig = model
        }
    }
}

public class SetApplicationSsoConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetApplicationSsoConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetApplicationSsoConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetApplicationSsoConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDefaultDomainRequest : Tea.TeaModel {
    public var domainId: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class SetDefaultDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetDefaultDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDefaultDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetDefaultDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetForgetPasswordConfigurationRequest : Tea.TeaModel {
    public var authenticationChannels: [String]?

    public var forgetPasswordStatus: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticationChannels != nil {
            map["AuthenticationChannels"] = self.authenticationChannels!
        }
        if self.forgetPasswordStatus != nil {
            map["ForgetPasswordStatus"] = self.forgetPasswordStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationChannels") {
            self.authenticationChannels = dict["AuthenticationChannels"] as! [String]
        }
        if dict.keys.contains("ForgetPasswordStatus") {
            self.forgetPasswordStatus = dict["ForgetPasswordStatus"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class SetForgetPasswordConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetForgetPasswordConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetForgetPasswordConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetForgetPasswordConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPasswordComplexityConfigurationRequest : Tea.TeaModel {
    public class PasswordComplexityRules : Tea.TeaModel {
        public var passwordCheckType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.passwordCheckType != nil {
                map["PasswordCheckType"] = self.passwordCheckType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PasswordCheckType") {
                self.passwordCheckType = dict["PasswordCheckType"] as! String
            }
        }
    }
    public var instanceId: String?

    public var passwordComplexityRules: [SetPasswordComplexityConfigurationRequest.PasswordComplexityRules]?

    public var passwordMinLength: Int32?

    public override init() {
        super.init()
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
        if self.passwordComplexityRules != nil {
            var tmp : [Any] = []
            for k in self.passwordComplexityRules! {
                tmp.append(k.toMap())
            }
            map["PasswordComplexityRules"] = tmp
        }
        if self.passwordMinLength != nil {
            map["PasswordMinLength"] = self.passwordMinLength!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PasswordComplexityRules") {
            var tmp : [SetPasswordComplexityConfigurationRequest.PasswordComplexityRules] = []
            for v in dict["PasswordComplexityRules"] as! [Any] {
                var model = SetPasswordComplexityConfigurationRequest.PasswordComplexityRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.passwordComplexityRules = tmp
        }
        if dict.keys.contains("PasswordMinLength") {
            self.passwordMinLength = dict["PasswordMinLength"] as! Int32
        }
    }
}

public class SetPasswordComplexityConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPasswordComplexityConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPasswordComplexityConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPasswordComplexityConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPasswordExpirationConfigurationRequest : Tea.TeaModel {
    public var instanceId: String?

    public var passwordExpirationAction: String?

    public var passwordExpirationNotificationChannels: [String]?

    public var passwordExpirationNotificationDuration: Int32?

    public var passwordExpirationNotificationStatus: String?

    public var passwordExpirationStatus: String?

    public var passwordForcedUpdateDuration: Int32?

    public var passwordValidMaxDay: Int32?

    public override init() {
        super.init()
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
        if self.passwordExpirationAction != nil {
            map["PasswordExpirationAction"] = self.passwordExpirationAction!
        }
        if self.passwordExpirationNotificationChannels != nil {
            map["PasswordExpirationNotificationChannels"] = self.passwordExpirationNotificationChannels!
        }
        if self.passwordExpirationNotificationDuration != nil {
            map["PasswordExpirationNotificationDuration"] = self.passwordExpirationNotificationDuration!
        }
        if self.passwordExpirationNotificationStatus != nil {
            map["PasswordExpirationNotificationStatus"] = self.passwordExpirationNotificationStatus!
        }
        if self.passwordExpirationStatus != nil {
            map["PasswordExpirationStatus"] = self.passwordExpirationStatus!
        }
        if self.passwordForcedUpdateDuration != nil {
            map["PasswordForcedUpdateDuration"] = self.passwordForcedUpdateDuration!
        }
        if self.passwordValidMaxDay != nil {
            map["PasswordValidMaxDay"] = self.passwordValidMaxDay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PasswordExpirationAction") {
            self.passwordExpirationAction = dict["PasswordExpirationAction"] as! String
        }
        if dict.keys.contains("PasswordExpirationNotificationChannels") {
            self.passwordExpirationNotificationChannels = dict["PasswordExpirationNotificationChannels"] as! [String]
        }
        if dict.keys.contains("PasswordExpirationNotificationDuration") {
            self.passwordExpirationNotificationDuration = dict["PasswordExpirationNotificationDuration"] as! Int32
        }
        if dict.keys.contains("PasswordExpirationNotificationStatus") {
            self.passwordExpirationNotificationStatus = dict["PasswordExpirationNotificationStatus"] as! String
        }
        if dict.keys.contains("PasswordExpirationStatus") {
            self.passwordExpirationStatus = dict["PasswordExpirationStatus"] as! String
        }
        if dict.keys.contains("PasswordForcedUpdateDuration") {
            self.passwordForcedUpdateDuration = dict["PasswordForcedUpdateDuration"] as! Int32
        }
        if dict.keys.contains("PasswordValidMaxDay") {
            self.passwordValidMaxDay = dict["PasswordValidMaxDay"] as! Int32
        }
    }
}

public class SetPasswordExpirationConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPasswordExpirationConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPasswordExpirationConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPasswordExpirationConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPasswordHistoryConfigurationRequest : Tea.TeaModel {
    public var instanceId: String?

    public var passwordHistoryMaxRetention: Int32?

    public var passwordHistoryStatus: String?

    public override init() {
        super.init()
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
        if self.passwordHistoryMaxRetention != nil {
            map["PasswordHistoryMaxRetention"] = self.passwordHistoryMaxRetention!
        }
        if self.passwordHistoryStatus != nil {
            map["PasswordHistoryStatus"] = self.passwordHistoryStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PasswordHistoryMaxRetention") {
            self.passwordHistoryMaxRetention = dict["PasswordHistoryMaxRetention"] as! Int32
        }
        if dict.keys.contains("PasswordHistoryStatus") {
            self.passwordHistoryStatus = dict["PasswordHistoryStatus"] as! String
        }
    }
}

public class SetPasswordHistoryConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPasswordHistoryConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPasswordHistoryConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPasswordHistoryConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPasswordInitializationConfigurationRequest : Tea.TeaModel {
    public var instanceId: String?

    public var passwordForcedUpdateStatus: String?

    public var passwordInitializationNotificationChannels: [String]?

    public var passwordInitializationStatus: String?

    public var passwordInitializationType: String?

    public override init() {
        super.init()
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
        if self.passwordForcedUpdateStatus != nil {
            map["PasswordForcedUpdateStatus"] = self.passwordForcedUpdateStatus!
        }
        if self.passwordInitializationNotificationChannels != nil {
            map["PasswordInitializationNotificationChannels"] = self.passwordInitializationNotificationChannels!
        }
        if self.passwordInitializationStatus != nil {
            map["PasswordInitializationStatus"] = self.passwordInitializationStatus!
        }
        if self.passwordInitializationType != nil {
            map["PasswordInitializationType"] = self.passwordInitializationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PasswordForcedUpdateStatus") {
            self.passwordForcedUpdateStatus = dict["PasswordForcedUpdateStatus"] as! String
        }
        if dict.keys.contains("PasswordInitializationNotificationChannels") {
            self.passwordInitializationNotificationChannels = dict["PasswordInitializationNotificationChannels"] as! [String]
        }
        if dict.keys.contains("PasswordInitializationStatus") {
            self.passwordInitializationStatus = dict["PasswordInitializationStatus"] as! String
        }
        if dict.keys.contains("PasswordInitializationType") {
            self.passwordInitializationType = dict["PasswordInitializationType"] as! String
        }
    }
}

public class SetPasswordInitializationConfigurationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetPasswordInitializationConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPasswordInitializationConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetPasswordInitializationConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetUserPrimaryOrganizationalUnitRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitId: String?

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
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class SetUserPrimaryOrganizationalUnitResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class SetUserPrimaryOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetUserPrimaryOrganizationalUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetUserPrimaryOrganizationalUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnlockUserRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UnlockUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UnlockUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UnlockUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationAuthorizationTypeRequest : Tea.TeaModel {
    public var applicationId: String?

    public var authorizationType: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.authorizationType != nil {
            map["AuthorizationType"] = self.authorizationType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("AuthorizationType") {
            self.authorizationType = dict["AuthorizationType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class UpdateApplicationAuthorizationTypeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateApplicationAuthorizationTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationAuthorizationTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateApplicationAuthorizationTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationDescriptionRequest : Tea.TeaModel {
    public var applicationId: String?

    public var description_: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class UpdateApplicationDescriptionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateApplicationDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateApplicationDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupRequest : Tea.TeaModel {
    public var groupExternalId: String?

    public var groupId: String?

    public var groupName: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupExternalId != nil {
            map["GroupExternalId"] = self.groupExternalId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupExternalId") {
            self.groupExternalId = dict["GroupExternalId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class UpdateGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupDescriptionRequest : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class UpdateGroupDescriptionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateGroupDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateGroupDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceDescriptionRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class UpdateInstanceDescriptionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateInstanceDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateInstanceDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNetworkAccessEndpointNameRequest : Tea.TeaModel {
    public var instanceId: String?

    public var networkAccessEndpointId: String?

    public var networkAccessEndpointName: String?

    public override init() {
        super.init()
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
        if self.networkAccessEndpointId != nil {
            map["NetworkAccessEndpointId"] = self.networkAccessEndpointId!
        }
        if self.networkAccessEndpointName != nil {
            map["NetworkAccessEndpointName"] = self.networkAccessEndpointName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NetworkAccessEndpointId") {
            self.networkAccessEndpointId = dict["NetworkAccessEndpointId"] as! String
        }
        if dict.keys.contains("NetworkAccessEndpointName") {
            self.networkAccessEndpointName = dict["NetworkAccessEndpointName"] as! String
        }
    }
}

public class UpdateNetworkAccessEndpointNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateNetworkAccessEndpointNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNetworkAccessEndpointNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateNetworkAccessEndpointNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOrganizationalUnitRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitId: String?

    public var organizationalUnitName: String?

    public override init() {
        super.init()
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
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        if self.organizationalUnitName != nil {
            map["OrganizationalUnitName"] = self.organizationalUnitName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitName") {
            self.organizationalUnitName = dict["OrganizationalUnitName"] as! String
        }
    }
}

public class UpdateOrganizationalUnitResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOrganizationalUnitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateOrganizationalUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOrganizationalUnitDescriptionRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var organizationalUnitId: String?

    public override init() {
        super.init()
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
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
    }
}

public class UpdateOrganizationalUnitDescriptionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateOrganizationalUnitDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOrganizationalUnitDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateOrganizationalUnitDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOrganizationalUnitParentIdRequest : Tea.TeaModel {
    public var instanceId: String?

    public var organizationalUnitId: String?

    public var parentId: String?

    public override init() {
        super.init()
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
        if self.organizationalUnitId != nil {
            map["OrganizationalUnitId"] = self.organizationalUnitId!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrganizationalUnitId") {
            self.organizationalUnitId = dict["OrganizationalUnitId"] as! String
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
    }
}

public class UpdateOrganizationalUnitParentIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateOrganizationalUnitParentIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOrganizationalUnitParentIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateOrganizationalUnitParentIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public class CustomFields : Tea.TeaModel {
        public var fieldName: String?

        public var fieldValue: String?

        public var operation: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldName != nil {
                map["FieldName"] = self.fieldName!
            }
            if self.fieldValue != nil {
                map["FieldValue"] = self.fieldValue!
            }
            if self.operation != nil {
                map["Operation"] = self.operation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FieldName") {
                self.fieldName = dict["FieldName"] as! String
            }
            if dict.keys.contains("FieldValue") {
                self.fieldValue = dict["FieldValue"] as! String
            }
            if dict.keys.contains("Operation") {
                self.operation = dict["Operation"] as! String
            }
        }
    }
    public var customFields: [UpdateUserRequest.CustomFields]?

    public var displayName: String?

    public var email: String?

    public var emailVerified: Bool?

    public var instanceId: String?

    public var phoneNumber: String?

    public var phoneNumberVerified: Bool?

    public var phoneRegion: String?

    public var userId: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customFields != nil {
            var tmp : [Any] = []
            for k in self.customFields! {
                tmp.append(k.toMap())
            }
            map["CustomFields"] = tmp
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.emailVerified != nil {
            map["EmailVerified"] = self.emailVerified!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.phoneNumberVerified != nil {
            map["PhoneNumberVerified"] = self.phoneNumberVerified!
        }
        if self.phoneRegion != nil {
            map["PhoneRegion"] = self.phoneRegion!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomFields") {
            var tmp : [UpdateUserRequest.CustomFields] = []
            for v in dict["CustomFields"] as! [Any] {
                var model = UpdateUserRequest.CustomFields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customFields = tmp
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EmailVerified") {
            self.emailVerified = dict["EmailVerified"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("PhoneNumberVerified") {
            self.phoneNumberVerified = dict["PhoneNumberVerified"] as! Bool
        }
        if dict.keys.contains("PhoneRegion") {
            self.phoneRegion = dict["PhoneRegion"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserDescriptionRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UpdateUserDescriptionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateUserDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserPasswordRequest : Tea.TeaModel {
    public var instanceId: String?

    public var password: String?

    public var passwordForcedUpdateStatus: String?

    public var userId: String?

    public var userNotificationChannels: [String]?

    public override init() {
        super.init()
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
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordForcedUpdateStatus != nil {
            map["PasswordForcedUpdateStatus"] = self.passwordForcedUpdateStatus!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userNotificationChannels != nil {
            map["UserNotificationChannels"] = self.userNotificationChannels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PasswordForcedUpdateStatus") {
            self.passwordForcedUpdateStatus = dict["PasswordForcedUpdateStatus"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserNotificationChannels") {
            self.userNotificationChannels = dict["UserNotificationChannels"] as! [String]
        }
    }
}

public class UpdateUserPasswordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
