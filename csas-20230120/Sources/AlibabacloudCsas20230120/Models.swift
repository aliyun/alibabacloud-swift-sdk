import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AttachApplication2ConnectorRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var connectorId: String?

    public override init() {
        super.init()
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
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ConnectorId") && dict["ConnectorId"] != nil {
            self.connectorId = dict["ConnectorId"] as! String
        }
    }
}

public class AttachApplication2ConnectorShrinkRequest : Tea.TeaModel {
    public var applicationIdsShrink: String?

    public var connectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIdsShrink != nil {
            map["ApplicationIds"] = self.applicationIdsShrink!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIdsShrink = dict["ApplicationIds"] as! String
        }
        if dict.keys.contains("ConnectorId") && dict["ConnectorId"] != nil {
            self.connectorId = dict["ConnectorId"] as! String
        }
    }
}

public class AttachApplication2ConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AttachApplication2ConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachApplication2ConnectorResponseBody?

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
            var model = AttachApplication2ConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDynamicRouteRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var applicationType: String?

    public var description_: String?

    public var dynamicRouteType: String?

    public var name: String?

    public var nextHop: String?

    public var priority: Int32?

    public var regionIds: [String]?

    public var status: String?

    public var tagIds: [String]?

    public override init() {
        super.init()
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
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dynamicRouteType != nil {
            map["DynamicRouteType"] = self.dynamicRouteType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextHop != nil {
            map["NextHop"] = self.nextHop!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DynamicRouteType") && dict["DynamicRouteType"] != nil {
            self.dynamicRouteType = dict["DynamicRouteType"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextHop") && dict["NextHop"] != nil {
            self.nextHop = dict["NextHop"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionIds") && dict["RegionIds"] != nil {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class CreateDynamicRouteResponseBody : Tea.TeaModel {
    public var dynamicRouteId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRouteId != nil {
            map["DynamicRouteId"] = self.dynamicRouteId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteId") && dict["DynamicRouteId"] != nil {
            self.dynamicRouteId = dict["DynamicRouteId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDynamicRouteResponseBody?

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
            var model = CreateDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePrivateAccessApplicationRequest : Tea.TeaModel {
    public class PortRanges : Tea.TeaModel {
        public var begin: Int32?

        public var end: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.begin != nil {
                map["Begin"] = self.begin!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Begin") && dict["Begin"] != nil {
                self.begin = dict["Begin"] as! Int32
            }
            if dict.keys.contains("End") && dict["End"] != nil {
                self.end = dict["End"] as! Int32
            }
        }
    }
    public var addresses: [String]?

    public var description_: String?

    public var name: String?

    public var portRanges: [CreatePrivateAccessApplicationRequest.PortRanges]?

    public var protocol_: String?

    public var status: String?

    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            map["Addresses"] = self.addresses!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.portRanges != nil {
            var tmp : [Any] = []
            for k in self.portRanges! {
                tmp.append(k.toMap())
            }
            map["PortRanges"] = tmp
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addresses") && dict["Addresses"] != nil {
            self.addresses = dict["Addresses"] as! [String]
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PortRanges") && dict["PortRanges"] != nil {
            var tmp : [CreatePrivateAccessApplicationRequest.PortRanges] = []
            for v in dict["PortRanges"] as! [Any] {
                var model = CreatePrivateAccessApplicationRequest.PortRanges()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.portRanges = tmp
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class CreatePrivateAccessApplicationResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrivateAccessApplicationResponseBody?

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
            var model = CreatePrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePrivateAccessPolicyRequest : Tea.TeaModel {
    public class CustomUserAttributes : Tea.TeaModel {
        public var idpId: Int32?

        public var relation: String?

        public var userGroupType: String?

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
            if self.idpId != nil {
                map["IdpId"] = self.idpId!
            }
            if self.relation != nil {
                map["Relation"] = self.relation!
            }
            if self.userGroupType != nil {
                map["UserGroupType"] = self.userGroupType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                self.idpId = dict["IdpId"] as! Int32
            }
            if dict.keys.contains("Relation") && dict["Relation"] != nil {
                self.relation = dict["Relation"] as! String
            }
            if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                self.userGroupType = dict["UserGroupType"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var applicationIds: [String]?

    public var applicationType: String?

    public var customUserAttributes: [CreatePrivateAccessPolicyRequest.CustomUserAttributes]?

    public var description_: String?

    public var name: String?

    public var policyAction: String?

    public var priority: Int32?

    public var status: String?

    public var tagIds: [String]?

    public var userGroupIds: [String]?

    public var userGroupMode: String?

    public override init() {
        super.init()
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
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.customUserAttributes != nil {
            var tmp : [Any] = []
            for k in self.customUserAttributes! {
                tmp.append(k.toMap())
            }
            map["CustomUserAttributes"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyAction != nil {
            map["PolicyAction"] = self.policyAction!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userGroupMode != nil {
            map["UserGroupMode"] = self.userGroupMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("CustomUserAttributes") && dict["CustomUserAttributes"] != nil {
            var tmp : [CreatePrivateAccessPolicyRequest.CustomUserAttributes] = []
            for v in dict["CustomUserAttributes"] as! [Any] {
                var model = CreatePrivateAccessPolicyRequest.CustomUserAttributes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customUserAttributes = tmp
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PolicyAction") && dict["PolicyAction"] != nil {
            self.policyAction = dict["PolicyAction"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
            self.tagIds = dict["TagIds"] as! [String]
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("UserGroupMode") && dict["UserGroupMode"] != nil {
            self.userGroupMode = dict["UserGroupMode"] as! String
        }
    }
}

public class CreatePrivateAccessPolicyResponseBody : Tea.TeaModel {
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

public class CreatePrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrivateAccessPolicyResponseBody?

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
            var model = CreatePrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePrivateAccessTagRequest : Tea.TeaModel {
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
    }
}

public class CreatePrivateAccessTagResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tagId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! String
        }
    }
}

public class CreatePrivateAccessTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrivateAccessTagResponseBody?

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
            var model = CreatePrivateAccessTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserGroupRequest : Tea.TeaModel {
    public class Attributes : Tea.TeaModel {
        public var idpId: Int32?

        public var relation: String?

        public var userGroupType: String?

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
            if self.idpId != nil {
                map["IdpId"] = self.idpId!
            }
            if self.relation != nil {
                map["Relation"] = self.relation!
            }
            if self.userGroupType != nil {
                map["UserGroupType"] = self.userGroupType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                self.idpId = dict["IdpId"] as! Int32
            }
            if dict.keys.contains("Relation") && dict["Relation"] != nil {
                self.relation = dict["Relation"] as! String
            }
            if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                self.userGroupType = dict["UserGroupType"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var attributes: [CreateUserGroupRequest.Attributes]?

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
        if self.attributes != nil {
            var tmp : [Any] = []
            for k in self.attributes! {
                tmp.append(k.toMap())
            }
            map["Attributes"] = tmp
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
        if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
            var tmp : [CreateUserGroupRequest.Attributes] = []
            for v in dict["Attributes"] as! [Any] {
                var model = CreateUserGroupRequest.Attributes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.attributes = tmp
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
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
            var model = CreateUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDynamicRouteRequest : Tea.TeaModel {
    public var dynamicRouteId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRouteId != nil {
            map["DynamicRouteId"] = self.dynamicRouteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteId") && dict["DynamicRouteId"] != nil {
            self.dynamicRouteId = dict["DynamicRouteId"] as! String
        }
    }
}

public class DeleteDynamicRouteResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDynamicRouteResponseBody?

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
            var model = DeleteDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePrivateAccessApplicationRequest : Tea.TeaModel {
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
        if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
            self.applicationId = dict["ApplicationId"] as! String
        }
    }
}

public class DeletePrivateAccessApplicationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeletePrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrivateAccessApplicationResponseBody?

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
            var model = DeletePrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class DeletePrivateAccessPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeletePrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrivateAccessPolicyResponseBody?

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
            var model = DeletePrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePrivateAccessTagRequest : Tea.TeaModel {
    public var tagId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! String
        }
    }
}

public class DeletePrivateAccessTagResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeletePrivateAccessTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrivateAccessTagResponseBody?

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
            var model = DeletePrivateAccessTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserGroupRequest : Tea.TeaModel {
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
            var model = DeleteUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachApplication2ConnectorRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var connectorId: String?

    public override init() {
        super.init()
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
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ConnectorId") && dict["ConnectorId"] != nil {
            self.connectorId = dict["ConnectorId"] as! String
        }
    }
}

public class DetachApplication2ConnectorShrinkRequest : Tea.TeaModel {
    public var applicationIdsShrink: String?

    public var connectorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationIdsShrink != nil {
            map["ApplicationIds"] = self.applicationIdsShrink!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIdsShrink = dict["ApplicationIds"] as! String
        }
        if dict.keys.contains("ConnectorId") && dict["ConnectorId"] != nil {
            self.connectorId = dict["ConnectorId"] as! String
        }
    }
}

public class DetachApplication2ConnectorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DetachApplication2ConnectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachApplication2ConnectorResponseBody?

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
            var model = DetachApplication2ConnectorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDynamicRouteRequest : Tea.TeaModel {
    public var dynamicRouteId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRouteId != nil {
            map["DynamicRouteId"] = self.dynamicRouteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteId") && dict["DynamicRouteId"] != nil {
            self.dynamicRouteId = dict["DynamicRouteId"] as! String
        }
    }
}

public class GetDynamicRouteResponseBody : Tea.TeaModel {
    public class DynamicRoute : Tea.TeaModel {
        public var applicationIds: [String]?

        public var applicationType: String?

        public var createTime: String?

        public var description_: String?

        public var dynamicRouteId: String?

        public var dynamicRouteType: String?

        public var name: String?

        public var nextHop: String?

        public var priority: Int32?

        public var regionIds: [String]?

        public var status: String?

        public var tagIds: [String]?

        public override init() {
            super.init()
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
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dynamicRouteId != nil {
                map["DynamicRouteId"] = self.dynamicRouteId!
            }
            if self.dynamicRouteType != nil {
                map["DynamicRouteType"] = self.dynamicRouteType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nextHop != nil {
                map["NextHop"] = self.nextHop!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.regionIds != nil {
                map["RegionIds"] = self.regionIds!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DynamicRouteId") && dict["DynamicRouteId"] != nil {
                self.dynamicRouteId = dict["DynamicRouteId"] as! String
            }
            if dict.keys.contains("DynamicRouteType") && dict["DynamicRouteType"] != nil {
                self.dynamicRouteType = dict["DynamicRouteType"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NextHop") && dict["NextHop"] != nil {
                self.nextHop = dict["NextHop"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RegionIds") && dict["RegionIds"] != nil {
                self.regionIds = dict["RegionIds"] as! [String]
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
                self.tagIds = dict["TagIds"] as! [String]
            }
        }
    }
    public var dynamicRoute: GetDynamicRouteResponseBody.DynamicRoute?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dynamicRoute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRoute != nil {
            map["DynamicRoute"] = self.dynamicRoute?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRoute") && dict["DynamicRoute"] != nil {
            var model = GetDynamicRouteResponseBody.DynamicRoute()
            model.fromMap(dict["DynamicRoute"] as! [String: Any])
            self.dynamicRoute = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDynamicRouteResponseBody?

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
            var model = GetDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPrivateAccessApplicationRequest : Tea.TeaModel {
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
        if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
            self.applicationId = dict["ApplicationId"] as! String
        }
    }
}

public class GetPrivateAccessApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class PortRanges : Tea.TeaModel {
            public var begin: Int32?

            public var end: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.begin != nil {
                    map["Begin"] = self.begin!
                }
                if self.end != nil {
                    map["End"] = self.end!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Begin") && dict["Begin"] != nil {
                    self.begin = dict["Begin"] as! Int32
                }
                if dict.keys.contains("End") && dict["End"] != nil {
                    self.end = dict["End"] as! Int32
                }
            }
        }
        public var addresses: [String]?

        public var applicationId: String?

        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var policyIds: [String]?

        public var portRanges: [GetPrivateAccessApplicationResponseBody.Application.PortRanges]?

        public var protocol_: String?

        public var status: String?

        public var tagIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["Addresses"] = self.addresses!
            }
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyIds != nil {
                map["PolicyIds"] = self.policyIds!
            }
            if self.portRanges != nil {
                var tmp : [Any] = []
                for k in self.portRanges! {
                    tmp.append(k.toMap())
                }
                map["PortRanges"] = tmp
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Addresses") && dict["Addresses"] != nil {
                self.addresses = dict["Addresses"] as! [String]
            }
            if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyIds") && dict["PolicyIds"] != nil {
                self.policyIds = dict["PolicyIds"] as! [String]
            }
            if dict.keys.contains("PortRanges") && dict["PortRanges"] != nil {
                var tmp : [GetPrivateAccessApplicationResponseBody.Application.PortRanges] = []
                for v in dict["PortRanges"] as! [Any] {
                    var model = GetPrivateAccessApplicationResponseBody.Application.PortRanges()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.portRanges = tmp
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
                self.tagIds = dict["TagIds"] as! [String]
            }
        }
    }
    public var application: GetPrivateAccessApplicationResponseBody.Application?

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
        if dict.keys.contains("Application") && dict["Application"] != nil {
            var model = GetPrivateAccessApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPrivateAccessApplicationResponseBody?

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
            var model = GetPrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
    }
}

public class GetPrivateAccessPolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class CustomUserAttributes : Tea.TeaModel {
            public var idpId: Int32?

            public var relation: String?

            public var userGroupType: String?

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
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                    self.idpId = dict["IdpId"] as! Int32
                }
                if dict.keys.contains("Relation") && dict["Relation"] != nil {
                    self.relation = dict["Relation"] as! String
                }
                if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var applicationIds: [String]?

        public var applicationType: String?

        public var createTime: String?

        public var customUserAttributes: [GetPrivateAccessPolicyResponseBody.Policy.CustomUserAttributes]?

        public var description_: String?

        public var name: String?

        public var policyAction: String?

        public var policyId: String?

        public var priority: Int32?

        public var status: String?

        public var tagIds: [String]?

        public var userGroupIds: [String]?

        public var userGroupMode: String?

        public override init() {
            super.init()
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
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customUserAttributes != nil {
                var tmp : [Any] = []
                for k in self.customUserAttributes! {
                    tmp.append(k.toMap())
                }
                map["CustomUserAttributes"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyAction != nil {
                map["PolicyAction"] = self.policyAction!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.userGroupMode != nil {
                map["UserGroupMode"] = self.userGroupMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CustomUserAttributes") && dict["CustomUserAttributes"] != nil {
                var tmp : [GetPrivateAccessPolicyResponseBody.Policy.CustomUserAttributes] = []
                for v in dict["CustomUserAttributes"] as! [Any] {
                    var model = GetPrivateAccessPolicyResponseBody.Policy.CustomUserAttributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customUserAttributes = tmp
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyAction") && dict["PolicyAction"] != nil {
                self.policyAction = dict["PolicyAction"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
                self.tagIds = dict["TagIds"] as! [String]
            }
            if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("UserGroupMode") && dict["UserGroupMode"] != nil {
                self.userGroupMode = dict["UserGroupMode"] as! String
            }
        }
    }
    public var policy: GetPrivateAccessPolicyResponseBody.Policy?

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
            var model = GetPrivateAccessPolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPrivateAccessPolicyResponseBody?

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
            var model = GetPrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserGroupRequest : Tea.TeaModel {
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

public class GetUserGroupResponseBody : Tea.TeaModel {
    public class UserGroup : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var idpId: Int32?

            public var relation: String?

            public var userGroupType: String?

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
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                    self.idpId = dict["IdpId"] as! Int32
                }
                if dict.keys.contains("Relation") && dict["Relation"] != nil {
                    self.relation = dict["Relation"] as! String
                }
                if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var attributes: [GetUserGroupResponseBody.UserGroup.Attributes]?

        public var createTime: String?

        public var description_: String?

        public var name: String?

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
            if self.attributes != nil {
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                var tmp : [GetUserGroupResponseBody.UserGroup.Attributes] = []
                for v in dict["Attributes"] as! [Any] {
                    var model = GetUserGroupResponseBody.UserGroup.Attributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.attributes = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
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
            var model = GetUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsForPrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") && dict["PolicyIds"] != nil {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
    }
}

public class ListApplicationsForPrivateAccessPolicyResponseBody : Tea.TeaModel {
    public class Polices : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public class PortRanges : Tea.TeaModel {
                public var begin: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") && dict["Begin"] != nil {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("End") && dict["End"] != nil {
                        self.end = dict["End"] as! Int32
                    }
                }
            }
            public var addresses: [String]?

            public var applicationId: String?

            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var portRanges: [ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications.PortRanges]?

            public var protocol_: String?

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
                if self.addresses != nil {
                    map["Addresses"] = self.addresses!
                }
                if self.applicationId != nil {
                    map["ApplicationId"] = self.applicationId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.portRanges != nil {
                    var tmp : [Any] = []
                    for k in self.portRanges! {
                        tmp.append(k.toMap())
                    }
                    map["PortRanges"] = tmp
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Addresses") && dict["Addresses"] != nil {
                    self.addresses = dict["Addresses"] as! [String]
                }
                if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                    self.applicationId = dict["ApplicationId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PortRanges") && dict["PortRanges"] != nil {
                    var tmp : [ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications.PortRanges] = []
                    for v in dict["PortRanges"] as! [Any] {
                        var model = ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications.PortRanges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.portRanges = tmp
                }
                if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var applications: [ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications]?

        public var policyId: String?

        public override init() {
            super.init()
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
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applications") && dict["Applications"] != nil {
                var tmp : [ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications] = []
                for v in dict["Applications"] as! [Any] {
                    var model = ListApplicationsForPrivateAccessPolicyResponseBody.Polices.Applications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applications = tmp
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
        }
    }
    public var polices: [ListApplicationsForPrivateAccessPolicyResponseBody.Polices]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.polices != nil {
            var tmp : [Any] = []
            for k in self.polices! {
                tmp.append(k.toMap())
            }
            map["Polices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Polices") && dict["Polices"] != nil {
            var tmp : [ListApplicationsForPrivateAccessPolicyResponseBody.Polices] = []
            for v in dict["Polices"] as! [Any] {
                var model = ListApplicationsForPrivateAccessPolicyResponseBody.Polices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.polices = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListApplicationsForPrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsForPrivateAccessPolicyResponseBody?

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
            var model = ListApplicationsForPrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsForPrivateAccessTagRequest : Tea.TeaModel {
    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class ListApplicationsForPrivateAccessTagResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public class PortRanges : Tea.TeaModel {
                public var begin: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") && dict["Begin"] != nil {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("End") && dict["End"] != nil {
                        self.end = dict["End"] as! Int32
                    }
                }
            }
            public var addresses: [String]?

            public var applicationId: String?

            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var portRanges: [ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications.PortRanges]?

            public var protocol_: String?

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
                if self.addresses != nil {
                    map["Addresses"] = self.addresses!
                }
                if self.applicationId != nil {
                    map["ApplicationId"] = self.applicationId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.portRanges != nil {
                    var tmp : [Any] = []
                    for k in self.portRanges! {
                        tmp.append(k.toMap())
                    }
                    map["PortRanges"] = tmp
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Addresses") && dict["Addresses"] != nil {
                    self.addresses = dict["Addresses"] as! [String]
                }
                if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                    self.applicationId = dict["ApplicationId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PortRanges") && dict["PortRanges"] != nil {
                    var tmp : [ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications.PortRanges] = []
                    for v in dict["PortRanges"] as! [Any] {
                        var model = ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications.PortRanges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.portRanges = tmp
                }
                if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var applications: [ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications]?

        public var tagId: String?

        public override init() {
            super.init()
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
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applications") && dict["Applications"] != nil {
                var tmp : [ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications] = []
                for v in dict["Applications"] as! [Any] {
                    var model = ListApplicationsForPrivateAccessTagResponseBody.Tags.Applications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applications = tmp
            }
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! String
            }
        }
    }
    public var requestId: String?

    public var tags: [ListApplicationsForPrivateAccessTagResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [ListApplicationsForPrivateAccessTagResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListApplicationsForPrivateAccessTagResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListApplicationsForPrivateAccessTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsForPrivateAccessTagResponseBody?

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
            var model = ListApplicationsForPrivateAccessTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConnectorsRequest : Tea.TeaModel {
    public var connectorIds: [String]?

    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var status: String?

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
        if self.connectorIds != nil {
            map["ConnectorIds"] = self.connectorIds!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.switchStatus != nil {
            map["SwitchStatus"] = self.switchStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectorIds") && dict["ConnectorIds"] != nil {
            self.connectorIds = dict["ConnectorIds"] as! [String]
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SwitchStatus") && dict["SwitchStatus"] != nil {
            self.switchStatus = dict["SwitchStatus"] as! String
        }
    }
}

public class ListConnectorsResponseBody : Tea.TeaModel {
    public class Connectors : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public var applicationId: String?

            public var applicationName: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                    self.applicationId = dict["ApplicationId"] as! String
                }
                if dict.keys.contains("ApplicationName") && dict["ApplicationName"] != nil {
                    self.applicationName = dict["ApplicationName"] as! String
                }
            }
        }
        public class UpgradeTime : Tea.TeaModel {
            public var end: String?

            public var start: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.end != nil {
                    map["End"] = self.end!
                }
                if self.start != nil {
                    map["Start"] = self.start!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("End") && dict["End"] != nil {
                    self.end = dict["End"] as! String
                }
                if dict.keys.contains("Start") && dict["Start"] != nil {
                    self.start = dict["Start"] as! String
                }
            }
        }
        public var applications: [ListConnectorsResponseBody.Connectors.Applications]?

        public var connectorId: String?

        public var createTime: String?

        public var name: String?

        public var regionId: String?

        public var status: String?

        public var switchStatus: String?

        public var upgradeTime: ListConnectorsResponseBody.Connectors.UpgradeTime?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.upgradeTime?.validate()
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
            if self.connectorId != nil {
                map["ConnectorId"] = self.connectorId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.switchStatus != nil {
                map["SwitchStatus"] = self.switchStatus!
            }
            if self.upgradeTime != nil {
                map["UpgradeTime"] = self.upgradeTime?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applications") && dict["Applications"] != nil {
                var tmp : [ListConnectorsResponseBody.Connectors.Applications] = []
                for v in dict["Applications"] as! [Any] {
                    var model = ListConnectorsResponseBody.Connectors.Applications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applications = tmp
            }
            if dict.keys.contains("ConnectorId") && dict["ConnectorId"] != nil {
                self.connectorId = dict["ConnectorId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SwitchStatus") && dict["SwitchStatus"] != nil {
                self.switchStatus = dict["SwitchStatus"] as! String
            }
            if dict.keys.contains("UpgradeTime") && dict["UpgradeTime"] != nil {
                var model = ListConnectorsResponseBody.Connectors.UpgradeTime()
                model.fromMap(dict["UpgradeTime"] as! [String: Any])
                self.upgradeTime = model
            }
        }
    }
    public var connectors: [ListConnectorsResponseBody.Connectors]?

    public var requestId: String?

    public var totalNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectors != nil {
            var tmp : [Any] = []
            for k in self.connectors! {
                tmp.append(k.toMap())
            }
            map["Connectors"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Connectors") && dict["Connectors"] != nil {
            var tmp : [ListConnectorsResponseBody.Connectors] = []
            for v in dict["Connectors"] as! [Any] {
                var model = ListConnectorsResponseBody.Connectors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.connectors = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListConnectorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnectorsResponseBody?

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
            var model = ListConnectorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDynamicRouteRegionsResponseBody : Tea.TeaModel {
    public var regions: [String]?

    public var requestId: String?

    public var totalNum: Int32?

    public override init() {
        super.init()
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
            map["Regions"] = self.regions!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            self.regions = dict["Regions"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListDynamicRouteRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDynamicRouteRegionsResponseBody?

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
            var model = ListDynamicRouteRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDynamicRoutesRequest : Tea.TeaModel {
    public var applicationId: String?

    public var currentPage: Int32?

    public var dynamicRouteIds: [String]?

    public var name: String?

    public var nextHop: String?

    public var pageSize: Int32?

    public var regionIds: [String]?

    public var status: String?

    public var tagId: String?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dynamicRouteIds != nil {
            map["DynamicRouteIds"] = self.dynamicRouteIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextHop != nil {
            map["NextHop"] = self.nextHop!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DynamicRouteIds") && dict["DynamicRouteIds"] != nil {
            self.dynamicRouteIds = dict["DynamicRouteIds"] as! [String]
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextHop") && dict["NextHop"] != nil {
            self.nextHop = dict["NextHop"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionIds") && dict["RegionIds"] != nil {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! String
        }
    }
}

public class ListDynamicRoutesResponseBody : Tea.TeaModel {
    public class DynamicRoutes : Tea.TeaModel {
        public var applicationIds: [String]?

        public var applicationType: String?

        public var createTime: String?

        public var description_: String?

        public var dynamicRouteId: String?

        public var dynamicRouteType: String?

        public var name: String?

        public var nextHop: String?

        public var priority: Int32?

        public var regionIds: [String]?

        public var status: String?

        public var tagIds: [String]?

        public override init() {
            super.init()
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
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dynamicRouteId != nil {
                map["DynamicRouteId"] = self.dynamicRouteId!
            }
            if self.dynamicRouteType != nil {
                map["DynamicRouteType"] = self.dynamicRouteType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nextHop != nil {
                map["NextHop"] = self.nextHop!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.regionIds != nil {
                map["RegionIds"] = self.regionIds!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DynamicRouteId") && dict["DynamicRouteId"] != nil {
                self.dynamicRouteId = dict["DynamicRouteId"] as! String
            }
            if dict.keys.contains("DynamicRouteType") && dict["DynamicRouteType"] != nil {
                self.dynamicRouteType = dict["DynamicRouteType"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NextHop") && dict["NextHop"] != nil {
                self.nextHop = dict["NextHop"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RegionIds") && dict["RegionIds"] != nil {
                self.regionIds = dict["RegionIds"] as! [String]
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
                self.tagIds = dict["TagIds"] as! [String]
            }
        }
    }
    public var dynamicRoutes: [ListDynamicRoutesResponseBody.DynamicRoutes]?

    public var requestId: String?

    public var totalNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRoutes != nil {
            var tmp : [Any] = []
            for k in self.dynamicRoutes! {
                tmp.append(k.toMap())
            }
            map["DynamicRoutes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRoutes") && dict["DynamicRoutes"] != nil {
            var tmp : [ListDynamicRoutesResponseBody.DynamicRoutes] = []
            for v in dict["DynamicRoutes"] as! [Any] {
                var model = ListDynamicRoutesResponseBody.DynamicRoutes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dynamicRoutes = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListDynamicRoutesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDynamicRoutesResponseBody?

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
            var model = ListDynamicRoutesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicesForPrivateAccessApplicationRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
    }
}

public class ListPolicesForPrivateAccessApplicationResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class Policies : Tea.TeaModel {
            public class CustomUserAttributes : Tea.TeaModel {
                public var idpId: Int32?

                public var relation: String?

                public var userGroupType: String?

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
                    if self.idpId != nil {
                        map["IdpId"] = self.idpId!
                    }
                    if self.relation != nil {
                        map["Relation"] = self.relation!
                    }
                    if self.userGroupType != nil {
                        map["UserGroupType"] = self.userGroupType!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                        self.idpId = dict["IdpId"] as! Int32
                    }
                    if dict.keys.contains("Relation") && dict["Relation"] != nil {
                        self.relation = dict["Relation"] as! String
                    }
                    if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                        self.userGroupType = dict["UserGroupType"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var applicationType: String?

            public var createTime: String?

            public var customUserAttributes: [ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies.CustomUserAttributes]?

            public var description_: String?

            public var name: String?

            public var policyAction: String?

            public var policyId: String?

            public var priority: Int32?

            public var status: String?

            public var userGroupType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationType != nil {
                    map["ApplicationType"] = self.applicationType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.customUserAttributes != nil {
                    var tmp : [Any] = []
                    for k in self.customUserAttributes! {
                        tmp.append(k.toMap())
                    }
                    map["CustomUserAttributes"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.policyAction != nil {
                    map["PolicyAction"] = self.policyAction!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                    self.applicationType = dict["ApplicationType"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CustomUserAttributes") && dict["CustomUserAttributes"] != nil {
                    var tmp : [ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies.CustomUserAttributes] = []
                    for v in dict["CustomUserAttributes"] as! [Any] {
                        var model = ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies.CustomUserAttributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customUserAttributes = tmp
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PolicyAction") && dict["PolicyAction"] != nil {
                    self.policyAction = dict["PolicyAction"] as! String
                }
                if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("Priority") && dict["Priority"] != nil {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
            }
        }
        public var applicationId: String?

        public var policies: [ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies]?

        public override init() {
            super.init()
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
            if self.policies != nil {
                var tmp : [Any] = []
                for k in self.policies! {
                    tmp.append(k.toMap())
                }
                map["Policies"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("Policies") && dict["Policies"] != nil {
                var tmp : [ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies] = []
                for v in dict["Policies"] as! [Any] {
                    var model = ListPolicesForPrivateAccessApplicationResponseBody.Applications.Policies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policies = tmp
            }
        }
    }
    public var applications: [ListPolicesForPrivateAccessApplicationResponseBody.Applications]?

    public var requestId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") && dict["Applications"] != nil {
            var tmp : [ListPolicesForPrivateAccessApplicationResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListPolicesForPrivateAccessApplicationResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPolicesForPrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicesForPrivateAccessApplicationResponseBody?

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
            var model = ListPolicesForPrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicesForPrivateAccessTagRequest : Tea.TeaModel {
    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class ListPolicesForPrivateAccessTagResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public class Polices : Tea.TeaModel {
            public class CustomUserAttributes : Tea.TeaModel {
                public var idpId: Int32?

                public var relation: String?

                public var userGroupType: String?

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
                    if self.idpId != nil {
                        map["IdpId"] = self.idpId!
                    }
                    if self.relation != nil {
                        map["Relation"] = self.relation!
                    }
                    if self.userGroupType != nil {
                        map["UserGroupType"] = self.userGroupType!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                        self.idpId = dict["IdpId"] as! Int32
                    }
                    if dict.keys.contains("Relation") && dict["Relation"] != nil {
                        self.relation = dict["Relation"] as! String
                    }
                    if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                        self.userGroupType = dict["UserGroupType"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var applicationType: String?

            public var createTime: String?

            public var customUserAttributes: [ListPolicesForPrivateAccessTagResponseBody.Tags.Polices.CustomUserAttributes]?

            public var description_: String?

            public var name: String?

            public var policyAction: String?

            public var policyId: String?

            public var priority: Int32?

            public var status: String?

            public var userGroupType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationType != nil {
                    map["ApplicationType"] = self.applicationType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.customUserAttributes != nil {
                    var tmp : [Any] = []
                    for k in self.customUserAttributes! {
                        tmp.append(k.toMap())
                    }
                    map["CustomUserAttributes"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.policyAction != nil {
                    map["PolicyAction"] = self.policyAction!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                    self.applicationType = dict["ApplicationType"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CustomUserAttributes") && dict["CustomUserAttributes"] != nil {
                    var tmp : [ListPolicesForPrivateAccessTagResponseBody.Tags.Polices.CustomUserAttributes] = []
                    for v in dict["CustomUserAttributes"] as! [Any] {
                        var model = ListPolicesForPrivateAccessTagResponseBody.Tags.Polices.CustomUserAttributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customUserAttributes = tmp
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PolicyAction") && dict["PolicyAction"] != nil {
                    self.policyAction = dict["PolicyAction"] as! String
                }
                if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("Priority") && dict["Priority"] != nil {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
            }
        }
        public var polices: [ListPolicesForPrivateAccessTagResponseBody.Tags.Polices]?

        public var tagId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.polices != nil {
                var tmp : [Any] = []
                for k in self.polices! {
                    tmp.append(k.toMap())
                }
                map["Polices"] = tmp
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Polices") && dict["Polices"] != nil {
                var tmp : [ListPolicesForPrivateAccessTagResponseBody.Tags.Polices] = []
                for v in dict["Polices"] as! [Any] {
                    var model = ListPolicesForPrivateAccessTagResponseBody.Tags.Polices()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.polices = tmp
            }
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! String
            }
        }
    }
    public var requestId: String?

    public var tags: [ListPolicesForPrivateAccessTagResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [ListPolicesForPrivateAccessTagResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListPolicesForPrivateAccessTagResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListPolicesForPrivateAccessTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicesForPrivateAccessTagResponseBody?

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
            var model = ListPolicesForPrivateAccessTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicesForUserGroupRequest : Tea.TeaModel {
    public var userGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
    }
}

public class ListPolicesForUserGroupResponseBody : Tea.TeaModel {
    public class UserGroups : Tea.TeaModel {
        public class Polices : Tea.TeaModel {
            public var name: String?

            public var policyId: String?

            public var policyType: String?

            public override init() {
                super.init()
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
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
                    self.policyType = dict["PolicyType"] as! String
                }
            }
        }
        public var polices: [ListPolicesForUserGroupResponseBody.UserGroups.Polices]?

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
            if self.polices != nil {
                var tmp : [Any] = []
                for k in self.polices! {
                    tmp.append(k.toMap())
                }
                map["Polices"] = tmp
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Polices") && dict["Polices"] != nil {
                var tmp : [ListPolicesForUserGroupResponseBody.UserGroups.Polices] = []
                for v in dict["Polices"] as! [Any] {
                    var model = ListPolicesForUserGroupResponseBody.UserGroups.Polices()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.polices = tmp
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var userGroups: [ListPolicesForUserGroupResponseBody.UserGroups]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("UserGroups") && dict["UserGroups"] != nil {
            var tmp : [ListPolicesForUserGroupResponseBody.UserGroups] = []
            for v in dict["UserGroups"] as! [Any] {
                var model = ListPolicesForUserGroupResponseBody.UserGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userGroups = tmp
        }
    }
}

public class ListPolicesForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicesForUserGroupResponseBody?

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
            var model = ListPolicesForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessApplicationsRequest : Tea.TeaModel {
    public var address: String?

    public var applicationIds: [String]?

    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var policyId: String?

    public var status: String?

    public var tagId: String?

    public override init() {
        super.init()
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
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! String
        }
    }
}

public class ListPrivateAccessApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class PortRanges : Tea.TeaModel {
            public var begin: Int32?

            public var end: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.begin != nil {
                    map["Begin"] = self.begin!
                }
                if self.end != nil {
                    map["End"] = self.end!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Begin") && dict["Begin"] != nil {
                    self.begin = dict["Begin"] as! Int32
                }
                if dict.keys.contains("End") && dict["End"] != nil {
                    self.end = dict["End"] as! Int32
                }
            }
        }
        public var addresses: [String]?

        public var applicationId: String?

        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var policyIds: [String]?

        public var portRanges: [ListPrivateAccessApplicationsResponseBody.Applications.PortRanges]?

        public var protocol_: String?

        public var status: String?

        public var tagIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addresses != nil {
                map["Addresses"] = self.addresses!
            }
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyIds != nil {
                map["PolicyIds"] = self.policyIds!
            }
            if self.portRanges != nil {
                var tmp : [Any] = []
                for k in self.portRanges! {
                    tmp.append(k.toMap())
                }
                map["PortRanges"] = tmp
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Addresses") && dict["Addresses"] != nil {
                self.addresses = dict["Addresses"] as! [String]
            }
            if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyIds") && dict["PolicyIds"] != nil {
                self.policyIds = dict["PolicyIds"] as! [String]
            }
            if dict.keys.contains("PortRanges") && dict["PortRanges"] != nil {
                var tmp : [ListPrivateAccessApplicationsResponseBody.Applications.PortRanges] = []
                for v in dict["PortRanges"] as! [Any] {
                    var model = ListPrivateAccessApplicationsResponseBody.Applications.PortRanges()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.portRanges = tmp
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
                self.tagIds = dict["TagIds"] as! [String]
            }
        }
    }
    public var applications: [ListPrivateAccessApplicationsResponseBody.Applications]?

    public var requestId: String?

    public var totalNum: Int32?

    public override init() {
        super.init()
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
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") && dict["Applications"] != nil {
            var tmp : [ListPrivateAccessApplicationsResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListPrivateAccessApplicationsResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListPrivateAccessApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessApplicationsResponseBody?

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
            var model = ListPrivateAccessApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessApplicationsForDynamicRouteRequest : Tea.TeaModel {
    public var dynamicRouteIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRouteIds != nil {
            map["DynamicRouteIds"] = self.dynamicRouteIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteIds") && dict["DynamicRouteIds"] != nil {
            self.dynamicRouteIds = dict["DynamicRouteIds"] as! [String]
        }
    }
}

public class ListPrivateAccessApplicationsForDynamicRouteResponseBody : Tea.TeaModel {
    public class DynamicRoutes : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public class PortRanges : Tea.TeaModel {
                public var begin: Int32?

                public var end: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.begin != nil {
                        map["Begin"] = self.begin!
                    }
                    if self.end != nil {
                        map["End"] = self.end!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Begin") && dict["Begin"] != nil {
                        self.begin = dict["Begin"] as! Int32
                    }
                    if dict.keys.contains("End") && dict["End"] != nil {
                        self.end = dict["End"] as! Int32
                    }
                }
            }
            public var addresses: [String]?

            public var applicationId: String?

            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var portRanges: [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications.PortRanges]?

            public var protocol_: String?

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
                if self.addresses != nil {
                    map["Addresses"] = self.addresses!
                }
                if self.applicationId != nil {
                    map["ApplicationId"] = self.applicationId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.portRanges != nil {
                    var tmp : [Any] = []
                    for k in self.portRanges! {
                        tmp.append(k.toMap())
                    }
                    map["PortRanges"] = tmp
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Addresses") && dict["Addresses"] != nil {
                    self.addresses = dict["Addresses"] as! [String]
                }
                if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                    self.applicationId = dict["ApplicationId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PortRanges") && dict["PortRanges"] != nil {
                    var tmp : [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications.PortRanges] = []
                    for v in dict["PortRanges"] as! [Any] {
                        var model = ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications.PortRanges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.portRanges = tmp
                }
                if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var applications: [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications]?

        public var dynamicRouteId: String?

        public override init() {
            super.init()
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
            if self.dynamicRouteId != nil {
                map["DynamicRouteId"] = self.dynamicRouteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applications") && dict["Applications"] != nil {
                var tmp : [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications] = []
                for v in dict["Applications"] as! [Any] {
                    var model = ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes.Applications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applications = tmp
            }
            if dict.keys.contains("DynamicRouteId") && dict["DynamicRouteId"] != nil {
                self.dynamicRouteId = dict["DynamicRouteId"] as! String
            }
        }
    }
    public var dynamicRoutes: [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRoutes != nil {
            var tmp : [Any] = []
            for k in self.dynamicRoutes! {
                tmp.append(k.toMap())
            }
            map["DynamicRoutes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRoutes") && dict["DynamicRoutes"] != nil {
            var tmp : [ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes] = []
            for v in dict["DynamicRoutes"] as! [Any] {
                var model = ListPrivateAccessApplicationsForDynamicRouteResponseBody.DynamicRoutes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dynamicRoutes = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPrivateAccessApplicationsForDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessApplicationsForDynamicRouteResponseBody?

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
            var model = ListPrivateAccessApplicationsForDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessPolicesRequest : Tea.TeaModel {
    public var applicationId: String?

    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var policyAction: String?

    public var policyIds: [String]?

    public var status: String?

    public var tagId: String?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyAction != nil {
            map["PolicyAction"] = self.policyAction!
        }
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyAction") && dict["PolicyAction"] != nil {
            self.policyAction = dict["PolicyAction"] as! String
        }
        if dict.keys.contains("PolicyIds") && dict["PolicyIds"] != nil {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListPrivateAccessPolicesResponseBody : Tea.TeaModel {
    public class Polices : Tea.TeaModel {
        public class CustomUserAttributes : Tea.TeaModel {
            public var idpId: Int32?

            public var relation: String?

            public var userGroupType: String?

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
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                    self.idpId = dict["IdpId"] as! Int32
                }
                if dict.keys.contains("Relation") && dict["Relation"] != nil {
                    self.relation = dict["Relation"] as! String
                }
                if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var applicationIds: [String]?

        public var applicationType: String?

        public var createTime: String?

        public var customUserAttributes: [ListPrivateAccessPolicesResponseBody.Polices.CustomUserAttributes]?

        public var description_: String?

        public var name: String?

        public var policyAction: String?

        public var policyId: String?

        public var priority: Int32?

        public var status: String?

        public var tagIds: [String]?

        public var userGroupIds: [String]?

        public var userGroupMode: String?

        public override init() {
            super.init()
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
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customUserAttributes != nil {
                var tmp : [Any] = []
                for k in self.customUserAttributes! {
                    tmp.append(k.toMap())
                }
                map["CustomUserAttributes"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyAction != nil {
                map["PolicyAction"] = self.policyAction!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tagIds != nil {
                map["TagIds"] = self.tagIds!
            }
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.userGroupMode != nil {
                map["UserGroupMode"] = self.userGroupMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                self.applicationType = dict["ApplicationType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CustomUserAttributes") && dict["CustomUserAttributes"] != nil {
                var tmp : [ListPrivateAccessPolicesResponseBody.Polices.CustomUserAttributes] = []
                for v in dict["CustomUserAttributes"] as! [Any] {
                    var model = ListPrivateAccessPolicesResponseBody.Polices.CustomUserAttributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customUserAttributes = tmp
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyAction") && dict["PolicyAction"] != nil {
                self.policyAction = dict["PolicyAction"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
                self.tagIds = dict["TagIds"] as! [String]
            }
            if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("UserGroupMode") && dict["UserGroupMode"] != nil {
                self.userGroupMode = dict["UserGroupMode"] as! String
            }
        }
    }
    public var polices: [ListPrivateAccessPolicesResponseBody.Polices]?

    public var requestId: String?

    public var totalNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.polices != nil {
            var tmp : [Any] = []
            for k in self.polices! {
                tmp.append(k.toMap())
            }
            map["Polices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Polices") && dict["Polices"] != nil {
            var tmp : [ListPrivateAccessPolicesResponseBody.Polices] = []
            for v in dict["Polices"] as! [Any] {
                var model = ListPrivateAccessPolicesResponseBody.Polices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.polices = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListPrivateAccessPolicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessPolicesResponseBody?

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
            var model = ListPrivateAccessPolicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessTagsRequest : Tea.TeaModel {
    public var applicationId: String?

    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var policyId: String?

    public var tagIds: [String]?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class ListPrivateAccessTagsResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var applicationIds: [String]?

        public var createTime: String?

        public var description_: String?

        public var name: String?

        public var policyIds: [String]?

        public var tagId: String?

        public var tagType: String?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyIds != nil {
                map["PolicyIds"] = self.policyIds!
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagType != nil {
                map["TagType"] = self.tagType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
                self.applicationIds = dict["ApplicationIds"] as! [String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyIds") && dict["PolicyIds"] != nil {
                self.policyIds = dict["PolicyIds"] as! [String]
            }
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! String
            }
            if dict.keys.contains("TagType") && dict["TagType"] != nil {
                self.tagType = dict["TagType"] as! String
            }
        }
    }
    public var requestId: String?

    public var tags: [ListPrivateAccessTagsResponseBody.Tags]?

    public var totalNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [ListPrivateAccessTagsResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = ListPrivateAccessTagsResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class ListPrivateAccessTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessTagsResponseBody?

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
            var model = ListPrivateAccessTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrivateAccessTagsForDynamicRouteRequest : Tea.TeaModel {
    public var dynamicRouteIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRouteIds != nil {
            map["DynamicRouteIds"] = self.dynamicRouteIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRouteIds") && dict["DynamicRouteIds"] != nil {
            self.dynamicRouteIds = dict["DynamicRouteIds"] as! [String]
        }
    }
}

public class ListPrivateAccessTagsForDynamicRouteResponseBody : Tea.TeaModel {
    public class DynamicRoutes : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var tagId: String?

            public var tagType: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagType != nil {
                    map["TagType"] = self.tagType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TagId") && dict["TagId"] != nil {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagType") && dict["TagType"] != nil {
                    self.tagType = dict["TagType"] as! String
                }
            }
        }
        public var dynamicRouteId: String?

        public var tags: [ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dynamicRouteId != nil {
                map["DynamicRouteId"] = self.dynamicRouteId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DynamicRouteId") && dict["DynamicRouteId"] != nil {
                self.dynamicRouteId = dict["DynamicRouteId"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var dynamicRoutes: [ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dynamicRoutes != nil {
            var tmp : [Any] = []
            for k in self.dynamicRoutes! {
                tmp.append(k.toMap())
            }
            map["DynamicRoutes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DynamicRoutes") && dict["DynamicRoutes"] != nil {
            var tmp : [ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes] = []
            for v in dict["DynamicRoutes"] as! [Any] {
                var model = ListPrivateAccessTagsForDynamicRouteResponseBody.DynamicRoutes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dynamicRoutes = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPrivateAccessTagsForDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateAccessTagsForDynamicRouteResponseBody?

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
            var model = ListPrivateAccessTagsForDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagsForPrivateAccessApplicationRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
    }
}

public class ListTagsForPrivateAccessApplicationResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var tagId: String?

            public var tagType: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagType != nil {
                    map["TagType"] = self.tagType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TagId") && dict["TagId"] != nil {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagType") && dict["TagType"] != nil {
                    self.tagType = dict["TagType"] as! String
                }
            }
        }
        public var applicationId: String?

        public var tags: [ListTagsForPrivateAccessApplicationResponseBody.Applications.Tags]?

        public override init() {
            super.init()
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListTagsForPrivateAccessApplicationResponseBody.Applications.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListTagsForPrivateAccessApplicationResponseBody.Applications.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var applications: [ListTagsForPrivateAccessApplicationResponseBody.Applications]?

    public var requestId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") && dict["Applications"] != nil {
            var tmp : [ListTagsForPrivateAccessApplicationResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListTagsForPrivateAccessApplicationResponseBody.Applications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.applications = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTagsForPrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagsForPrivateAccessApplicationResponseBody?

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
            var model = ListTagsForPrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagsForPrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") && dict["PolicyIds"] != nil {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
    }
}

public class ListTagsForPrivateAccessPolicyResponseBody : Tea.TeaModel {
    public class Polices : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var name: String?

            public var tagId: String?

            public var tagType: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagType != nil {
                    map["TagType"] = self.tagType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("TagId") && dict["TagId"] != nil {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagType") && dict["TagType"] != nil {
                    self.tagType = dict["TagType"] as! String
                }
            }
        }
        public var policyId: String?

        public var tags: [ListTagsForPrivateAccessPolicyResponseBody.Polices.Tags]?

        public override init() {
            super.init()
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListTagsForPrivateAccessPolicyResponseBody.Polices.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListTagsForPrivateAccessPolicyResponseBody.Polices.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var polices: [ListTagsForPrivateAccessPolicyResponseBody.Polices]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.polices != nil {
            var tmp : [Any] = []
            for k in self.polices! {
                tmp.append(k.toMap())
            }
            map["Polices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Polices") && dict["Polices"] != nil {
            var tmp : [ListTagsForPrivateAccessPolicyResponseBody.Polices] = []
            for v in dict["Polices"] as! [Any] {
                var model = ListTagsForPrivateAccessPolicyResponseBody.Polices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.polices = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTagsForPrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagsForPrivateAccessPolicyResponseBody?

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
            var model = ListTagsForPrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserGroupsRequest : Tea.TeaModel {
    public var attributeValue: String?

    public var currentPage: Int32?

    public var name: String?

    public var PAPolicyId: String?

    public var pageSize: Int32?

    public var userGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributeValue != nil {
            map["AttributeValue"] = self.attributeValue!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.PAPolicyId != nil {
            map["PAPolicyId"] = self.PAPolicyId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttributeValue") && dict["AttributeValue"] != nil {
            self.attributeValue = dict["AttributeValue"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PAPolicyId") && dict["PAPolicyId"] != nil {
            self.PAPolicyId = dict["PAPolicyId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
    }
}

public class ListUserGroupsResponseBody : Tea.TeaModel {
    public class UserGroups : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var idpId: Int32?

            public var relation: String?

            public var userGroupType: String?

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
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.relation != nil {
                    map["Relation"] = self.relation!
                }
                if self.userGroupType != nil {
                    map["UserGroupType"] = self.userGroupType!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                    self.idpId = dict["IdpId"] as! Int32
                }
                if dict.keys.contains("Relation") && dict["Relation"] != nil {
                    self.relation = dict["Relation"] as! String
                }
                if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                    self.userGroupType = dict["UserGroupType"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var attributes: [ListUserGroupsResponseBody.UserGroups.Attributes]?

        public var createTime: String?

        public var description_: String?

        public var name: String?

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
            if self.attributes != nil {
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                var tmp : [ListUserGroupsResponseBody.UserGroups.Attributes] = []
                for v in dict["Attributes"] as! [Any] {
                    var model = ListUserGroupsResponseBody.UserGroups.Attributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.attributes = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalNum: Int32?

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
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
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
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int32
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
            var model = ListUserGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserGroupsForPrivateAccessPolicyRequest : Tea.TeaModel {
    public var policyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyIds") && dict["PolicyIds"] != nil {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
    }
}

public class ListUserGroupsForPrivateAccessPolicyResponseBody : Tea.TeaModel {
    public class Polices : Tea.TeaModel {
        public class UserGroups : Tea.TeaModel {
            public class Attributes : Tea.TeaModel {
                public var idpId: Int32?

                public var relation: String?

                public var userGroupType: String?

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
                    if self.idpId != nil {
                        map["IdpId"] = self.idpId!
                    }
                    if self.relation != nil {
                        map["Relation"] = self.relation!
                    }
                    if self.userGroupType != nil {
                        map["UserGroupType"] = self.userGroupType!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                        self.idpId = dict["IdpId"] as! Int32
                    }
                    if dict.keys.contains("Relation") && dict["Relation"] != nil {
                        self.relation = dict["Relation"] as! String
                    }
                    if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                        self.userGroupType = dict["UserGroupType"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var attributes: [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups.Attributes]?

            public var createTime: String?

            public var description_: String?

            public var name: String?

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
                if self.attributes != nil {
                    var tmp : [Any] = []
                    for k in self.attributes! {
                        tmp.append(k.toMap())
                    }
                    map["Attributes"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.userGroupId != nil {
                    map["UserGroupId"] = self.userGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                    var tmp : [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups.Attributes] = []
                    for v in dict["Attributes"] as! [Any] {
                        var model = ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups.Attributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attributes = tmp
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                    self.userGroupId = dict["UserGroupId"] as! String
                }
            }
        }
        public var policyId: String?

        public var userGroups: [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups]?

        public override init() {
            super.init()
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
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("UserGroups") && dict["UserGroups"] != nil {
                var tmp : [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups] = []
                for v in dict["UserGroups"] as! [Any] {
                    var model = ListUserGroupsForPrivateAccessPolicyResponseBody.Polices.UserGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userGroups = tmp
            }
        }
    }
    public var polices: [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.polices != nil {
            var tmp : [Any] = []
            for k in self.polices! {
                tmp.append(k.toMap())
            }
            map["Polices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Polices") && dict["Polices"] != nil {
            var tmp : [ListUserGroupsForPrivateAccessPolicyResponseBody.Polices] = []
            for v in dict["Polices"] as! [Any] {
                var model = ListUserGroupsForPrivateAccessPolicyResponseBody.Polices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.polices = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUserGroupsForPrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserGroupsForPrivateAccessPolicyResponseBody?

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
            var model = ListUserGroupsForPrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDynamicRouteRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var applicationType: String?

    public var description_: String?

    public var dynamicRouteId: String?

    public var dynamicRouteType: String?

    public var modifyType: String?

    public var name: String?

    public var nextHop: String?

    public var priority: Int32?

    public var regionIds: [String]?

    public var status: String?

    public var tagIds: [String]?

    public override init() {
        super.init()
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
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dynamicRouteId != nil {
            map["DynamicRouteId"] = self.dynamicRouteId!
        }
        if self.dynamicRouteType != nil {
            map["DynamicRouteType"] = self.dynamicRouteType!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextHop != nil {
            map["NextHop"] = self.nextHop!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DynamicRouteId") && dict["DynamicRouteId"] != nil {
            self.dynamicRouteId = dict["DynamicRouteId"] as! String
        }
        if dict.keys.contains("DynamicRouteType") && dict["DynamicRouteType"] != nil {
            self.dynamicRouteType = dict["DynamicRouteType"] as! String
        }
        if dict.keys.contains("ModifyType") && dict["ModifyType"] != nil {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextHop") && dict["NextHop"] != nil {
            self.nextHop = dict["NextHop"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionIds") && dict["RegionIds"] != nil {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class UpdateDynamicRouteResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateDynamicRouteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDynamicRouteResponseBody?

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
            var model = UpdateDynamicRouteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePrivateAccessApplicationRequest : Tea.TeaModel {
    public class PortRanges : Tea.TeaModel {
        public var begin: Int32?

        public var end: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.begin != nil {
                map["Begin"] = self.begin!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Begin") && dict["Begin"] != nil {
                self.begin = dict["Begin"] as! Int32
            }
            if dict.keys.contains("End") && dict["End"] != nil {
                self.end = dict["End"] as! Int32
            }
        }
    }
    public var addresses: [String]?

    public var applicationId: String?

    public var description_: String?

    public var modifyType: String?

    public var portRanges: [UpdatePrivateAccessApplicationRequest.PortRanges]?

    public var protocol_: String?

    public var status: String?

    public var tagIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            map["Addresses"] = self.addresses!
        }
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.portRanges != nil {
            var tmp : [Any] = []
            for k in self.portRanges! {
                tmp.append(k.toMap())
            }
            map["PortRanges"] = tmp
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addresses") && dict["Addresses"] != nil {
            self.addresses = dict["Addresses"] as! [String]
        }
        if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModifyType") && dict["ModifyType"] != nil {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("PortRanges") && dict["PortRanges"] != nil {
            var tmp : [UpdatePrivateAccessApplicationRequest.PortRanges] = []
            for v in dict["PortRanges"] as! [Any] {
                var model = UpdatePrivateAccessApplicationRequest.PortRanges()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.portRanges = tmp
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
            self.tagIds = dict["TagIds"] as! [String]
        }
    }
}

public class UpdatePrivateAccessApplicationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdatePrivateAccessApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePrivateAccessApplicationResponseBody?

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
            var model = UpdatePrivateAccessApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePrivateAccessPolicyRequest : Tea.TeaModel {
    public class CustomUserAttributes : Tea.TeaModel {
        public var idpId: Int32?

        public var relation: String?

        public var userGroupType: String?

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
            if self.idpId != nil {
                map["IdpId"] = self.idpId!
            }
            if self.relation != nil {
                map["Relation"] = self.relation!
            }
            if self.userGroupType != nil {
                map["UserGroupType"] = self.userGroupType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                self.idpId = dict["IdpId"] as! Int32
            }
            if dict.keys.contains("Relation") && dict["Relation"] != nil {
                self.relation = dict["Relation"] as! String
            }
            if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                self.userGroupType = dict["UserGroupType"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var applicationIds: [String]?

    public var applicationType: String?

    public var customUserAttributes: [UpdatePrivateAccessPolicyRequest.CustomUserAttributes]?

    public var description_: String?

    public var modifyType: String?

    public var policyAction: String?

    public var policyId: String?

    public var priority: Int32?

    public var status: String?

    public var tagIds: [String]?

    public var userGroupIds: [String]?

    public var userGroupMode: String?

    public override init() {
        super.init()
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
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.customUserAttributes != nil {
            var tmp : [Any] = []
            for k in self.customUserAttributes! {
                tmp.append(k.toMap())
            }
            map["CustomUserAttributes"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.policyAction != nil {
            map["PolicyAction"] = self.policyAction!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagIds != nil {
            map["TagIds"] = self.tagIds!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userGroupMode != nil {
            map["UserGroupMode"] = self.userGroupMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("CustomUserAttributes") && dict["CustomUserAttributes"] != nil {
            var tmp : [UpdatePrivateAccessPolicyRequest.CustomUserAttributes] = []
            for v in dict["CustomUserAttributes"] as! [Any] {
                var model = UpdatePrivateAccessPolicyRequest.CustomUserAttributes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customUserAttributes = tmp
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModifyType") && dict["ModifyType"] != nil {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("PolicyAction") && dict["PolicyAction"] != nil {
            self.policyAction = dict["PolicyAction"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagIds") && dict["TagIds"] != nil {
            self.tagIds = dict["TagIds"] as! [String]
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("UserGroupMode") && dict["UserGroupMode"] != nil {
            self.userGroupMode = dict["UserGroupMode"] as! String
        }
    }
}

public class UpdatePrivateAccessPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdatePrivateAccessPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePrivateAccessPolicyResponseBody?

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
            var model = UpdatePrivateAccessPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserGroupRequest : Tea.TeaModel {
    public class Attributes : Tea.TeaModel {
        public var idpId: Int32?

        public var relation: String?

        public var userGroupType: String?

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
            if self.idpId != nil {
                map["IdpId"] = self.idpId!
            }
            if self.relation != nil {
                map["Relation"] = self.relation!
            }
            if self.userGroupType != nil {
                map["UserGroupType"] = self.userGroupType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IdpId") && dict["IdpId"] != nil {
                self.idpId = dict["IdpId"] as! Int32
            }
            if dict.keys.contains("Relation") && dict["Relation"] != nil {
                self.relation = dict["Relation"] as! String
            }
            if dict.keys.contains("UserGroupType") && dict["UserGroupType"] != nil {
                self.userGroupType = dict["UserGroupType"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var attributes: [UpdateUserGroupRequest.Attributes]?

    public var description_: String?

    public var modifyType: String?

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
        if self.attributes != nil {
            var tmp : [Any] = []
            for k in self.attributes! {
                tmp.append(k.toMap())
            }
            map["Attributes"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
            var tmp : [UpdateUserGroupRequest.Attributes] = []
            for v in dict["Attributes"] as! [Any] {
                var model = UpdateUserGroupRequest.Attributes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.attributes = tmp
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModifyType") && dict["ModifyType"] != nil {
            self.modifyType = dict["ModifyType"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class UpdateUserGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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
            var model = UpdateUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
