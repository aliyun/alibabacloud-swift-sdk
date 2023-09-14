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

public class CreateRegistrationPolicyRequest : Tea.TeaModel {
    public class CompanyLimitCount : Tea.TeaModel {
        public var all: Int32?

        public var mobile: Int32?

        public var PC: Int32?

        public override init() {
            super.init()
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
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.PC != nil {
                map["PC"] = self.PC!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                self.all = dict["All"] as! Int32
            }
            if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                self.mobile = dict["Mobile"] as! Int32
            }
            if dict.keys.contains("PC") && dict["PC"] != nil {
                self.PC = dict["PC"] as! Int32
            }
        }
    }
    public class PersonalLimitCount : Tea.TeaModel {
        public var all: Int32?

        public var mobile: Int32?

        public var PC: Int32?

        public override init() {
            super.init()
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
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.PC != nil {
                map["PC"] = self.PC!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                self.all = dict["All"] as! Int32
            }
            if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                self.mobile = dict["Mobile"] as! Int32
            }
            if dict.keys.contains("PC") && dict["PC"] != nil {
                self.PC = dict["PC"] as! Int32
            }
        }
    }
    public var companyLimitCount: CreateRegistrationPolicyRequest.CompanyLimitCount?

    public var companyLimitType: String?

    public var description_: String?

    public var matchMode: String?

    public var name: String?

    public var personalLimitCount: CreateRegistrationPolicyRequest.PersonalLimitCount?

    public var personalLimitType: String?

    public var priority: Int64?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.companyLimitCount?.validate()
        try self.personalLimitCount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyLimitCount != nil {
            map["CompanyLimitCount"] = self.companyLimitCount?.toMap()
        }
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.personalLimitCount != nil {
            map["PersonalLimitCount"] = self.personalLimitCount?.toMap()
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitCount") && dict["CompanyLimitCount"] != nil {
            var model = CreateRegistrationPolicyRequest.CompanyLimitCount()
            model.fromMap(dict["CompanyLimitCount"] as! [String: Any])
            self.companyLimitCount = model
        }
        if dict.keys.contains("CompanyLimitType") && dict["CompanyLimitType"] != nil {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PersonalLimitCount") && dict["PersonalLimitCount"] != nil {
            var model = CreateRegistrationPolicyRequest.PersonalLimitCount()
            model.fromMap(dict["PersonalLimitCount"] as! [String: Any])
            self.personalLimitCount = model
        }
        if dict.keys.contains("PersonalLimitType") && dict["PersonalLimitType"] != nil {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class CreateRegistrationPolicyShrinkRequest : Tea.TeaModel {
    public var companyLimitCountShrink: String?

    public var companyLimitType: String?

    public var description_: String?

    public var matchMode: String?

    public var name: String?

    public var personalLimitCountShrink: String?

    public var personalLimitType: String?

    public var priority: Int64?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyLimitCountShrink != nil {
            map["CompanyLimitCount"] = self.companyLimitCountShrink!
        }
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.personalLimitCountShrink != nil {
            map["PersonalLimitCount"] = self.personalLimitCountShrink!
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitCount") && dict["CompanyLimitCount"] != nil {
            self.companyLimitCountShrink = dict["CompanyLimitCount"] as! String
        }
        if dict.keys.contains("CompanyLimitType") && dict["CompanyLimitType"] != nil {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PersonalLimitCount") && dict["PersonalLimitCount"] != nil {
            self.personalLimitCountShrink = dict["PersonalLimitCount"] as! String
        }
        if dict.keys.contains("PersonalLimitType") && dict["PersonalLimitType"] != nil {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class CreateRegistrationPolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class LimitDetail : Tea.TeaModel {
            public class LimitCount : Tea.TeaModel {
                public var all: Int32?

                public var mobile: Int32?

                public var PC: Int32?

                public override init() {
                    super.init()
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
                    if self.mobile != nil {
                        map["Mobile"] = self.mobile!
                    }
                    if self.PC != nil {
                        map["PC"] = self.PC!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("All") && dict["All"] != nil {
                        self.all = dict["All"] as! Int32
                    }
                    if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                        self.mobile = dict["Mobile"] as! Int32
                    }
                    if dict.keys.contains("PC") && dict["PC"] != nil {
                        self.PC = dict["PC"] as! Int32
                    }
                }
            }
            public var deviceBelong: String?

            public var limitCount: CreateRegistrationPolicyResponseBody.Policy.LimitDetail.LimitCount?

            public var limitType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.limitCount?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceBelong != nil {
                    map["DeviceBelong"] = self.deviceBelong!
                }
                if self.limitCount != nil {
                    map["LimitCount"] = self.limitCount?.toMap()
                }
                if self.limitType != nil {
                    map["LimitType"] = self.limitType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
                    self.deviceBelong = dict["DeviceBelong"] as! String
                }
                if dict.keys.contains("LimitCount") && dict["LimitCount"] != nil {
                    var model = CreateRegistrationPolicyResponseBody.Policy.LimitDetail.LimitCount()
                    model.fromMap(dict["LimitCount"] as! [String: Any])
                    self.limitCount = model
                }
                if dict.keys.contains("LimitType") && dict["LimitType"] != nil {
                    self.limitType = dict["LimitType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var limitDetail: [CreateRegistrationPolicyResponseBody.Policy.LimitDetail]?

        public var matchMode: String?

        public var name: String?

        public var policyId: String?

        public var priority: String?

        public var status: String?

        public var userGroupIds: [String]?

        public var whitelist: [String]?

        public override init() {
            super.init()
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
            if self.limitDetail != nil {
                var tmp : [Any] = []
                for k in self.limitDetail! {
                    tmp.append(k.toMap())
                }
                map["LimitDetail"] = tmp
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.name != nil {
                map["Name"] = self.name!
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
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.whitelist != nil {
                map["Whitelist"] = self.whitelist!
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
            if dict.keys.contains("LimitDetail") && dict["LimitDetail"] != nil {
                var tmp : [CreateRegistrationPolicyResponseBody.Policy.LimitDetail] = []
                for v in dict["LimitDetail"] as! [Any] {
                    var model = CreateRegistrationPolicyResponseBody.Policy.LimitDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.limitDetail = tmp
            }
            if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
                self.matchMode = dict["MatchMode"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
                self.whitelist = dict["Whitelist"] as! [String]
            }
        }
    }
    public var policy: CreateRegistrationPolicyResponseBody.Policy?

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
            var model = CreateRegistrationPolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRegistrationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRegistrationPolicyResponseBody?

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
            var model = CreateRegistrationPolicyResponseBody()
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

public class DeleteRegistrationPoliciesRequest : Tea.TeaModel {
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

public class DeleteRegistrationPoliciesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteRegistrationPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRegistrationPoliciesResponseBody?

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
            var model = DeleteRegistrationPoliciesResponseBody()
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

        public var connectorIds: [String]?

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
            if self.connectorIds != nil {
                map["ConnectorIds"] = self.connectorIds!
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
            if dict.keys.contains("ConnectorIds") && dict["ConnectorIds"] != nil {
                self.connectorIds = dict["ConnectorIds"] as! [String]
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

public class GetRegistrationPolicyRequest : Tea.TeaModel {
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

public class GetRegistrationPolicyResponseBody : Tea.TeaModel {
    public class LimitDetail : Tea.TeaModel {
        public class LimitCount : Tea.TeaModel {
            public var all: Int32?

            public var mobile: Int32?

            public var PC: Int32?

            public override init() {
                super.init()
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
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.PC != nil {
                    map["PC"] = self.PC!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("All") && dict["All"] != nil {
                    self.all = dict["All"] as! Int32
                }
                if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                    self.mobile = dict["Mobile"] as! Int32
                }
                if dict.keys.contains("PC") && dict["PC"] != nil {
                    self.PC = dict["PC"] as! Int32
                }
            }
        }
        public var deviceBelong: String?

        public var limitCount: GetRegistrationPolicyResponseBody.LimitDetail.LimitCount?

        public var limitType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.limitCount?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.limitCount != nil {
                map["LimitCount"] = self.limitCount?.toMap()
            }
            if self.limitType != nil {
                map["LimitType"] = self.limitType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("LimitCount") && dict["LimitCount"] != nil {
                var model = GetRegistrationPolicyResponseBody.LimitDetail.LimitCount()
                model.fromMap(dict["LimitCount"] as! [String: Any])
                self.limitCount = model
            }
            if dict.keys.contains("LimitType") && dict["LimitType"] != nil {
                self.limitType = dict["LimitType"] as! String
            }
        }
    }
    public var createTime: String?

    public var description_: String?

    public var limitDetail: [GetRegistrationPolicyResponseBody.LimitDetail]?

    public var matchMode: String?

    public var name: String?

    public var policyId: String?

    public var priority: Int64?

    public var requestId: String?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
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
        if self.limitDetail != nil {
            var tmp : [Any] = []
            for k in self.limitDetail! {
                tmp.append(k.toMap())
            }
            map["LimitDetail"] = tmp
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
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
        if dict.keys.contains("LimitDetail") && dict["LimitDetail"] != nil {
            var tmp : [GetRegistrationPolicyResponseBody.LimitDetail] = []
            for v in dict["LimitDetail"] as! [Any] {
                var model = GetRegistrationPolicyResponseBody.LimitDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.limitDetail = tmp
        }
        if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class GetRegistrationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegistrationPolicyResponseBody?

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
            var model = GetRegistrationPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserDeviceRequest : Tea.TeaModel {
    public var deviceTag: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceTag != nil {
            map["DeviceTag"] = self.deviceTag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceTag") && dict["DeviceTag"] != nil {
            self.deviceTag = dict["DeviceTag"] as! String
        }
    }
}

public class GetUserDeviceResponseBody : Tea.TeaModel {
    public class Device : Tea.TeaModel {
        public class HistoryUsers : Tea.TeaModel {
            public var saseUserId: String?

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
                if self.saseUserId != nil {
                    map["SaseUserId"] = self.saseUserId!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SaseUserId") && dict["SaseUserId"] != nil {
                    self.saseUserId = dict["SaseUserId"] as! String
                }
                if dict.keys.contains("Username") && dict["Username"] != nil {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public var appStatus: String?

        public var appVersion: String?

        public var CPU: String?

        public var createTime: String?

        public var department: String?

        public var deviceBelong: String?

        public var deviceModel: String?

        public var deviceStatus: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var deviceVersion: String?

        public var disk: String?

        public var dlpStatus: String?

        public var historyUsers: [GetUserDeviceResponseBody.Device.HistoryUsers]?

        public var hostname: String?

        public var iaStatus: String?

        public var innerIP: String?

        public var mac: String?

        public var memory: String?

        public var nacStatus: String?

        public var paStatus: String?

        public var saseUserId: String?

        public var sharingStatus: Bool?

        public var srcIP: String?

        public var updateTime: String?

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
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.deviceVersion != nil {
                map["DeviceVersion"] = self.deviceVersion!
            }
            if self.disk != nil {
                map["Disk"] = self.disk!
            }
            if self.dlpStatus != nil {
                map["DlpStatus"] = self.dlpStatus!
            }
            if self.historyUsers != nil {
                var tmp : [Any] = []
                for k in self.historyUsers! {
                    tmp.append(k.toMap())
                }
                map["HistoryUsers"] = tmp
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.iaStatus != nil {
                map["IaStatus"] = self.iaStatus!
            }
            if self.innerIP != nil {
                map["InnerIP"] = self.innerIP!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nacStatus != nil {
                map["NacStatus"] = self.nacStatus!
            }
            if self.paStatus != nil {
                map["PaStatus"] = self.paStatus!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.sharingStatus != nil {
                map["SharingStatus"] = self.sharingStatus!
            }
            if self.srcIP != nil {
                map["SrcIP"] = self.srcIP!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CPU") && dict["CPU"] != nil {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") && dict["Department"] != nil {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("DeviceModel") && dict["DeviceModel"] != nil {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceStatus") && dict["DeviceStatus"] != nil {
                self.deviceStatus = dict["DeviceStatus"] as! String
            }
            if dict.keys.contains("DeviceTag") && dict["DeviceTag"] != nil {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("DeviceVersion") && dict["DeviceVersion"] != nil {
                self.deviceVersion = dict["DeviceVersion"] as! String
            }
            if dict.keys.contains("Disk") && dict["Disk"] != nil {
                self.disk = dict["Disk"] as! String
            }
            if dict.keys.contains("DlpStatus") && dict["DlpStatus"] != nil {
                self.dlpStatus = dict["DlpStatus"] as! String
            }
            if dict.keys.contains("HistoryUsers") && dict["HistoryUsers"] != nil {
                var tmp : [GetUserDeviceResponseBody.Device.HistoryUsers] = []
                for v in dict["HistoryUsers"] as! [Any] {
                    var model = GetUserDeviceResponseBody.Device.HistoryUsers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.historyUsers = tmp
            }
            if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IaStatus") && dict["IaStatus"] != nil {
                self.iaStatus = dict["IaStatus"] as! String
            }
            if dict.keys.contains("InnerIP") && dict["InnerIP"] != nil {
                self.innerIP = dict["InnerIP"] as! String
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Memory") && dict["Memory"] != nil {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("NacStatus") && dict["NacStatus"] != nil {
                self.nacStatus = dict["NacStatus"] as! String
            }
            if dict.keys.contains("PaStatus") && dict["PaStatus"] != nil {
                self.paStatus = dict["PaStatus"] as! String
            }
            if dict.keys.contains("SaseUserId") && dict["SaseUserId"] != nil {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("SharingStatus") && dict["SharingStatus"] != nil {
                self.sharingStatus = dict["SharingStatus"] as! Bool
            }
            if dict.keys.contains("SrcIP") && dict["SrcIP"] != nil {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Username") && dict["Username"] != nil {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var device: GetUserDeviceResponseBody.Device?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.device?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.device != nil {
            map["Device"] = self.device?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Device") && dict["Device"] != nil {
            var model = GetUserDeviceResponseBody.Device()
            model.fromMap(dict["Device"] as! [String: Any])
            self.device = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetUserDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserDeviceResponseBody?

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
            var model = GetUserDeviceResponseBody()
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
        public class ConnectorClients : Tea.TeaModel {
            public var connectionStatus: String?

            public var devTag: String?

            public var hostname: String?

            public var publicIp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionStatus != nil {
                    map["ConnectionStatus"] = self.connectionStatus!
                }
                if self.devTag != nil {
                    map["DevTag"] = self.devTag!
                }
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.publicIp != nil {
                    map["PublicIp"] = self.publicIp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
                    self.connectionStatus = dict["ConnectionStatus"] as! String
                }
                if dict.keys.contains("DevTag") && dict["DevTag"] != nil {
                    self.devTag = dict["DevTag"] as! String
                }
                if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                    self.hostname = dict["Hostname"] as! String
                }
                if dict.keys.contains("PublicIp") && dict["PublicIp"] != nil {
                    self.publicIp = dict["PublicIp"] as! String
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

        public var connectorClients: [ListConnectorsResponseBody.Connectors.ConnectorClients]?

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
            if self.connectorClients != nil {
                var tmp : [Any] = []
                for k in self.connectorClients! {
                    tmp.append(k.toMap())
                }
                map["ConnectorClients"] = tmp
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
            if dict.keys.contains("ConnectorClients") && dict["ConnectorClients"] != nil {
                var tmp : [ListConnectorsResponseBody.Connectors.ConnectorClients] = []
                for v in dict["ConnectorClients"] as! [Any] {
                    var model = ListConnectorsResponseBody.Connectors.ConnectorClients()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.connectorClients = tmp
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

public class ListExcessiveDeviceRegistrationApplicationsRequest : Tea.TeaModel {
    public var applicationIds: [String]?

    public var currentPage: Int64?

    public var department: String?

    public var deviceTag: String?

    public var hostname: String?

    public var mac: String?

    public var pageSize: Int64?

    public var saseUserId: String?

    public var statuses: [String]?

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
        if self.applicationIds != nil {
            map["ApplicationIds"] = self.applicationIds!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.deviceTag != nil {
            map["DeviceTag"] = self.deviceTag!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.saseUserId != nil {
            map["SaseUserId"] = self.saseUserId!
        }
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Department") && dict["Department"] != nil {
            self.department = dict["Department"] as! String
        }
        if dict.keys.contains("DeviceTag") && dict["DeviceTag"] != nil {
            self.deviceTag = dict["DeviceTag"] as! String
        }
        if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("Mac") && dict["Mac"] != nil {
            self.mac = dict["Mac"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SaseUserId") && dict["SaseUserId"] != nil {
            self.saseUserId = dict["SaseUserId"] as! String
        }
        if dict.keys.contains("Statuses") && dict["Statuses"] != nil {
            self.statuses = dict["Statuses"] as! [String]
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class ListExcessiveDeviceRegistrationApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public var createTime: String?

        public var department: String?

        public var description_: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var hostname: String?

        public var isUsed: Bool?

        public var mac: String?

        public var saseUserId: String?

        public var status: String?

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
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.isUsed != nil {
                map["IsUsed"] = self.isUsed!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") && dict["Department"] != nil {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceTag") && dict["DeviceTag"] != nil {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IsUsed") && dict["IsUsed"] != nil {
                self.isUsed = dict["IsUsed"] as! Bool
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("SaseUserId") && dict["SaseUserId"] != nil {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Username") && dict["Username"] != nil {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var applications: [ListExcessiveDeviceRegistrationApplicationsResponseBody.Applications]?

    public var requestId: String?

    public var totalNum: Int64?

    public override init() {
        super.init()
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
            var tmp : [ListExcessiveDeviceRegistrationApplicationsResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = ListExcessiveDeviceRegistrationApplicationsResponseBody.Applications()
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
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class ListExcessiveDeviceRegistrationApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExcessiveDeviceRegistrationApplicationsResponseBody?

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
            var model = ListExcessiveDeviceRegistrationApplicationsResponseBody()
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

    public var connectorId: String?

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
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
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
        if dict.keys.contains("ConnectorId") && dict["ConnectorId"] != nil {
            self.connectorId = dict["ConnectorId"] as! String
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

        public var connectorIds: [String]?

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
            if self.connectorIds != nil {
                map["ConnectorIds"] = self.connectorIds!
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
            if dict.keys.contains("ConnectorIds") && dict["ConnectorIds"] != nil {
                self.connectorIds = dict["ConnectorIds"] as! [String]
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

public class ListRegistrationPoliciesRequest : Tea.TeaModel {
    public var companyLimitType: String?

    public var currentPage: Int64?

    public var matchMode: String?

    public var name: String?

    public var pageSize: Int64?

    public var personalLimitType: String?

    public var policyIds: [String]?

    public var status: String?

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
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
        }
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitType") && dict["CompanyLimitType"] != nil {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PersonalLimitType") && dict["PersonalLimitType"] != nil {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("PolicyIds") && dict["PolicyIds"] != nil {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
    }
}

public class ListRegistrationPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class LimitDetail : Tea.TeaModel {
            public class LimitCount : Tea.TeaModel {
                public var all: Int32?

                public var mobile: Int32?

                public var PC: Int32?

                public override init() {
                    super.init()
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
                    if self.mobile != nil {
                        map["Mobile"] = self.mobile!
                    }
                    if self.PC != nil {
                        map["PC"] = self.PC!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("All") && dict["All"] != nil {
                        self.all = dict["All"] as! Int32
                    }
                    if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                        self.mobile = dict["Mobile"] as! Int32
                    }
                    if dict.keys.contains("PC") && dict["PC"] != nil {
                        self.PC = dict["PC"] as! Int32
                    }
                }
            }
            public var deviceBelong: String?

            public var limitCount: ListRegistrationPoliciesResponseBody.Policies.LimitDetail.LimitCount?

            public var limitType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.limitCount?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceBelong != nil {
                    map["DeviceBelong"] = self.deviceBelong!
                }
                if self.limitCount != nil {
                    map["LimitCount"] = self.limitCount?.toMap()
                }
                if self.limitType != nil {
                    map["LimitType"] = self.limitType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
                    self.deviceBelong = dict["DeviceBelong"] as! String
                }
                if dict.keys.contains("LimitCount") && dict["LimitCount"] != nil {
                    var model = ListRegistrationPoliciesResponseBody.Policies.LimitDetail.LimitCount()
                    model.fromMap(dict["LimitCount"] as! [String: Any])
                    self.limitCount = model
                }
                if dict.keys.contains("LimitType") && dict["LimitType"] != nil {
                    self.limitType = dict["LimitType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var limitDetail: [ListRegistrationPoliciesResponseBody.Policies.LimitDetail]?

        public var matchMode: String?

        public var name: String?

        public var policyId: String?

        public var priority: Int64?

        public var status: String?

        public var userGroupIds: [String]?

        public var whitelist: [String]?

        public override init() {
            super.init()
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
            if self.limitDetail != nil {
                var tmp : [Any] = []
                for k in self.limitDetail! {
                    tmp.append(k.toMap())
                }
                map["LimitDetail"] = tmp
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.name != nil {
                map["Name"] = self.name!
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
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.whitelist != nil {
                map["Whitelist"] = self.whitelist!
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
            if dict.keys.contains("LimitDetail") && dict["LimitDetail"] != nil {
                var tmp : [ListRegistrationPoliciesResponseBody.Policies.LimitDetail] = []
                for v in dict["LimitDetail"] as! [Any] {
                    var model = ListRegistrationPoliciesResponseBody.Policies.LimitDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.limitDetail = tmp
            }
            if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
                self.matchMode = dict["MatchMode"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
                self.whitelist = dict["Whitelist"] as! [String]
            }
        }
    }
    public var policies: [ListRegistrationPoliciesResponseBody.Policies]?

    public var requestId: String?

    public var totalNum: String?

    public override init() {
        super.init()
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
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") && dict["Policies"] != nil {
            var tmp : [ListRegistrationPoliciesResponseBody.Policies] = []
            for v in dict["Policies"] as! [Any] {
                var model = ListRegistrationPoliciesResponseBody.Policies()
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
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! String
        }
    }
}

public class ListRegistrationPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegistrationPoliciesResponseBody?

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
            var model = ListRegistrationPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegistrationPoliciesForUserGroupRequest : Tea.TeaModel {
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

public class ListRegistrationPoliciesForUserGroupResponseBody : Tea.TeaModel {
    public class UserGroups : Tea.TeaModel {
        public class Policies : Tea.TeaModel {
            public class LimitDetail : Tea.TeaModel {
                public class LimitCount : Tea.TeaModel {
                    public var all: String?

                    public var mobile: String?

                    public var PC: String?

                    public override init() {
                        super.init()
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
                        if self.mobile != nil {
                            map["Mobile"] = self.mobile!
                        }
                        if self.PC != nil {
                            map["PC"] = self.PC!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("All") && dict["All"] != nil {
                            self.all = dict["All"] as! String
                        }
                        if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                            self.mobile = dict["Mobile"] as! String
                        }
                        if dict.keys.contains("PC") && dict["PC"] != nil {
                            self.PC = dict["PC"] as! String
                        }
                    }
                }
                public var deviceBelong: String?

                public var limitCount: ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail.LimitCount?

                public var limitType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.limitCount?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.deviceBelong != nil {
                        map["DeviceBelong"] = self.deviceBelong!
                    }
                    if self.limitCount != nil {
                        map["LimitCount"] = self.limitCount?.toMap()
                    }
                    if self.limitType != nil {
                        map["LimitType"] = self.limitType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
                        self.deviceBelong = dict["DeviceBelong"] as! String
                    }
                    if dict.keys.contains("LimitCount") && dict["LimitCount"] != nil {
                        var model = ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail.LimitCount()
                        model.fromMap(dict["LimitCount"] as! [String: Any])
                        self.limitCount = model
                    }
                    if dict.keys.contains("LimitType") && dict["LimitType"] != nil {
                        self.limitType = dict["LimitType"] as! String
                    }
                }
            }
            public var createTime: String?

            public var description_: String?

            public var limitDetail: [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail]?

            public var matchMode: String?

            public var name: String?

            public var policyId: String?

            public var priority: Int64?

            public var status: String?

            public var whitelist: [String]?

            public override init() {
                super.init()
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
                if self.limitDetail != nil {
                    var tmp : [Any] = []
                    for k in self.limitDetail! {
                        tmp.append(k.toMap())
                    }
                    map["LimitDetail"] = tmp
                }
                if self.matchMode != nil {
                    map["MatchMode"] = self.matchMode!
                }
                if self.name != nil {
                    map["Name"] = self.name!
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
                if self.whitelist != nil {
                    map["Whitelist"] = self.whitelist!
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
                if dict.keys.contains("LimitDetail") && dict["LimitDetail"] != nil {
                    var tmp : [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail] = []
                    for v in dict["LimitDetail"] as! [Any] {
                        var model = ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies.LimitDetail()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.limitDetail = tmp
                }
                if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
                    self.matchMode = dict["MatchMode"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("Priority") && dict["Priority"] != nil {
                    self.priority = dict["Priority"] as! Int64
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
                    self.whitelist = dict["Whitelist"] as! [String]
                }
            }
        }
        public var policies: [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies]?

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
            if self.policies != nil {
                var tmp : [Any] = []
                for k in self.policies! {
                    tmp.append(k.toMap())
                }
                map["Policies"] = tmp
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Policies") && dict["Policies"] != nil {
                var tmp : [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies] = []
                for v in dict["Policies"] as! [Any] {
                    var model = ListRegistrationPoliciesForUserGroupResponseBody.UserGroups.Policies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policies = tmp
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
        }
    }
    public var requestId: String?

    public var userGroups: [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
            var tmp : [ListRegistrationPoliciesForUserGroupResponseBody.UserGroups] = []
            for v in dict["UserGroups"] as! [Any] {
                var model = ListRegistrationPoliciesForUserGroupResponseBody.UserGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userGroups = tmp
        }
    }
}

public class ListRegistrationPoliciesForUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegistrationPoliciesForUserGroupResponseBody?

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
            var model = ListRegistrationPoliciesForUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSoftwareForUserDeviceRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var deviceTag: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.deviceTag != nil {
            map["DeviceTag"] = self.deviceTag!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("DeviceTag") && dict["DeviceTag"] != nil {
            self.deviceTag = dict["DeviceTag"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListSoftwareForUserDeviceResponseBody : Tea.TeaModel {
    public class Software : Tea.TeaModel {
        public var inc: String?

        public var installTime: String?

        public var name: String?

        public var versions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inc != nil {
                map["Inc"] = self.inc!
            }
            if self.installTime != nil {
                map["InstallTime"] = self.installTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.versions != nil {
                map["Versions"] = self.versions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Inc") && dict["Inc"] != nil {
                self.inc = dict["Inc"] as! String
            }
            if dict.keys.contains("InstallTime") && dict["InstallTime"] != nil {
                self.installTime = dict["InstallTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Versions") && dict["Versions"] != nil {
                self.versions = dict["Versions"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var software: [ListSoftwareForUserDeviceResponseBody.Software]?

    public var totalNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.software != nil {
            var tmp : [Any] = []
            for k in self.software! {
                tmp.append(k.toMap())
            }
            map["Software"] = tmp
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
        if dict.keys.contains("Software") && dict["Software"] != nil {
            var tmp : [ListSoftwareForUserDeviceResponseBody.Software] = []
            for v in dict["Software"] as! [Any] {
                var model = ListSoftwareForUserDeviceResponseBody.Software()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.software = tmp
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class ListSoftwareForUserDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSoftwareForUserDeviceResponseBody?

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
            var model = ListSoftwareForUserDeviceResponseBody()
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

public class ListUserDevicesRequest : Tea.TeaModel {
    public var appStatuses: [String]?

    public var currentPage: Int64?

    public var department: String?

    public var deviceBelong: String?

    public var deviceStatuses: [String]?

    public var deviceTags: [String]?

    public var deviceTypes: [String]?

    public var dlpStatuses: [String]?

    public var hostname: String?

    public var iaStatuses: [String]?

    public var mac: String?

    public var nacStatuses: [String]?

    public var paStatuses: [String]?

    public var pageSize: Int64?

    public var saseUserId: String?

    public var sharingStatus: Bool?

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
        if self.appStatuses != nil {
            map["AppStatuses"] = self.appStatuses!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.deviceBelong != nil {
            map["DeviceBelong"] = self.deviceBelong!
        }
        if self.deviceStatuses != nil {
            map["DeviceStatuses"] = self.deviceStatuses!
        }
        if self.deviceTags != nil {
            map["DeviceTags"] = self.deviceTags!
        }
        if self.deviceTypes != nil {
            map["DeviceTypes"] = self.deviceTypes!
        }
        if self.dlpStatuses != nil {
            map["DlpStatuses"] = self.dlpStatuses!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.iaStatuses != nil {
            map["IaStatuses"] = self.iaStatuses!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.nacStatuses != nil {
            map["NacStatuses"] = self.nacStatuses!
        }
        if self.paStatuses != nil {
            map["PaStatuses"] = self.paStatuses!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.saseUserId != nil {
            map["SaseUserId"] = self.saseUserId!
        }
        if self.sharingStatus != nil {
            map["SharingStatus"] = self.sharingStatus!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppStatuses") && dict["AppStatuses"] != nil {
            self.appStatuses = dict["AppStatuses"] as! [String]
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Department") && dict["Department"] != nil {
            self.department = dict["Department"] as! String
        }
        if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
            self.deviceBelong = dict["DeviceBelong"] as! String
        }
        if dict.keys.contains("DeviceStatuses") && dict["DeviceStatuses"] != nil {
            self.deviceStatuses = dict["DeviceStatuses"] as! [String]
        }
        if dict.keys.contains("DeviceTags") && dict["DeviceTags"] != nil {
            self.deviceTags = dict["DeviceTags"] as! [String]
        }
        if dict.keys.contains("DeviceTypes") && dict["DeviceTypes"] != nil {
            self.deviceTypes = dict["DeviceTypes"] as! [String]
        }
        if dict.keys.contains("DlpStatuses") && dict["DlpStatuses"] != nil {
            self.dlpStatuses = dict["DlpStatuses"] as! [String]
        }
        if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("IaStatuses") && dict["IaStatuses"] != nil {
            self.iaStatuses = dict["IaStatuses"] as! [String]
        }
        if dict.keys.contains("Mac") && dict["Mac"] != nil {
            self.mac = dict["Mac"] as! String
        }
        if dict.keys.contains("NacStatuses") && dict["NacStatuses"] != nil {
            self.nacStatuses = dict["NacStatuses"] as! [String]
        }
        if dict.keys.contains("PaStatuses") && dict["PaStatuses"] != nil {
            self.paStatuses = dict["PaStatuses"] as! [String]
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SaseUserId") && dict["SaseUserId"] != nil {
            self.saseUserId = dict["SaseUserId"] as! String
        }
        if dict.keys.contains("SharingStatus") && dict["SharingStatus"] != nil {
            self.sharingStatus = dict["SharingStatus"] as! Bool
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class ListUserDevicesResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var appStatus: String?

        public var appVersion: String?

        public var CPU: String?

        public var createTime: String?

        public var department: String?

        public var deviceBelong: String?

        public var deviceModel: String?

        public var deviceStatus: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var deviceVersion: String?

        public var disk: String?

        public var dlpStatus: String?

        public var hostname: String?

        public var iaStatus: String?

        public var innerIP: String?

        public var mac: String?

        public var memory: String?

        public var nacStatus: String?

        public var paStatus: String?

        public var saseUserId: String?

        public var sharingStatus: Bool?

        public var srcIP: String?

        public var updateTime: String?

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
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.deviceVersion != nil {
                map["DeviceVersion"] = self.deviceVersion!
            }
            if self.disk != nil {
                map["Disk"] = self.disk!
            }
            if self.dlpStatus != nil {
                map["DlpStatus"] = self.dlpStatus!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.iaStatus != nil {
                map["IaStatus"] = self.iaStatus!
            }
            if self.innerIP != nil {
                map["InnerIP"] = self.innerIP!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nacStatus != nil {
                map["NacStatus"] = self.nacStatus!
            }
            if self.paStatus != nil {
                map["PaStatus"] = self.paStatus!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.sharingStatus != nil {
                map["SharingStatus"] = self.sharingStatus!
            }
            if self.srcIP != nil {
                map["SrcIP"] = self.srcIP!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CPU") && dict["CPU"] != nil {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") && dict["Department"] != nil {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("DeviceModel") && dict["DeviceModel"] != nil {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceStatus") && dict["DeviceStatus"] != nil {
                self.deviceStatus = dict["DeviceStatus"] as! String
            }
            if dict.keys.contains("DeviceTag") && dict["DeviceTag"] != nil {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("DeviceVersion") && dict["DeviceVersion"] != nil {
                self.deviceVersion = dict["DeviceVersion"] as! String
            }
            if dict.keys.contains("Disk") && dict["Disk"] != nil {
                self.disk = dict["Disk"] as! String
            }
            if dict.keys.contains("DlpStatus") && dict["DlpStatus"] != nil {
                self.dlpStatus = dict["DlpStatus"] as! String
            }
            if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IaStatus") && dict["IaStatus"] != nil {
                self.iaStatus = dict["IaStatus"] as! String
            }
            if dict.keys.contains("InnerIP") && dict["InnerIP"] != nil {
                self.innerIP = dict["InnerIP"] as! String
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Memory") && dict["Memory"] != nil {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("NacStatus") && dict["NacStatus"] != nil {
                self.nacStatus = dict["NacStatus"] as! String
            }
            if dict.keys.contains("PaStatus") && dict["PaStatus"] != nil {
                self.paStatus = dict["PaStatus"] as! String
            }
            if dict.keys.contains("SaseUserId") && dict["SaseUserId"] != nil {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("SharingStatus") && dict["SharingStatus"] != nil {
                self.sharingStatus = dict["SharingStatus"] as! Bool
            }
            if dict.keys.contains("SrcIP") && dict["SrcIP"] != nil {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Username") && dict["Username"] != nil {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var devices: [ListUserDevicesResponseBody.Devices]?

    public var requestId: String?

    public var totalNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
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
        if dict.keys.contains("Devices") && dict["Devices"] != nil {
            var tmp : [ListUserDevicesResponseBody.Devices] = []
            for v in dict["Devices"] as! [Any] {
                var model = ListUserDevicesResponseBody.Devices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.devices = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
            self.totalNum = dict["TotalNum"] as! Int64
        }
    }
}

public class ListUserDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserDevicesResponseBody?

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
            var model = ListUserDevicesResponseBody()
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

public class ListUserGroupsForRegistrationPolicyRequest : Tea.TeaModel {
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

public class ListUserGroupsForRegistrationPolicyResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
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
            public var attributes: [ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups.Attributes]?

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
                    var tmp : [ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups.Attributes] = []
                    for v in dict["Attributes"] as! [Any] {
                        var model = ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups.Attributes()
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

        public var userGroups: [ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups]?

        public override init() {
            super.init()
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
                var tmp : [ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups] = []
                for v in dict["UserGroups"] as! [Any] {
                    var model = ListUserGroupsForRegistrationPolicyResponseBody.Policies.UserGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userGroups = tmp
            }
        }
    }
    public var policies: [ListUserGroupsForRegistrationPolicyResponseBody.Policies]?

    public var requestId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") && dict["Policies"] != nil {
            var tmp : [ListUserGroupsForRegistrationPolicyResponseBody.Policies] = []
            for v in dict["Policies"] as! [Any] {
                var model = ListUserGroupsForRegistrationPolicyResponseBody.Policies()
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
    }
}

public class ListUserGroupsForRegistrationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserGroupsForRegistrationPolicyResponseBody?

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
            var model = ListUserGroupsForRegistrationPolicyResponseBody()
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

public class UpdateExcessiveDeviceRegistrationApplicationsStatusRequest : Tea.TeaModel {
    public var applicationIds: [String]?

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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationIds") && dict["ApplicationIds"] != nil {
            self.applicationIds = dict["ApplicationIds"] as! [String]
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public var applicationId: String?

        public var createTime: String?

        public var department: String?

        public var description_: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var hostname: String?

        public var isUsed: Bool?

        public var mac: String?

        public var saseUserId: String?

        public var status: String?

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
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.isUsed != nil {
                map["IsUsed"] = self.isUsed!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") && dict["Department"] != nil {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DeviceTag") && dict["DeviceTag"] != nil {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IsUsed") && dict["IsUsed"] != nil {
                self.isUsed = dict["IsUsed"] as! Bool
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("SaseUserId") && dict["SaseUserId"] != nil {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Username") && dict["Username"] != nil {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var applications: [UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody.Applications]?

    public var requestId: String?

    public override init() {
        super.init()
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
            var tmp : [UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody.Applications] = []
            for v in dict["Applications"] as! [Any] {
                var model = UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody.Applications()
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

public class UpdateExcessiveDeviceRegistrationApplicationsStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody?

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
            var model = UpdateExcessiveDeviceRegistrationApplicationsStatusResponseBody()
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

public class UpdateRegistrationPolicyRequest : Tea.TeaModel {
    public class CompanyLimitCount : Tea.TeaModel {
        public var all: Int32?

        public var mobile: Int32?

        public var PC: Int32?

        public override init() {
            super.init()
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
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.PC != nil {
                map["PC"] = self.PC!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                self.all = dict["All"] as! Int32
            }
            if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                self.mobile = dict["Mobile"] as! Int32
            }
            if dict.keys.contains("PC") && dict["PC"] != nil {
                self.PC = dict["PC"] as! Int32
            }
        }
    }
    public class PersonalLimitCount : Tea.TeaModel {
        public var all: Int32?

        public var mobile: Int32?

        public var PC: Int32?

        public override init() {
            super.init()
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
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.PC != nil {
                map["PC"] = self.PC!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                self.all = dict["All"] as! Int32
            }
            if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                self.mobile = dict["Mobile"] as! Int32
            }
            if dict.keys.contains("PC") && dict["PC"] != nil {
                self.PC = dict["PC"] as! Int32
            }
        }
    }
    public var companyLimitCount: UpdateRegistrationPolicyRequest.CompanyLimitCount?

    public var companyLimitType: String?

    public var description_: String?

    public var matchMode: String?

    public var name: String?

    public var personalLimitCount: UpdateRegistrationPolicyRequest.PersonalLimitCount?

    public var personalLimitType: String?

    public var policyId: String?

    public var priority: Int64?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.companyLimitCount?.validate()
        try self.personalLimitCount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyLimitCount != nil {
            map["CompanyLimitCount"] = self.companyLimitCount?.toMap()
        }
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.personalLimitCount != nil {
            map["PersonalLimitCount"] = self.personalLimitCount?.toMap()
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
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
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitCount") && dict["CompanyLimitCount"] != nil {
            var model = UpdateRegistrationPolicyRequest.CompanyLimitCount()
            model.fromMap(dict["CompanyLimitCount"] as! [String: Any])
            self.companyLimitCount = model
        }
        if dict.keys.contains("CompanyLimitType") && dict["CompanyLimitType"] != nil {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PersonalLimitCount") && dict["PersonalLimitCount"] != nil {
            var model = UpdateRegistrationPolicyRequest.PersonalLimitCount()
            model.fromMap(dict["PersonalLimitCount"] as! [String: Any])
            self.personalLimitCount = model
        }
        if dict.keys.contains("PersonalLimitType") && dict["PersonalLimitType"] != nil {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class UpdateRegistrationPolicyShrinkRequest : Tea.TeaModel {
    public var companyLimitCountShrink: String?

    public var companyLimitType: String?

    public var description_: String?

    public var matchMode: String?

    public var name: String?

    public var personalLimitCountShrink: String?

    public var personalLimitType: String?

    public var policyId: String?

    public var priority: Int64?

    public var status: String?

    public var userGroupIds: [String]?

    public var whitelist: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyLimitCountShrink != nil {
            map["CompanyLimitCount"] = self.companyLimitCountShrink!
        }
        if self.companyLimitType != nil {
            map["CompanyLimitType"] = self.companyLimitType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.personalLimitCountShrink != nil {
            map["PersonalLimitCount"] = self.personalLimitCountShrink!
        }
        if self.personalLimitType != nil {
            map["PersonalLimitType"] = self.personalLimitType!
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
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyLimitCount") && dict["CompanyLimitCount"] != nil {
            self.companyLimitCountShrink = dict["CompanyLimitCount"] as! String
        }
        if dict.keys.contains("CompanyLimitType") && dict["CompanyLimitType"] != nil {
            self.companyLimitType = dict["CompanyLimitType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PersonalLimitCount") && dict["PersonalLimitCount"] != nil {
            self.personalLimitCountShrink = dict["PersonalLimitCount"] as! String
        }
        if dict.keys.contains("PersonalLimitType") && dict["PersonalLimitType"] != nil {
            self.personalLimitType = dict["PersonalLimitType"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! [String]
        }
        if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
            self.whitelist = dict["Whitelist"] as! [String]
        }
    }
}

public class UpdateRegistrationPolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class LimitDetail : Tea.TeaModel {
            public class LimitCount : Tea.TeaModel {
                public var all: Int32?

                public var mobile: Int32?

                public var PC: Int32?

                public override init() {
                    super.init()
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
                    if self.mobile != nil {
                        map["Mobile"] = self.mobile!
                    }
                    if self.PC != nil {
                        map["PC"] = self.PC!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("All") && dict["All"] != nil {
                        self.all = dict["All"] as! Int32
                    }
                    if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                        self.mobile = dict["Mobile"] as! Int32
                    }
                    if dict.keys.contains("PC") && dict["PC"] != nil {
                        self.PC = dict["PC"] as! Int32
                    }
                }
            }
            public var deviceBelong: String?

            public var limitCount: UpdateRegistrationPolicyResponseBody.Policy.LimitDetail.LimitCount?

            public var limitType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.limitCount?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceBelong != nil {
                    map["DeviceBelong"] = self.deviceBelong!
                }
                if self.limitCount != nil {
                    map["LimitCount"] = self.limitCount?.toMap()
                }
                if self.limitType != nil {
                    map["LimitType"] = self.limitType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
                    self.deviceBelong = dict["DeviceBelong"] as! String
                }
                if dict.keys.contains("LimitCount") && dict["LimitCount"] != nil {
                    var model = UpdateRegistrationPolicyResponseBody.Policy.LimitDetail.LimitCount()
                    model.fromMap(dict["LimitCount"] as! [String: Any])
                    self.limitCount = model
                }
                if dict.keys.contains("LimitType") && dict["LimitType"] != nil {
                    self.limitType = dict["LimitType"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var limitDetail: [UpdateRegistrationPolicyResponseBody.Policy.LimitDetail]?

        public var matchMode: String?

        public var name: String?

        public var policyId: String?

        public var priority: String?

        public var status: String?

        public var userGroupIds: [String]?

        public var whitelist: [String]?

        public override init() {
            super.init()
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
            if self.limitDetail != nil {
                var tmp : [Any] = []
                for k in self.limitDetail! {
                    tmp.append(k.toMap())
                }
                map["LimitDetail"] = tmp
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.name != nil {
                map["Name"] = self.name!
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
            if self.userGroupIds != nil {
                map["UserGroupIds"] = self.userGroupIds!
            }
            if self.whitelist != nil {
                map["Whitelist"] = self.whitelist!
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
            if dict.keys.contains("LimitDetail") && dict["LimitDetail"] != nil {
                var tmp : [UpdateRegistrationPolicyResponseBody.Policy.LimitDetail] = []
                for v in dict["LimitDetail"] as! [Any] {
                    var model = UpdateRegistrationPolicyResponseBody.Policy.LimitDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.limitDetail = tmp
            }
            if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
                self.matchMode = dict["MatchMode"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
                self.userGroupIds = dict["UserGroupIds"] as! [String]
            }
            if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
                self.whitelist = dict["Whitelist"] as! [String]
            }
        }
    }
    public var policy: UpdateRegistrationPolicyResponseBody.Policy?

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
            var model = UpdateRegistrationPolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateRegistrationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRegistrationPolicyResponseBody?

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
            var model = UpdateRegistrationPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserDevicesSharingStatusRequest : Tea.TeaModel {
    public var deviceTags: [String]?

    public var sharingStatus: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceTags != nil {
            map["DeviceTags"] = self.deviceTags!
        }
        if self.sharingStatus != nil {
            map["SharingStatus"] = self.sharingStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceTags") && dict["DeviceTags"] != nil {
            self.deviceTags = dict["DeviceTags"] as! [String]
        }
        if dict.keys.contains("SharingStatus") && dict["SharingStatus"] != nil {
            self.sharingStatus = dict["SharingStatus"] as! Bool
        }
    }
}

public class UpdateUserDevicesSharingStatusResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var appStatus: String?

        public var appVersion: String?

        public var CPU: String?

        public var createTime: String?

        public var department: String?

        public var deviceBelong: String?

        public var deviceModel: String?

        public var deviceStatus: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var deviceVersion: String?

        public var disk: String?

        public var dlpStatus: String?

        public var hostname: String?

        public var iaStatus: String?

        public var innerIP: String?

        public var mac: String?

        public var memory: String?

        public var nacStatus: String?

        public var paStatus: String?

        public var saseUserId: String?

        public var sharingStatus: Bool?

        public var srcIP: String?

        public var updateTime: String?

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
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.deviceVersion != nil {
                map["DeviceVersion"] = self.deviceVersion!
            }
            if self.disk != nil {
                map["Disk"] = self.disk!
            }
            if self.dlpStatus != nil {
                map["DlpStatus"] = self.dlpStatus!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.iaStatus != nil {
                map["IaStatus"] = self.iaStatus!
            }
            if self.innerIP != nil {
                map["InnerIP"] = self.innerIP!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nacStatus != nil {
                map["NacStatus"] = self.nacStatus!
            }
            if self.paStatus != nil {
                map["PaStatus"] = self.paStatus!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.sharingStatus != nil {
                map["SharingStatus"] = self.sharingStatus!
            }
            if self.srcIP != nil {
                map["SrcIP"] = self.srcIP!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CPU") && dict["CPU"] != nil {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") && dict["Department"] != nil {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("DeviceModel") && dict["DeviceModel"] != nil {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceStatus") && dict["DeviceStatus"] != nil {
                self.deviceStatus = dict["DeviceStatus"] as! String
            }
            if dict.keys.contains("DeviceTag") && dict["DeviceTag"] != nil {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("DeviceVersion") && dict["DeviceVersion"] != nil {
                self.deviceVersion = dict["DeviceVersion"] as! String
            }
            if dict.keys.contains("Disk") && dict["Disk"] != nil {
                self.disk = dict["Disk"] as! String
            }
            if dict.keys.contains("DlpStatus") && dict["DlpStatus"] != nil {
                self.dlpStatus = dict["DlpStatus"] as! String
            }
            if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IaStatus") && dict["IaStatus"] != nil {
                self.iaStatus = dict["IaStatus"] as! String
            }
            if dict.keys.contains("InnerIP") && dict["InnerIP"] != nil {
                self.innerIP = dict["InnerIP"] as! String
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Memory") && dict["Memory"] != nil {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("NacStatus") && dict["NacStatus"] != nil {
                self.nacStatus = dict["NacStatus"] as! String
            }
            if dict.keys.contains("PaStatus") && dict["PaStatus"] != nil {
                self.paStatus = dict["PaStatus"] as! String
            }
            if dict.keys.contains("SaseUserId") && dict["SaseUserId"] != nil {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("SharingStatus") && dict["SharingStatus"] != nil {
                self.sharingStatus = dict["SharingStatus"] as! Bool
            }
            if dict.keys.contains("SrcIP") && dict["SrcIP"] != nil {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Username") && dict["Username"] != nil {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var devices: [UpdateUserDevicesSharingStatusResponseBody.Devices]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Devices") && dict["Devices"] != nil {
            var tmp : [UpdateUserDevicesSharingStatusResponseBody.Devices] = []
            for v in dict["Devices"] as! [Any] {
                var model = UpdateUserDevicesSharingStatusResponseBody.Devices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.devices = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateUserDevicesSharingStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserDevicesSharingStatusResponseBody?

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
            var model = UpdateUserDevicesSharingStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserDevicesStatusRequest : Tea.TeaModel {
    public var deviceAction: String?

    public var deviceTags: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceAction != nil {
            map["DeviceAction"] = self.deviceAction!
        }
        if self.deviceTags != nil {
            map["DeviceTags"] = self.deviceTags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceAction") && dict["DeviceAction"] != nil {
            self.deviceAction = dict["DeviceAction"] as! String
        }
        if dict.keys.contains("DeviceTags") && dict["DeviceTags"] != nil {
            self.deviceTags = dict["DeviceTags"] as! [String]
        }
    }
}

public class UpdateUserDevicesStatusResponseBody : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var appStatus: String?

        public var appVersion: String?

        public var CPU: String?

        public var createTime: String?

        public var department: String?

        public var deviceBelong: String?

        public var deviceModel: String?

        public var deviceStatus: String?

        public var deviceTag: String?

        public var deviceType: String?

        public var deviceVersion: String?

        public var disk: String?

        public var dlpStatus: String?

        public var hostname: String?

        public var iaStatus: String?

        public var innerIP: String?

        public var mac: String?

        public var memory: String?

        public var nacStatus: String?

        public var paStatus: String?

        public var saseUserId: String?

        public var sharingStatus: Bool?

        public var srcIP: String?

        public var updateTime: String?

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
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.deviceBelong != nil {
                map["DeviceBelong"] = self.deviceBelong!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.deviceStatus != nil {
                map["DeviceStatus"] = self.deviceStatus!
            }
            if self.deviceTag != nil {
                map["DeviceTag"] = self.deviceTag!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.deviceVersion != nil {
                map["DeviceVersion"] = self.deviceVersion!
            }
            if self.disk != nil {
                map["Disk"] = self.disk!
            }
            if self.dlpStatus != nil {
                map["DlpStatus"] = self.dlpStatus!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.iaStatus != nil {
                map["IaStatus"] = self.iaStatus!
            }
            if self.innerIP != nil {
                map["InnerIP"] = self.innerIP!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nacStatus != nil {
                map["NacStatus"] = self.nacStatus!
            }
            if self.paStatus != nil {
                map["PaStatus"] = self.paStatus!
            }
            if self.saseUserId != nil {
                map["SaseUserId"] = self.saseUserId!
            }
            if self.sharingStatus != nil {
                map["SharingStatus"] = self.sharingStatus!
            }
            if self.srcIP != nil {
                map["SrcIP"] = self.srcIP!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("CPU") && dict["CPU"] != nil {
                self.CPU = dict["CPU"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Department") && dict["Department"] != nil {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("DeviceBelong") && dict["DeviceBelong"] != nil {
                self.deviceBelong = dict["DeviceBelong"] as! String
            }
            if dict.keys.contains("DeviceModel") && dict["DeviceModel"] != nil {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("DeviceStatus") && dict["DeviceStatus"] != nil {
                self.deviceStatus = dict["DeviceStatus"] as! String
            }
            if dict.keys.contains("DeviceTag") && dict["DeviceTag"] != nil {
                self.deviceTag = dict["DeviceTag"] as! String
            }
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("DeviceVersion") && dict["DeviceVersion"] != nil {
                self.deviceVersion = dict["DeviceVersion"] as! String
            }
            if dict.keys.contains("Disk") && dict["Disk"] != nil {
                self.disk = dict["Disk"] as! String
            }
            if dict.keys.contains("DlpStatus") && dict["DlpStatus"] != nil {
                self.dlpStatus = dict["DlpStatus"] as! String
            }
            if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("IaStatus") && dict["IaStatus"] != nil {
                self.iaStatus = dict["IaStatus"] as! String
            }
            if dict.keys.contains("InnerIP") && dict["InnerIP"] != nil {
                self.innerIP = dict["InnerIP"] as! String
            }
            if dict.keys.contains("Mac") && dict["Mac"] != nil {
                self.mac = dict["Mac"] as! String
            }
            if dict.keys.contains("Memory") && dict["Memory"] != nil {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("NacStatus") && dict["NacStatus"] != nil {
                self.nacStatus = dict["NacStatus"] as! String
            }
            if dict.keys.contains("PaStatus") && dict["PaStatus"] != nil {
                self.paStatus = dict["PaStatus"] as! String
            }
            if dict.keys.contains("SaseUserId") && dict["SaseUserId"] != nil {
                self.saseUserId = dict["SaseUserId"] as! String
            }
            if dict.keys.contains("SharingStatus") && dict["SharingStatus"] != nil {
                self.sharingStatus = dict["SharingStatus"] as! Bool
            }
            if dict.keys.contains("SrcIP") && dict["SrcIP"] != nil {
                self.srcIP = dict["SrcIP"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Username") && dict["Username"] != nil {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var devices: [UpdateUserDevicesStatusResponseBody.Devices]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["Devices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Devices") && dict["Devices"] != nil {
            var tmp : [UpdateUserDevicesStatusResponseBody.Devices] = []
            for v in dict["Devices"] as! [Any] {
                var model = UpdateUserDevicesStatusResponseBody.Devices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.devices = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateUserDevicesStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserDevicesStatusResponseBody?

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
            var model = UpdateUserDevicesStatusResponseBody()
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
