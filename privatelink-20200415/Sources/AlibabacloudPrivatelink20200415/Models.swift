import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddUserToVpcEndpointServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var serviceId: String?

    public var userARN: String?

    public var userId: Int64?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userARN != nil {
            map["UserARN"] = self.userARN!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["UserARN"] as? String {
            self.userARN = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class AddUserToVpcEndpointServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AddUserToVpcEndpointServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserToVpcEndpointServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddUserToVpcEndpointServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddZoneToVpcEndpointRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var ipv6Address: String?

    public var regionId: String?

    public var vSwitchId: String?

    public var zoneId: String?

    public var ip: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.ipv6Address != nil {
            map["Ipv6Address"] = self.ipv6Address!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        if self.ip != nil {
            map["ip"] = self.ip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["Ipv6Address"] as? String {
            self.ipv6Address = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
        if let value = dict["ip"] as? String {
            self.ip = value
        }
    }
}

public class AddZoneToVpcEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AddZoneToVpcEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddZoneToVpcEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddZoneToVpcEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachResourceToVpcEndpointServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var resourceId: String?

    public var resourceType: String?

    public var serviceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class AttachResourceToVpcEndpointServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AttachResourceToVpcEndpointServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachResourceToVpcEndpointServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachResourceToVpcEndpointServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachSecurityGroupToVpcEndpointRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var regionId: String?

    public var securityGroupId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
    }
}

public class AttachSecurityGroupToVpcEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class AttachSecurityGroupToVpcEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachSecurityGroupToVpcEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachSecurityGroupToVpcEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
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

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckProductOpenResponseBody : Tea.TeaModel {
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckProductOpenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckProductOpenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckProductOpenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVpcEndpointRequest : Tea.TeaModel {
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
    public class Zone : Tea.TeaModel {
        public var ipv6Address: String?

        public var vSwitchId: String?

        public var zoneId: String?

        public var ip: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipv6Address != nil {
                map["Ipv6Address"] = self.ipv6Address!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            if self.ip != nil {
                map["ip"] = self.ip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ipv6Address"] as? String {
                self.ipv6Address = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
            if let value = dict["ip"] as? String {
                self.ip = value
            }
        }
    }
    public var addressIpVersion: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointDescription: String?

    public var endpointName: String?

    public var endpointType: String?

    public var policyDocument: String?

    public var protectedEnabled: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityGroupId: [String]?

    public var serviceId: String?

    public var serviceName: String?

    public var tag: [CreateVpcEndpointRequest.Tag]?

    public var vpcId: String?

    public var zone: [CreateVpcEndpointRequest.Zone]?

    public var zoneAffinityEnabled: Bool?

    public var zonePrivateIpAddressCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointDescription != nil {
            map["EndpointDescription"] = self.endpointDescription!
        }
        if self.endpointName != nil {
            map["EndpointName"] = self.endpointName!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.policyDocument != nil {
            map["PolicyDocument"] = self.policyDocument!
        }
        if self.protectedEnabled != nil {
            map["ProtectedEnabled"] = self.protectedEnabled!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zone != nil {
            var tmp : [Any] = []
            for k in self.zone! {
                tmp.append(k.toMap())
            }
            map["Zone"] = tmp
        }
        if self.zoneAffinityEnabled != nil {
            map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
        }
        if self.zonePrivateIpAddressCount != nil {
            map["ZonePrivateIpAddressCount"] = self.zonePrivateIpAddressCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointDescription"] as? String {
            self.endpointDescription = value
        }
        if let value = dict["EndpointName"] as? String {
            self.endpointName = value
        }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
        }
        if let value = dict["ProtectedEnabled"] as? Bool {
            self.protectedEnabled = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityGroupId"] as? [String] {
            self.securityGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateVpcEndpointRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateVpcEndpointRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["Zone"] as? [Any?] {
            var tmp : [CreateVpcEndpointRequest.Zone] = []
            for v in value {
                if v != nil {
                    var model = CreateVpcEndpointRequest.Zone()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zone = tmp
        }
        if let value = dict["ZoneAffinityEnabled"] as? Bool {
            self.zoneAffinityEnabled = value
        }
        if let value = dict["ZonePrivateIpAddressCount"] as? Int64 {
            self.zonePrivateIpAddressCount = value
        }
    }
}

public class CreateVpcEndpointResponseBody : Tea.TeaModel {
    public var addressIpVersion: String?

    public var bandwidth: Int64?

    public var connectionStatus: String?

    public var createTime: String?

    public var endpointBusinessStatus: String?

    public var endpointDescription: String?

    public var endpointDomain: String?

    public var endpointId: String?

    public var endpointName: String?

    public var endpointStatus: String?

    public var requestId: String?

    public var serviceId: String?

    public var serviceName: String?

    public var vpcId: String?

    public var zoneAffinityEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.connectionStatus != nil {
            map["ConnectionStatus"] = self.connectionStatus!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.endpointBusinessStatus != nil {
            map["EndpointBusinessStatus"] = self.endpointBusinessStatus!
        }
        if self.endpointDescription != nil {
            map["EndpointDescription"] = self.endpointDescription!
        }
        if self.endpointDomain != nil {
            map["EndpointDomain"] = self.endpointDomain!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.endpointName != nil {
            map["EndpointName"] = self.endpointName!
        }
        if self.endpointStatus != nil {
            map["EndpointStatus"] = self.endpointStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zoneAffinityEnabled != nil {
            map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["Bandwidth"] as? Int64 {
            self.bandwidth = value
        }
        if let value = dict["ConnectionStatus"] as? String {
            self.connectionStatus = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["EndpointBusinessStatus"] as? String {
            self.endpointBusinessStatus = value
        }
        if let value = dict["EndpointDescription"] as? String {
            self.endpointDescription = value
        }
        if let value = dict["EndpointDomain"] as? String {
            self.endpointDomain = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["EndpointName"] as? String {
            self.endpointName = value
        }
        if let value = dict["EndpointStatus"] as? String {
            self.endpointStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneAffinityEnabled"] as? Bool {
            self.zoneAffinityEnabled = value
        }
    }
}

public class CreateVpcEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVpcEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVpcEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVpcEndpointServiceRequest : Tea.TeaModel {
    public class Resource : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
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
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
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
    public var addressIpVersion: String?

    public var autoAcceptEnabled: Bool?

    public var clientToken: String?

    public var dryRun: Bool?

    public var payer: String?

    public var regionId: String?

    public var resource: [CreateVpcEndpointServiceRequest.Resource]?

    public var resourceGroupId: String?

    public var serviceDescription: String?

    public var serviceResourceType: String?

    public var serviceSupportIPv6: Bool?

    public var tag: [CreateVpcEndpointServiceRequest.Tag]?

    public var zoneAffinityEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.autoAcceptEnabled != nil {
            map["AutoAcceptEnabled"] = self.autoAcceptEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.payer != nil {
            map["Payer"] = self.payer!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            var tmp : [Any] = []
            for k in self.resource! {
                tmp.append(k.toMap())
            }
            map["Resource"] = tmp
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceDescription != nil {
            map["ServiceDescription"] = self.serviceDescription!
        }
        if self.serviceResourceType != nil {
            map["ServiceResourceType"] = self.serviceResourceType!
        }
        if self.serviceSupportIPv6 != nil {
            map["ServiceSupportIPv6"] = self.serviceSupportIPv6!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.zoneAffinityEnabled != nil {
            map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["AutoAcceptEnabled"] as? Bool {
            self.autoAcceptEnabled = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Payer"] as? String {
            self.payer = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Resource"] as? [Any?] {
            var tmp : [CreateVpcEndpointServiceRequest.Resource] = []
            for v in value {
                if v != nil {
                    var model = CreateVpcEndpointServiceRequest.Resource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resource = tmp
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceDescription"] as? String {
            self.serviceDescription = value
        }
        if let value = dict["ServiceResourceType"] as? String {
            self.serviceResourceType = value
        }
        if let value = dict["ServiceSupportIPv6"] as? Bool {
            self.serviceSupportIPv6 = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateVpcEndpointServiceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateVpcEndpointServiceRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["ZoneAffinityEnabled"] as? Bool {
            self.zoneAffinityEnabled = value
        }
    }
}

public class CreateVpcEndpointServiceResponseBody : Tea.TeaModel {
    public var addressIpVersion: String?

    public var autoAcceptEnabled: Bool?

    public var createTime: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var serviceBusinessStatus: String?

    public var serviceDescription: String?

    public var serviceDomain: String?

    public var serviceId: String?

    public var serviceName: String?

    public var serviceStatus: String?

    public var serviceSupportIPv6: Bool?

    public var zoneAffinityEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.autoAcceptEnabled != nil {
            map["AutoAcceptEnabled"] = self.autoAcceptEnabled!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceBusinessStatus != nil {
            map["ServiceBusinessStatus"] = self.serviceBusinessStatus!
        }
        if self.serviceDescription != nil {
            map["ServiceDescription"] = self.serviceDescription!
        }
        if self.serviceDomain != nil {
            map["ServiceDomain"] = self.serviceDomain!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.serviceSupportIPv6 != nil {
            map["ServiceSupportIPv6"] = self.serviceSupportIPv6!
        }
        if self.zoneAffinityEnabled != nil {
            map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["AutoAcceptEnabled"] as? Bool {
            self.autoAcceptEnabled = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceBusinessStatus"] as? String {
            self.serviceBusinessStatus = value
        }
        if let value = dict["ServiceDescription"] as? String {
            self.serviceDescription = value
        }
        if let value = dict["ServiceDomain"] as? String {
            self.serviceDomain = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["ServiceSupportIPv6"] as? Bool {
            self.serviceSupportIPv6 = value
        }
        if let value = dict["ZoneAffinityEnabled"] as? Bool {
            self.zoneAffinityEnabled = value
        }
    }
}

public class CreateVpcEndpointServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVpcEndpointServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVpcEndpointServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVpcEndpointRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteVpcEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteVpcEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVpcEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVpcEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVpcEndpointServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class DeleteVpcEndpointServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DeleteVpcEndpointServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVpcEndpointServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVpcEndpointServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var regionId: String?

    public var serviceResourceType: String?

    public override init() {
        super.init()
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
        if self.serviceResourceType != nil {
            map["ServiceResourceType"] = self.serviceResourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceResourceType"] as? String {
            self.serviceResourceType = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class ServiceResourceTypes : Tea.TeaModel {
                public var serviceResourceType: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serviceResourceType != nil {
                        map["ServiceResourceType"] = self.serviceResourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServiceResourceType"] as? [String] {
                        self.serviceResourceType = value
                    }
                }
            }
            public var localName: String?

            public var regionEndpoint: String?

            public var regionId: String?

            public var serviceResourceTypes: DescribeRegionsResponseBody.Regions.Region.ServiceResourceTypes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.serviceResourceTypes?.validate()
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
                if self.serviceResourceTypes != nil {
                    map["ServiceResourceTypes"] = self.serviceResourceTypes?.toMap()
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
                if let value = dict["ServiceResourceTypes"] as? [String: Any?] {
                    var model = DescribeRegionsResponseBody.Regions.Region.ServiceResourceTypes()
                    model.fromMap(value)
                    self.serviceResourceTypes = model
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

public class DescribeZonesRequest : Tea.TeaModel {
    public var regionId: String?

    public var serviceResourceType: String?

    public override init() {
        super.init()
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
        if self.serviceResourceType != nil {
            map["ServiceResourceType"] = self.serviceResourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceResourceType"] as? String {
            self.serviceResourceType = value
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public class Zone : Tea.TeaModel {
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

public class DetachResourceFromVpcEndpointServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var resourceId: String?

    public var resourceType: String?

    public var serviceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DetachResourceFromVpcEndpointServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DetachResourceFromVpcEndpointServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachResourceFromVpcEndpointServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachResourceFromVpcEndpointServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachSecurityGroupFromVpcEndpointRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var regionId: String?

    public var securityGroupId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
    }
}

public class DetachSecurityGroupFromVpcEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DetachSecurityGroupFromVpcEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachSecurityGroupFromVpcEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachSecurityGroupFromVpcEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableVpcEndpointConnectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var regionId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class DisableVpcEndpointConnectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableVpcEndpointConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableVpcEndpointConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableVpcEndpointConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableVpcEndpointZoneConnectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var regionId: String?

    public var replacedResource: Bool?

    public var serviceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replacedResource != nil {
            map["ReplacedResource"] = self.replacedResource!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplacedResource"] as? Bool {
            self.replacedResource = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DisableVpcEndpointZoneConnectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class DisableVpcEndpointZoneConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableVpcEndpointZoneConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableVpcEndpointZoneConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableVpcEndpointConnectionRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var regionId: String?

    public var serviceId: String?

    public var trafficControlMode: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.trafficControlMode != nil {
            map["TrafficControlMode"] = self.trafficControlMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["TrafficControlMode"] as? String {
            self.trafficControlMode = value
        }
    }
}

public class EnableVpcEndpointConnectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableVpcEndpointConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableVpcEndpointConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableVpcEndpointConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableVpcEndpointZoneConnectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var regionId: String?

    public var serviceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class EnableVpcEndpointZoneConnectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class EnableVpcEndpointZoneConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableVpcEndpointZoneConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableVpcEndpointZoneConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVpcEndpointAttributeRequest : Tea.TeaModel {
    public var endpointId: String?

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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetVpcEndpointAttributeResponseBody : Tea.TeaModel {
    public var addressIpVersion: String?

    public var bandwidth: Int32?

    public var connectionStatus: String?

    public var createTime: String?

    public var endpointBusinessStatus: String?

    public var endpointDescription: String?

    public var endpointDomain: String?

    public var endpointId: String?

    public var endpointName: String?

    public var endpointStatus: String?

    public var endpointType: String?

    public var payer: String?

    public var policyDocument: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var resourceOwner: Bool?

    public var serviceId: String?

    public var serviceName: String?

    public var vpcId: String?

    public var zoneAffinityEnabled: Bool?

    public var zonePrivateIpAddressCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.connectionStatus != nil {
            map["ConnectionStatus"] = self.connectionStatus!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.endpointBusinessStatus != nil {
            map["EndpointBusinessStatus"] = self.endpointBusinessStatus!
        }
        if self.endpointDescription != nil {
            map["EndpointDescription"] = self.endpointDescription!
        }
        if self.endpointDomain != nil {
            map["EndpointDomain"] = self.endpointDomain!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.endpointName != nil {
            map["EndpointName"] = self.endpointName!
        }
        if self.endpointStatus != nil {
            map["EndpointStatus"] = self.endpointStatus!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
        }
        if self.payer != nil {
            map["Payer"] = self.payer!
        }
        if self.policyDocument != nil {
            map["PolicyDocument"] = self.policyDocument!
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
        if self.resourceOwner != nil {
            map["ResourceOwner"] = self.resourceOwner!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zoneAffinityEnabled != nil {
            map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
        }
        if self.zonePrivateIpAddressCount != nil {
            map["ZonePrivateIpAddressCount"] = self.zonePrivateIpAddressCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ConnectionStatus"] as? String {
            self.connectionStatus = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["EndpointBusinessStatus"] as? String {
            self.endpointBusinessStatus = value
        }
        if let value = dict["EndpointDescription"] as? String {
            self.endpointDescription = value
        }
        if let value = dict["EndpointDomain"] as? String {
            self.endpointDomain = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["EndpointName"] as? String {
            self.endpointName = value
        }
        if let value = dict["EndpointStatus"] as? String {
            self.endpointStatus = value
        }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
        }
        if let value = dict["Payer"] as? String {
            self.payer = value
        }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
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
        if let value = dict["ResourceOwner"] as? Bool {
            self.resourceOwner = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneAffinityEnabled"] as? Bool {
            self.zoneAffinityEnabled = value
        }
        if let value = dict["ZonePrivateIpAddressCount"] as? Int64 {
            self.zonePrivateIpAddressCount = value
        }
    }
}

public class GetVpcEndpointAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVpcEndpointAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVpcEndpointAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVpcEndpointServiceAttributeRequest : Tea.TeaModel {
    public var regionId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class GetVpcEndpointServiceAttributeResponseBody : Tea.TeaModel {
    public var addressIpVersion: String?

    public var autoAcceptEnabled: Bool?

    public var connectBandwidth: Int32?

    public var createTime: String?

    public var maxBandwidth: Int32?

    public var minBandwidth: Int32?

    public var payer: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var serviceBusinessStatus: String?

    public var serviceDescription: String?

    public var serviceDomain: String?

    public var serviceId: String?

    public var serviceName: String?

    public var serviceResourceType: String?

    public var serviceStatus: String?

    public var serviceSupportIPv6: Bool?

    public var serviceType: String?

    public var zoneAffinityEnabled: Bool?

    public var zones: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.autoAcceptEnabled != nil {
            map["AutoAcceptEnabled"] = self.autoAcceptEnabled!
        }
        if self.connectBandwidth != nil {
            map["ConnectBandwidth"] = self.connectBandwidth!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.maxBandwidth != nil {
            map["MaxBandwidth"] = self.maxBandwidth!
        }
        if self.minBandwidth != nil {
            map["MinBandwidth"] = self.minBandwidth!
        }
        if self.payer != nil {
            map["Payer"] = self.payer!
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
        if self.serviceBusinessStatus != nil {
            map["ServiceBusinessStatus"] = self.serviceBusinessStatus!
        }
        if self.serviceDescription != nil {
            map["ServiceDescription"] = self.serviceDescription!
        }
        if self.serviceDomain != nil {
            map["ServiceDomain"] = self.serviceDomain!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceResourceType != nil {
            map["ServiceResourceType"] = self.serviceResourceType!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.serviceSupportIPv6 != nil {
            map["ServiceSupportIPv6"] = self.serviceSupportIPv6!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.zoneAffinityEnabled != nil {
            map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
        }
        if self.zones != nil {
            map["Zones"] = self.zones!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["AutoAcceptEnabled"] as? Bool {
            self.autoAcceptEnabled = value
        }
        if let value = dict["ConnectBandwidth"] as? Int32 {
            self.connectBandwidth = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["MaxBandwidth"] as? Int32 {
            self.maxBandwidth = value
        }
        if let value = dict["MinBandwidth"] as? Int32 {
            self.minBandwidth = value
        }
        if let value = dict["Payer"] as? String {
            self.payer = value
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
        if let value = dict["ServiceBusinessStatus"] as? String {
            self.serviceBusinessStatus = value
        }
        if let value = dict["ServiceDescription"] as? String {
            self.serviceDescription = value
        }
        if let value = dict["ServiceDomain"] as? String {
            self.serviceDomain = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceResourceType"] as? String {
            self.serviceResourceType = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["ServiceSupportIPv6"] as? Bool {
            self.serviceSupportIPv6 = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ZoneAffinityEnabled"] as? Bool {
            self.zoneAffinityEnabled = value
        }
        if let value = dict["Zones"] as? [String] {
            self.zones = value
        }
    }
}

public class GetVpcEndpointServiceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVpcEndpointServiceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVpcEndpointServiceAttributeResponseBody()
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
    public var clientToken: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

public class ListVpcEndpointConnectionsRequest : Tea.TeaModel {
    public var connectionStatus: String?

    public var endpointId: String?

    public var endpointOwnerId: Int64?

    public var eniId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var replacedResourceId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.endpointOwnerId != nil {
            map["EndpointOwnerId"] = self.endpointOwnerId!
        }
        if self.eniId != nil {
            map["EniId"] = self.eniId!
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
        if self.replacedResourceId != nil {
            map["ReplacedResourceId"] = self.replacedResourceId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectionStatus"] as? String {
            self.connectionStatus = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["EndpointOwnerId"] as? Int64 {
            self.endpointOwnerId = value
        }
        if let value = dict["EniId"] as? String {
            self.eniId = value
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
        if let value = dict["ReplacedResourceId"] as? String {
            self.replacedResourceId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class ListVpcEndpointConnectionsResponseBody : Tea.TeaModel {
    public class Connections : Tea.TeaModel {
        public class Zones : Tea.TeaModel {
            public var eniId: String?

            public var replacedEniId: String?

            public var replacedResourceId: String?

            public var resourceId: String?

            public var vSwitchId: String?

            public var zoneDomain: String?

            public var zoneId: String?

            public var zoneStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eniId != nil {
                    map["EniId"] = self.eniId!
                }
                if self.replacedEniId != nil {
                    map["ReplacedEniId"] = self.replacedEniId!
                }
                if self.replacedResourceId != nil {
                    map["ReplacedResourceId"] = self.replacedResourceId!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.zoneDomain != nil {
                    map["ZoneDomain"] = self.zoneDomain!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                if self.zoneStatus != nil {
                    map["ZoneStatus"] = self.zoneStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EniId"] as? String {
                    self.eniId = value
                }
                if let value = dict["ReplacedEniId"] as? String {
                    self.replacedEniId = value
                }
                if let value = dict["ReplacedResourceId"] as? String {
                    self.replacedResourceId = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["ZoneDomain"] as? String {
                    self.zoneDomain = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
                if let value = dict["ZoneStatus"] as? String {
                    self.zoneStatus = value
                }
            }
        }
        public var bandwidth: Int32?

        public var connectionStatus: String?

        public var endpointId: String?

        public var endpointOwnerId: Int64?

        public var endpointVpcId: String?

        public var modifiedTime: String?

        public var resourceGroupId: String?

        public var resourceOwner: Bool?

        public var serviceId: String?

        public var trafficControlMode: String?

        public var zones: [ListVpcEndpointConnectionsResponseBody.Connections.Zones]?

        public override init() {
            super.init()
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
            if self.connectionStatus != nil {
                map["ConnectionStatus"] = self.connectionStatus!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointOwnerId != nil {
                map["EndpointOwnerId"] = self.endpointOwnerId!
            }
            if self.endpointVpcId != nil {
                map["EndpointVpcId"] = self.endpointVpcId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceOwner != nil {
                map["ResourceOwner"] = self.resourceOwner!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.trafficControlMode != nil {
                map["TrafficControlMode"] = self.trafficControlMode!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["ConnectionStatus"] as? String {
                self.connectionStatus = value
            }
            if let value = dict["EndpointId"] as? String {
                self.endpointId = value
            }
            if let value = dict["EndpointOwnerId"] as? Int64 {
                self.endpointOwnerId = value
            }
            if let value = dict["EndpointVpcId"] as? String {
                self.endpointVpcId = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceOwner"] as? Bool {
                self.resourceOwner = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["TrafficControlMode"] as? String {
                self.trafficControlMode = value
            }
            if let value = dict["Zones"] as? [Any?] {
                var tmp : [ListVpcEndpointConnectionsResponseBody.Connections.Zones] = []
                for v in value {
                    if v != nil {
                        var model = ListVpcEndpointConnectionsResponseBody.Connections.Zones()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zones = tmp
            }
        }
    }
    public var connections: [ListVpcEndpointConnectionsResponseBody.Connections]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connections != nil {
            var tmp : [Any] = []
            for k in self.connections! {
                tmp.append(k.toMap())
            }
            map["Connections"] = tmp
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
        if let value = dict["Connections"] as? [Any?] {
            var tmp : [ListVpcEndpointConnectionsResponseBody.Connections] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointConnectionsResponseBody.Connections()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.connections = tmp
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
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListVpcEndpointConnectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcEndpointConnectionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpcEndpointConnectionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpcEndpointSecurityGroupsRequest : Tea.TeaModel {
    public var endpointId: String?

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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
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
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
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

public class ListVpcEndpointSecurityGroupsResponseBody : Tea.TeaModel {
    public class SecurityGroups : Tea.TeaModel {
        public var securityGroupId: String?

        public var securityGroupStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.securityGroupStatus != nil {
                map["SecurityGroupStatus"] = self.securityGroupStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["SecurityGroupStatus"] as? String {
                self.securityGroupStatus = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var securityGroups: [ListVpcEndpointSecurityGroupsResponseBody.SecurityGroups]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityGroups != nil {
            var tmp : [Any] = []
            for k in self.securityGroups! {
                tmp.append(k.toMap())
            }
            map["SecurityGroups"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityGroups"] as? [Any?] {
            var tmp : [ListVpcEndpointSecurityGroupsResponseBody.SecurityGroups] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointSecurityGroupsResponseBody.SecurityGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.securityGroups = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListVpcEndpointSecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcEndpointSecurityGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpcEndpointSecurityGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpcEndpointServiceResourcesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceId: String?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
    }
}

public class ListVpcEndpointServiceResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var autoAllocatedEnabled: Bool?

        public var ip: String?

        public var regionId: String?

        public var relatedDeprecatedEndpointCount: Int64?

        public var relatedEndpointCount: Int64?

        public var resourceId: String?

        public var resourceSupportIPv6: Bool?

        public var resourceType: String?

        public var vSwitchId: String?

        public var vpcId: String?

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
            if self.autoAllocatedEnabled != nil {
                map["AutoAllocatedEnabled"] = self.autoAllocatedEnabled!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.relatedDeprecatedEndpointCount != nil {
                map["RelatedDeprecatedEndpointCount"] = self.relatedDeprecatedEndpointCount!
            }
            if self.relatedEndpointCount != nil {
                map["RelatedEndpointCount"] = self.relatedEndpointCount!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceSupportIPv6 != nil {
                map["ResourceSupportIPv6"] = self.resourceSupportIPv6!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoAllocatedEnabled"] as? Bool {
                self.autoAllocatedEnabled = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RelatedDeprecatedEndpointCount"] as? Int64 {
                self.relatedDeprecatedEndpointCount = value
            }
            if let value = dict["RelatedEndpointCount"] as? Int64 {
                self.relatedEndpointCount = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceSupportIPv6"] as? Bool {
                self.resourceSupportIPv6 = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resources: [ListVpcEndpointServiceResourcesResponseBody.Resources]?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [ListVpcEndpointServiceResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointServiceResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
    }
}

public class ListVpcEndpointServiceResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcEndpointServiceResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpcEndpointServiceResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpcEndpointServiceUsersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var serviceId: String?

    public var userId: Int64?

    public var userListType: String?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userListType != nil {
            map["UserListType"] = self.userListType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
        if let value = dict["UserListType"] as? String {
            self.userListType = value
        }
    }
}

public class ListVpcEndpointServiceUsersResponseBody : Tea.TeaModel {
    public class UserARNs : Tea.TeaModel {
        public var userARN: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userARN != nil {
                map["UserARN"] = self.userARN!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UserARN"] as? String {
                self.userARN = value
            }
        }
    }
    public class Users : Tea.TeaModel {
        public var userId: Int64?

        public override init() {
            super.init()
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
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: String?

    public var userARNs: [ListVpcEndpointServiceUsersResponseBody.UserARNs]?

    public var users: [ListVpcEndpointServiceUsersResponseBody.Users]?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.userARNs != nil {
            var tmp : [Any] = []
            for k in self.userARNs! {
                tmp.append(k.toMap())
            }
            map["UserARNs"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
        if let value = dict["UserARNs"] as? [Any?] {
            var tmp : [ListVpcEndpointServiceUsersResponseBody.UserARNs] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointServiceUsersResponseBody.UserARNs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userARNs = tmp
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [ListVpcEndpointServiceUsersResponseBody.Users] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointServiceUsersResponseBody.Users()
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

public class ListVpcEndpointServiceUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcEndpointServiceUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpcEndpointServiceUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpcEndpointServicesRequest : Tea.TeaModel {
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
    public var addressIpVersion: String?

    public var autoAcceptEnabled: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var serviceBusinessStatus: String?

    public var serviceId: String?

    public var serviceName: String?

    public var serviceResourceType: String?

    public var serviceStatus: String?

    public var tag: [ListVpcEndpointServicesRequest.Tag]?

    public var zoneAffinityEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.autoAcceptEnabled != nil {
            map["AutoAcceptEnabled"] = self.autoAcceptEnabled!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.serviceBusinessStatus != nil {
            map["ServiceBusinessStatus"] = self.serviceBusinessStatus!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceResourceType != nil {
            map["ServiceResourceType"] = self.serviceResourceType!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.zoneAffinityEnabled != nil {
            map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["AutoAcceptEnabled"] as? Bool {
            self.autoAcceptEnabled = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ServiceBusinessStatus"] as? String {
            self.serviceBusinessStatus = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceResourceType"] as? String {
            self.serviceResourceType = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListVpcEndpointServicesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointServicesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["ZoneAffinityEnabled"] as? Bool {
            self.zoneAffinityEnabled = value
        }
    }
}

public class ListVpcEndpointServicesResponseBody : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var addressIpVersion: String?

        public var autoAcceptEnabled: Bool?

        public var connectBandwidth: Int32?

        public var createTime: String?

        public var maxBandwidth: Int32?

        public var minBandwidth: Int32?

        public var payer: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var serviceBusinessStatus: String?

        public var serviceDescription: String?

        public var serviceDomain: String?

        public var serviceId: String?

        public var serviceName: String?

        public var serviceResourceType: String?

        public var serviceStatus: String?

        public var serviceSupportIPv6: Bool?

        public var serviceType: String?

        public var tags: [ListVpcEndpointServicesResponseBody.Services.Tags]?

        public var zoneAffinityEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressIpVersion != nil {
                map["AddressIpVersion"] = self.addressIpVersion!
            }
            if self.autoAcceptEnabled != nil {
                map["AutoAcceptEnabled"] = self.autoAcceptEnabled!
            }
            if self.connectBandwidth != nil {
                map["ConnectBandwidth"] = self.connectBandwidth!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.maxBandwidth != nil {
                map["MaxBandwidth"] = self.maxBandwidth!
            }
            if self.minBandwidth != nil {
                map["MinBandwidth"] = self.minBandwidth!
            }
            if self.payer != nil {
                map["Payer"] = self.payer!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.serviceBusinessStatus != nil {
                map["ServiceBusinessStatus"] = self.serviceBusinessStatus!
            }
            if self.serviceDescription != nil {
                map["ServiceDescription"] = self.serviceDescription!
            }
            if self.serviceDomain != nil {
                map["ServiceDomain"] = self.serviceDomain!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceResourceType != nil {
                map["ServiceResourceType"] = self.serviceResourceType!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            if self.serviceSupportIPv6 != nil {
                map["ServiceSupportIPv6"] = self.serviceSupportIPv6!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.zoneAffinityEnabled != nil {
                map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressIpVersion"] as? String {
                self.addressIpVersion = value
            }
            if let value = dict["AutoAcceptEnabled"] as? Bool {
                self.autoAcceptEnabled = value
            }
            if let value = dict["ConnectBandwidth"] as? Int32 {
                self.connectBandwidth = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["MaxBandwidth"] as? Int32 {
                self.maxBandwidth = value
            }
            if let value = dict["MinBandwidth"] as? Int32 {
                self.minBandwidth = value
            }
            if let value = dict["Payer"] as? String {
                self.payer = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ServiceBusinessStatus"] as? String {
                self.serviceBusinessStatus = value
            }
            if let value = dict["ServiceDescription"] as? String {
                self.serviceDescription = value
            }
            if let value = dict["ServiceDomain"] as? String {
                self.serviceDomain = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["ServiceResourceType"] as? String {
                self.serviceResourceType = value
            }
            if let value = dict["ServiceStatus"] as? String {
                self.serviceStatus = value
            }
            if let value = dict["ServiceSupportIPv6"] as? Bool {
                self.serviceSupportIPv6 = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListVpcEndpointServicesResponseBody.Services.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListVpcEndpointServicesResponseBody.Services.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["ZoneAffinityEnabled"] as? Bool {
                self.zoneAffinityEnabled = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var services: [ListVpcEndpointServicesResponseBody.Services]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["Services"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Services"] as? [Any?] {
            var tmp : [ListVpcEndpointServicesResponseBody.Services] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointServicesResponseBody.Services()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListVpcEndpointServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcEndpointServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpcEndpointServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpcEndpointServicesByEndUserRequest : Tea.TeaModel {
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceId: String?

    public var serviceName: String?

    public var serviceType: String?

    public var tag: [ListVpcEndpointServicesByEndUserRequest.Tag]?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListVpcEndpointServicesByEndUserRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointServicesByEndUserRequest.Tag()
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

public class ListVpcEndpointServicesByEndUserResponseBody : Tea.TeaModel {
    public class Services : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var addressIpVersion: String?

        public var autoAcceptEnabled: Bool?

        public var payer: String?

        public var resourceGroupId: String?

        public var serviceDomain: String?

        public var serviceId: String?

        public var serviceName: String?

        public var serviceResourceType: String?

        public var serviceSupportIPv6: Bool?

        public var serviceType: String?

        public var tags: [ListVpcEndpointServicesByEndUserResponseBody.Services.Tags]?

        public var vpcEndpointPolicySupported: Bool?

        public var zoneAffinityEnabled: Bool?

        public var zones: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressIpVersion != nil {
                map["AddressIpVersion"] = self.addressIpVersion!
            }
            if self.autoAcceptEnabled != nil {
                map["AutoAcceptEnabled"] = self.autoAcceptEnabled!
            }
            if self.payer != nil {
                map["Payer"] = self.payer!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.serviceDomain != nil {
                map["ServiceDomain"] = self.serviceDomain!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceResourceType != nil {
                map["ServiceResourceType"] = self.serviceResourceType!
            }
            if self.serviceSupportIPv6 != nil {
                map["ServiceSupportIPv6"] = self.serviceSupportIPv6!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vpcEndpointPolicySupported != nil {
                map["VpcEndpointPolicySupported"] = self.vpcEndpointPolicySupported!
            }
            if self.zoneAffinityEnabled != nil {
                map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
            }
            if self.zones != nil {
                map["Zones"] = self.zones!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressIpVersion"] as? String {
                self.addressIpVersion = value
            }
            if let value = dict["AutoAcceptEnabled"] as? Bool {
                self.autoAcceptEnabled = value
            }
            if let value = dict["Payer"] as? String {
                self.payer = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ServiceDomain"] as? String {
                self.serviceDomain = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["ServiceResourceType"] as? String {
                self.serviceResourceType = value
            }
            if let value = dict["ServiceSupportIPv6"] as? Bool {
                self.serviceSupportIPv6 = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListVpcEndpointServicesByEndUserResponseBody.Services.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListVpcEndpointServicesByEndUserResponseBody.Services.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VpcEndpointPolicySupported"] as? Bool {
                self.vpcEndpointPolicySupported = value
            }
            if let value = dict["ZoneAffinityEnabled"] as? Bool {
                self.zoneAffinityEnabled = value
            }
            if let value = dict["Zones"] as? [String] {
                self.zones = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var services: [ListVpcEndpointServicesByEndUserResponseBody.Services]?

    public var totalCount: String?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["Services"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Services"] as? [Any?] {
            var tmp : [ListVpcEndpointServicesByEndUserResponseBody.Services] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointServicesByEndUserResponseBody.Services()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListVpcEndpointServicesByEndUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcEndpointServicesByEndUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpcEndpointServicesByEndUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpcEndpointZonesRequest : Tea.TeaModel {
    public var endpointId: String?

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
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
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
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
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

public class ListVpcEndpointZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public var eniId: String?

        public var eniIp: String?

        public var regionId: String?

        public var vSwitchId: String?

        public var zoneDomain: String?

        public var zoneId: String?

        public var zoneIpv6Address: String?

        public var zoneStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eniId != nil {
                map["EniId"] = self.eniId!
            }
            if self.eniIp != nil {
                map["EniIp"] = self.eniIp!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneDomain != nil {
                map["ZoneDomain"] = self.zoneDomain!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            if self.zoneIpv6Address != nil {
                map["ZoneIpv6Address"] = self.zoneIpv6Address!
            }
            if self.zoneStatus != nil {
                map["ZoneStatus"] = self.zoneStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EniId"] as? String {
                self.eniId = value
            }
            if let value = dict["EniIp"] as? String {
                self.eniIp = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneDomain"] as? String {
                self.zoneDomain = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
            if let value = dict["ZoneIpv6Address"] as? String {
                self.zoneIpv6Address = value
            }
            if let value = dict["ZoneStatus"] as? String {
                self.zoneStatus = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var zones: [ListVpcEndpointZonesResponseBody.Zones]?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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
        if let value = dict["Zones"] as? [Any?] {
            var tmp : [ListVpcEndpointZonesResponseBody.Zones] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointZonesResponseBody.Zones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zones = tmp
        }
    }
}

public class ListVpcEndpointZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcEndpointZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpcEndpointZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpcEndpointsRequest : Tea.TeaModel {
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
    public var addressIpVersion: String?

    public var connectionStatus: String?

    public var endpointId: String?

    public var endpointName: String?

    public var endpointStatus: String?

    public var endpointType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serviceName: String?

    public var tag: [ListVpcEndpointsRequest.Tag]?

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
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.connectionStatus != nil {
            map["ConnectionStatus"] = self.connectionStatus!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.endpointName != nil {
            map["EndpointName"] = self.endpointName!
        }
        if self.endpointStatus != nil {
            map["EndpointStatus"] = self.endpointStatus!
        }
        if self.endpointType != nil {
            map["EndpointType"] = self.endpointType!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["ConnectionStatus"] as? String {
            self.connectionStatus = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["EndpointName"] as? String {
            self.endpointName = value
        }
        if let value = dict["EndpointStatus"] as? String {
            self.endpointStatus = value
        }
        if let value = dict["EndpointType"] as? String {
            self.endpointType = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListVpcEndpointsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class ListVpcEndpointsResponseBody : Tea.TeaModel {
    public class Endpoints : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var addressIpVersion: String?

        public var bandwidth: Int64?

        public var connectionStatus: String?

        public var createTime: String?

        public var endpointBusinessStatus: String?

        public var endpointDescription: String?

        public var endpointDomain: String?

        public var endpointId: String?

        public var endpointName: String?

        public var endpointStatus: String?

        public var endpointType: String?

        public var policyDocument: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var resourceOwner: Bool?

        public var serviceId: String?

        public var serviceName: String?

        public var tags: [ListVpcEndpointsResponseBody.Endpoints.Tags]?

        public var vpcId: String?

        public var zoneAffinityEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressIpVersion != nil {
                map["AddressIpVersion"] = self.addressIpVersion!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.connectionStatus != nil {
                map["ConnectionStatus"] = self.connectionStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endpointBusinessStatus != nil {
                map["EndpointBusinessStatus"] = self.endpointBusinessStatus!
            }
            if self.endpointDescription != nil {
                map["EndpointDescription"] = self.endpointDescription!
            }
            if self.endpointDomain != nil {
                map["EndpointDomain"] = self.endpointDomain!
            }
            if self.endpointId != nil {
                map["EndpointId"] = self.endpointId!
            }
            if self.endpointName != nil {
                map["EndpointName"] = self.endpointName!
            }
            if self.endpointStatus != nil {
                map["EndpointStatus"] = self.endpointStatus!
            }
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceOwner != nil {
                map["ResourceOwner"] = self.resourceOwner!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneAffinityEnabled != nil {
                map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressIpVersion"] as? String {
                self.addressIpVersion = value
            }
            if let value = dict["Bandwidth"] as? Int64 {
                self.bandwidth = value
            }
            if let value = dict["ConnectionStatus"] as? String {
                self.connectionStatus = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EndpointBusinessStatus"] as? String {
                self.endpointBusinessStatus = value
            }
            if let value = dict["EndpointDescription"] as? String {
                self.endpointDescription = value
            }
            if let value = dict["EndpointDomain"] as? String {
                self.endpointDomain = value
            }
            if let value = dict["EndpointId"] as? String {
                self.endpointId = value
            }
            if let value = dict["EndpointName"] as? String {
                self.endpointName = value
            }
            if let value = dict["EndpointStatus"] as? String {
                self.endpointStatus = value
            }
            if let value = dict["EndpointType"] as? String {
                self.endpointType = value
            }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceOwner"] as? Bool {
                self.resourceOwner = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListVpcEndpointsResponseBody.Endpoints.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListVpcEndpointsResponseBody.Endpoints.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneAffinityEnabled"] as? Bool {
                self.zoneAffinityEnabled = value
            }
        }
    }
    public var endpoints: [ListVpcEndpointsResponseBody.Endpoints]?

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
        if self.endpoints != nil {
            var tmp : [Any] = []
            for k in self.endpoints! {
                tmp.append(k.toMap())
            }
            map["Endpoints"] = tmp
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
        if let value = dict["Endpoints"] as? [Any?] {
            var tmp : [ListVpcEndpointsResponseBody.Endpoints] = []
            for v in value {
                if v != nil {
                    var model = ListVpcEndpointsResponseBody.Endpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.endpoints = tmp
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

public class ListVpcEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpcEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpcEndpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenPrivateLinkServiceRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
    }
}

public class OpenPrivateLinkServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class OpenPrivateLinkServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenPrivateLinkServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenPrivateLinkServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveUserFromVpcEndpointServiceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var serviceId: String?

    public var userARN: String?

    public var userId: Int64?

    public override init() {
        super.init()
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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.userARN != nil {
            map["UserARN"] = self.userARN!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["UserARN"] as? String {
            self.userARN = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class RemoveUserFromVpcEndpointServiceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RemoveUserFromVpcEndpointServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserFromVpcEndpointServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveUserFromVpcEndpointServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveZoneFromVpcEndpointRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class RemoveZoneFromVpcEndpointResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class RemoveZoneFromVpcEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveZoneFromVpcEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveZoneFromVpcEndpointResponseBody()
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
    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
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

    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
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

public class UpdateVpcEndpointAttributeRequest : Tea.TeaModel {
    public var addressIpVersion: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointDescription: String?

    public var endpointId: String?

    public var endpointName: String?

    public var policyDocument: String?

    public var regionId: String?

    public var resetPolicy: Bool?

    public var zoneAffinityEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointDescription != nil {
            map["EndpointDescription"] = self.endpointDescription!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.endpointName != nil {
            map["EndpointName"] = self.endpointName!
        }
        if self.policyDocument != nil {
            map["PolicyDocument"] = self.policyDocument!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resetPolicy != nil {
            map["ResetPolicy"] = self.resetPolicy!
        }
        if self.zoneAffinityEnabled != nil {
            map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointDescription"] as? String {
            self.endpointDescription = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["EndpointName"] as? String {
            self.endpointName = value
        }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResetPolicy"] as? Bool {
            self.resetPolicy = value
        }
        if let value = dict["ZoneAffinityEnabled"] as? Bool {
            self.zoneAffinityEnabled = value
        }
    }
}

public class UpdateVpcEndpointAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateVpcEndpointAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVpcEndpointAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateVpcEndpointAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVpcEndpointConnectionAttributeRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var regionId: String?

    public var serviceId: String?

    public var trafficControlMode: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.trafficControlMode != nil {
            map["TrafficControlMode"] = self.trafficControlMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["TrafficControlMode"] as? String {
            self.trafficControlMode = value
        }
    }
}

public class UpdateVpcEndpointConnectionAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateVpcEndpointConnectionAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVpcEndpointConnectionAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateVpcEndpointConnectionAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVpcEndpointServiceAttributeRequest : Tea.TeaModel {
    public var addressIpVersion: String?

    public var autoAcceptEnabled: Bool?

    public var clientToken: String?

    public var connectBandwidth: Int32?

    public var dryRun: Bool?

    public var regionId: String?

    public var serviceDescription: String?

    public var serviceId: String?

    public var serviceSupportIPv6: Bool?

    public var zoneAffinityEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.autoAcceptEnabled != nil {
            map["AutoAcceptEnabled"] = self.autoAcceptEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectBandwidth != nil {
            map["ConnectBandwidth"] = self.connectBandwidth!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceDescription != nil {
            map["ServiceDescription"] = self.serviceDescription!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceSupportIPv6 != nil {
            map["ServiceSupportIPv6"] = self.serviceSupportIPv6!
        }
        if self.zoneAffinityEnabled != nil {
            map["ZoneAffinityEnabled"] = self.zoneAffinityEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["AutoAcceptEnabled"] as? Bool {
            self.autoAcceptEnabled = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConnectBandwidth"] as? Int32 {
            self.connectBandwidth = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceDescription"] as? String {
            self.serviceDescription = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceSupportIPv6"] as? Bool {
            self.serviceSupportIPv6 = value
        }
        if let value = dict["ZoneAffinityEnabled"] as? Bool {
            self.zoneAffinityEnabled = value
        }
    }
}

public class UpdateVpcEndpointServiceAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateVpcEndpointServiceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVpcEndpointServiceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateVpcEndpointServiceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVpcEndpointServiceResourceAttributeRequest : Tea.TeaModel {
    public var autoAllocatedEnabled: Bool?

    public var clientToken: String?

    public var dryRun: Bool?

    public var regionId: String?

    public var resourceId: String?

    public var serviceId: String?

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
        if self.autoAllocatedEnabled != nil {
            map["AutoAllocatedEnabled"] = self.autoAllocatedEnabled!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoAllocatedEnabled"] as? Bool {
            self.autoAllocatedEnabled = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class UpdateVpcEndpointServiceResourceAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateVpcEndpointServiceResourceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVpcEndpointServiceResourceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateVpcEndpointServiceResourceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVpcEndpointZoneConnectionResourceAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

    public var regionId: String?

    public var resourceAllocateMode: String?

    public var resourceId: String?

    public var resourceReplaceMode: String?

    public var resourceType: String?

    public var serviceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceAllocateMode != nil {
            map["ResourceAllocateMode"] = self.resourceAllocateMode!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceReplaceMode != nil {
            map["ResourceReplaceMode"] = self.resourceReplaceMode!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EndpointId"] as? String {
            self.endpointId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceAllocateMode"] as? String {
            self.resourceAllocateMode = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceReplaceMode"] as? String {
            self.resourceReplaceMode = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class UpdateVpcEndpointZoneConnectionResourceAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

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

public class UpdateVpcEndpointZoneConnectionResourceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVpcEndpointZoneConnectionResourceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateVpcEndpointZoneConnectionResourceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
