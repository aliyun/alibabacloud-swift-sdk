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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UserARN") && dict["UserARN"] != nil {
            self.userARN = dict["UserARN"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddUserToVpcEndpointServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddZoneToVpcEndpointRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
        if dict.keys.contains("ip") && dict["ip"] != nil {
            self.ip = dict["ip"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddZoneToVpcEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AttachResourceToVpcEndpointServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
            self.securityGroupId = dict["SecurityGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AttachSecurityGroupToVpcEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceRegionId: String?

    public override init() {
        super.init()
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
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceRegionId") && dict["ResourceRegionId"] != nil {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckProductOpenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Zone : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
            if dict.keys.contains("ip") && dict["ip"] != nil {
                self.ip = dict["ip"] as! String
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointDescription: String?

    public var endpointName: String?

    public var endpointType: String?

    public var protectedEnabled: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityGroupId: [String]?

    public var serviceId: String?

    public var serviceName: String?

    public var tag: [CreateVpcEndpointRequest.Tag]?

    public var vpcId: String?

    public var zone: [CreateVpcEndpointRequest.Zone]?

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
        if self.zonePrivateIpAddressCount != nil {
            map["ZonePrivateIpAddressCount"] = self.zonePrivateIpAddressCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointDescription") && dict["EndpointDescription"] != nil {
            self.endpointDescription = dict["EndpointDescription"] as! String
        }
        if dict.keys.contains("EndpointName") && dict["EndpointName"] != nil {
            self.endpointName = dict["EndpointName"] as! String
        }
        if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("ProtectedEnabled") && dict["ProtectedEnabled"] != nil {
            self.protectedEnabled = dict["ProtectedEnabled"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
            self.securityGroupId = dict["SecurityGroupId"] as! [String]
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateVpcEndpointRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateVpcEndpointRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("Zone") && dict["Zone"] != nil {
            var tmp : [CreateVpcEndpointRequest.Zone] = []
            for v in dict["Zone"] as! [Any] {
                var model = CreateVpcEndpointRequest.Zone()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.zone = tmp
        }
        if dict.keys.contains("ZonePrivateIpAddressCount") && dict["ZonePrivateIpAddressCount"] != nil {
            self.zonePrivateIpAddressCount = dict["ZonePrivateIpAddressCount"] as! Int64
        }
    }
}

public class CreateVpcEndpointResponseBody : Tea.TeaModel {
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
            self.connectionStatus = dict["ConnectionStatus"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("EndpointBusinessStatus") && dict["EndpointBusinessStatus"] != nil {
            self.endpointBusinessStatus = dict["EndpointBusinessStatus"] as! String
        }
        if dict.keys.contains("EndpointDescription") && dict["EndpointDescription"] != nil {
            self.endpointDescription = dict["EndpointDescription"] as! String
        }
        if dict.keys.contains("EndpointDomain") && dict["EndpointDomain"] != nil {
            self.endpointDomain = dict["EndpointDomain"] as! String
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("EndpointName") && dict["EndpointName"] != nil {
            self.endpointName = dict["EndpointName"] as! String
        }
        if dict.keys.contains("EndpointStatus") && dict["EndpointStatus"] != nil {
            self.endpointStatus = dict["EndpointStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateVpcEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoAcceptEnabled") && dict["AutoAcceptEnabled"] != nil {
            self.autoAcceptEnabled = dict["AutoAcceptEnabled"] as! Bool
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Payer") && dict["Payer"] != nil {
            self.payer = dict["Payer"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            var tmp : [CreateVpcEndpointServiceRequest.Resource] = []
            for v in dict["Resource"] as! [Any] {
                var model = CreateVpcEndpointServiceRequest.Resource()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resource = tmp
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceDescription") && dict["ServiceDescription"] != nil {
            self.serviceDescription = dict["ServiceDescription"] as! String
        }
        if dict.keys.contains("ServiceResourceType") && dict["ServiceResourceType"] != nil {
            self.serviceResourceType = dict["ServiceResourceType"] as! String
        }
        if dict.keys.contains("ServiceSupportIPv6") && dict["ServiceSupportIPv6"] != nil {
            self.serviceSupportIPv6 = dict["ServiceSupportIPv6"] as! Bool
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateVpcEndpointServiceRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateVpcEndpointServiceRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("ZoneAffinityEnabled") && dict["ZoneAffinityEnabled"] != nil {
            self.zoneAffinityEnabled = dict["ZoneAffinityEnabled"] as! Bool
        }
    }
}

public class CreateVpcEndpointServiceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoAcceptEnabled") && dict["AutoAcceptEnabled"] != nil {
            self.autoAcceptEnabled = dict["AutoAcceptEnabled"] as! Bool
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceBusinessStatus") && dict["ServiceBusinessStatus"] != nil {
            self.serviceBusinessStatus = dict["ServiceBusinessStatus"] as! String
        }
        if dict.keys.contains("ServiceDescription") && dict["ServiceDescription"] != nil {
            self.serviceDescription = dict["ServiceDescription"] as! String
        }
        if dict.keys.contains("ServiceDomain") && dict["ServiceDomain"] != nil {
            self.serviceDomain = dict["ServiceDomain"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
            self.serviceStatus = dict["ServiceStatus"] as! String
        }
        if dict.keys.contains("ServiceSupportIPv6") && dict["ServiceSupportIPv6"] != nil {
            self.serviceSupportIPv6 = dict["ServiceSupportIPv6"] as! Bool
        }
        if dict.keys.contains("ZoneAffinityEnabled") && dict["ZoneAffinityEnabled"] != nil {
            self.zoneAffinityEnabled = dict["ZoneAffinityEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateVpcEndpointServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteVpcEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteVpcEndpointServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
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

public class DescribeZonesRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Zone") && dict["Zone"] != nil {
                var tmp : [DescribeZonesResponseBody.Zones.Zone] = []
                for v in dict["Zone"] as! [Any] {
                    var model = DescribeZonesResponseBody.Zones.Zone()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
            var model = DescribeZonesResponseBody.Zones()
            model.fromMap(dict["Zones"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DetachResourceFromVpcEndpointServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
            self.securityGroupId = dict["SecurityGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DetachSecurityGroupFromVpcEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DisableVpcEndpointConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplacedResource") && dict["ReplacedResource"] != nil {
            self.replacedResource = dict["ReplacedResource"] as! Bool
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DisableVpcEndpointZoneConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableVpcEndpointConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableVpcEndpointZoneConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetVpcEndpointAttributeResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
            self.connectionStatus = dict["ConnectionStatus"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("EndpointBusinessStatus") && dict["EndpointBusinessStatus"] != nil {
            self.endpointBusinessStatus = dict["EndpointBusinessStatus"] as! String
        }
        if dict.keys.contains("EndpointDescription") && dict["EndpointDescription"] != nil {
            self.endpointDescription = dict["EndpointDescription"] as! String
        }
        if dict.keys.contains("EndpointDomain") && dict["EndpointDomain"] != nil {
            self.endpointDomain = dict["EndpointDomain"] as! String
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("EndpointName") && dict["EndpointName"] != nil {
            self.endpointName = dict["EndpointName"] as! String
        }
        if dict.keys.contains("EndpointStatus") && dict["EndpointStatus"] != nil {
            self.endpointStatus = dict["EndpointStatus"] as! String
        }
        if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("Payer") && dict["Payer"] != nil {
            self.payer = dict["Payer"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwner") && dict["ResourceOwner"] != nil {
            self.resourceOwner = dict["ResourceOwner"] as! Bool
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneAffinityEnabled") && dict["ZoneAffinityEnabled"] != nil {
            self.zoneAffinityEnabled = dict["ZoneAffinityEnabled"] as! Bool
        }
        if dict.keys.contains("ZonePrivateIpAddressCount") && dict["ZonePrivateIpAddressCount"] != nil {
            self.zonePrivateIpAddressCount = dict["ZonePrivateIpAddressCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetVpcEndpointAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
    }
}

public class GetVpcEndpointServiceAttributeResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoAcceptEnabled") && dict["AutoAcceptEnabled"] != nil {
            self.autoAcceptEnabled = dict["AutoAcceptEnabled"] as! Bool
        }
        if dict.keys.contains("ConnectBandwidth") && dict["ConnectBandwidth"] != nil {
            self.connectBandwidth = dict["ConnectBandwidth"] as! Int32
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("MaxBandwidth") && dict["MaxBandwidth"] != nil {
            self.maxBandwidth = dict["MaxBandwidth"] as! Int32
        }
        if dict.keys.contains("MinBandwidth") && dict["MinBandwidth"] != nil {
            self.minBandwidth = dict["MinBandwidth"] as! Int32
        }
        if dict.keys.contains("Payer") && dict["Payer"] != nil {
            self.payer = dict["Payer"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceBusinessStatus") && dict["ServiceBusinessStatus"] != nil {
            self.serviceBusinessStatus = dict["ServiceBusinessStatus"] as! String
        }
        if dict.keys.contains("ServiceDescription") && dict["ServiceDescription"] != nil {
            self.serviceDescription = dict["ServiceDescription"] as! String
        }
        if dict.keys.contains("ServiceDomain") && dict["ServiceDomain"] != nil {
            self.serviceDomain = dict["ServiceDomain"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceResourceType") && dict["ServiceResourceType"] != nil {
            self.serviceResourceType = dict["ServiceResourceType"] as! String
        }
        if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
            self.serviceStatus = dict["ServiceStatus"] as! String
        }
        if dict.keys.contains("ServiceSupportIPv6") && dict["ServiceSupportIPv6"] != nil {
            self.serviceSupportIPv6 = dict["ServiceSupportIPv6"] as! Bool
        }
        if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("ZoneAffinityEnabled") && dict["ZoneAffinityEnabled"] != nil {
            self.zoneAffinityEnabled = dict["ZoneAffinityEnabled"] as! Bool
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
            self.zones = dict["Zones"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetVpcEndpointServiceAttributeResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
            self.connectionStatus = dict["ConnectionStatus"] as! String
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("EndpointOwnerId") && dict["EndpointOwnerId"] != nil {
            self.endpointOwnerId = dict["EndpointOwnerId"] as! Int64
        }
        if dict.keys.contains("EniId") && dict["EniId"] != nil {
            self.eniId = dict["EniId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplacedResourceId") && dict["ReplacedResourceId"] != nil {
            self.replacedResourceId = dict["ReplacedResourceId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EniId") && dict["EniId"] != nil {
                    self.eniId = dict["EniId"] as! String
                }
                if dict.keys.contains("ReplacedEniId") && dict["ReplacedEniId"] != nil {
                    self.replacedEniId = dict["ReplacedEniId"] as! String
                }
                if dict.keys.contains("ReplacedResourceId") && dict["ReplacedResourceId"] != nil {
                    self.replacedResourceId = dict["ReplacedResourceId"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ZoneDomain") && dict["ZoneDomain"] != nil {
                    self.zoneDomain = dict["ZoneDomain"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
                if dict.keys.contains("ZoneStatus") && dict["ZoneStatus"] != nil {
                    self.zoneStatus = dict["ZoneStatus"] as! String
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
            if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
                self.connectionStatus = dict["ConnectionStatus"] as! String
            }
            if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("EndpointOwnerId") && dict["EndpointOwnerId"] != nil {
                self.endpointOwnerId = dict["EndpointOwnerId"] as! Int64
            }
            if dict.keys.contains("EndpointVpcId") && dict["EndpointVpcId"] != nil {
                self.endpointVpcId = dict["EndpointVpcId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceOwner") && dict["ResourceOwner"] != nil {
                self.resourceOwner = dict["ResourceOwner"] as! Bool
            }
            if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("Zones") && dict["Zones"] != nil {
                var tmp : [ListVpcEndpointConnectionsResponseBody.Connections.Zones] = []
                for v in dict["Zones"] as! [Any] {
                    var model = ListVpcEndpointConnectionsResponseBody.Connections.Zones()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Connections") && dict["Connections"] != nil {
            var tmp : [ListVpcEndpointConnectionsResponseBody.Connections] = []
            for v in dict["Connections"] as! [Any] {
                var model = ListVpcEndpointConnectionsResponseBody.Connections()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.connections = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVpcEndpointConnectionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListVpcEndpointSecurityGroupsResponseBody : Tea.TeaModel {
    public class SecurityGroups : Tea.TeaModel {
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
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var securityGroups: [ListVpcEndpointSecurityGroupsResponseBody.SecurityGroups]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityGroups") && dict["SecurityGroups"] != nil {
            var tmp : [ListVpcEndpointSecurityGroupsResponseBody.SecurityGroups] = []
            for v in dict["SecurityGroups"] as! [Any] {
                var model = ListVpcEndpointSecurityGroupsResponseBody.SecurityGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.securityGroups = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVpcEndpointSecurityGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoAllocatedEnabled") && dict["AutoAllocatedEnabled"] != nil {
                self.autoAllocatedEnabled = dict["AutoAllocatedEnabled"] as! Bool
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RelatedDeprecatedEndpointCount") && dict["RelatedDeprecatedEndpointCount"] != nil {
                self.relatedDeprecatedEndpointCount = dict["RelatedDeprecatedEndpointCount"] as! Int64
            }
            if dict.keys.contains("RelatedEndpointCount") && dict["RelatedEndpointCount"] != nil {
                self.relatedEndpointCount = dict["RelatedEndpointCount"] as! Int64
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceSupportIPv6") && dict["ResourceSupportIPv6"] != nil {
                self.resourceSupportIPv6 = dict["ResourceSupportIPv6"] as! Bool
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            var tmp : [ListVpcEndpointServiceResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = ListVpcEndpointServiceResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVpcEndpointServiceResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
        }
        if dict.keys.contains("UserListType") && dict["UserListType"] != nil {
            self.userListType = dict["UserListType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserARN") && dict["UserARN"] != nil {
                self.userARN = dict["UserARN"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("UserARNs") && dict["UserARNs"] != nil {
            var tmp : [ListVpcEndpointServiceUsersResponseBody.UserARNs] = []
            for v in dict["UserARNs"] as! [Any] {
                var model = ListVpcEndpointServiceUsersResponseBody.UserARNs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userARNs = tmp
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            var tmp : [ListVpcEndpointServiceUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = ListVpcEndpointServiceUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVpcEndpointServiceUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoAcceptEnabled") && dict["AutoAcceptEnabled"] != nil {
            self.autoAcceptEnabled = dict["AutoAcceptEnabled"] as! Bool
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ServiceBusinessStatus") && dict["ServiceBusinessStatus"] != nil {
            self.serviceBusinessStatus = dict["ServiceBusinessStatus"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceResourceType") && dict["ServiceResourceType"] != nil {
            self.serviceResourceType = dict["ServiceResourceType"] as! String
        }
        if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
            self.serviceStatus = dict["ServiceStatus"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListVpcEndpointServicesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListVpcEndpointServicesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("ZoneAffinityEnabled") && dict["ZoneAffinityEnabled"] != nil {
            self.zoneAffinityEnabled = dict["ZoneAffinityEnabled"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoAcceptEnabled") && dict["AutoAcceptEnabled"] != nil {
                self.autoAcceptEnabled = dict["AutoAcceptEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectBandwidth") && dict["ConnectBandwidth"] != nil {
                self.connectBandwidth = dict["ConnectBandwidth"] as! Int32
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("MaxBandwidth") && dict["MaxBandwidth"] != nil {
                self.maxBandwidth = dict["MaxBandwidth"] as! Int32
            }
            if dict.keys.contains("MinBandwidth") && dict["MinBandwidth"] != nil {
                self.minBandwidth = dict["MinBandwidth"] as! Int32
            }
            if dict.keys.contains("Payer") && dict["Payer"] != nil {
                self.payer = dict["Payer"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ServiceBusinessStatus") && dict["ServiceBusinessStatus"] != nil {
                self.serviceBusinessStatus = dict["ServiceBusinessStatus"] as! String
            }
            if dict.keys.contains("ServiceDescription") && dict["ServiceDescription"] != nil {
                self.serviceDescription = dict["ServiceDescription"] as! String
            }
            if dict.keys.contains("ServiceDomain") && dict["ServiceDomain"] != nil {
                self.serviceDomain = dict["ServiceDomain"] as! String
            }
            if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceResourceType") && dict["ServiceResourceType"] != nil {
                self.serviceResourceType = dict["ServiceResourceType"] as! String
            }
            if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
                self.serviceStatus = dict["ServiceStatus"] as! String
            }
            if dict.keys.contains("ServiceSupportIPv6") && dict["ServiceSupportIPv6"] != nil {
                self.serviceSupportIPv6 = dict["ServiceSupportIPv6"] as! Bool
            }
            if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListVpcEndpointServicesResponseBody.Services.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListVpcEndpointServicesResponseBody.Services.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("ZoneAffinityEnabled") && dict["ZoneAffinityEnabled"] != nil {
                self.zoneAffinityEnabled = dict["ZoneAffinityEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Services") && dict["Services"] != nil {
            var tmp : [ListVpcEndpointServicesResponseBody.Services] = []
            for v in dict["Services"] as! [Any] {
                var model = ListVpcEndpointServicesResponseBody.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVpcEndpointServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListVpcEndpointServicesByEndUserRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListVpcEndpointServicesByEndUserRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var payer: String?

        public var resourceGroupId: String?

        public var serviceDomain: String?

        public var serviceId: String?

        public var serviceName: String?

        public var serviceResourceType: String?

        public var serviceSupportIPv6: Bool?

        public var serviceType: String?

        public var tags: [ListVpcEndpointServicesByEndUserResponseBody.Services.Tags]?

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
            if self.zones != nil {
                map["Zones"] = self.zones!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Payer") && dict["Payer"] != nil {
                self.payer = dict["Payer"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ServiceDomain") && dict["ServiceDomain"] != nil {
                self.serviceDomain = dict["ServiceDomain"] as! String
            }
            if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceResourceType") && dict["ServiceResourceType"] != nil {
                self.serviceResourceType = dict["ServiceResourceType"] as! String
            }
            if dict.keys.contains("ServiceSupportIPv6") && dict["ServiceSupportIPv6"] != nil {
                self.serviceSupportIPv6 = dict["ServiceSupportIPv6"] as! Bool
            }
            if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListVpcEndpointServicesByEndUserResponseBody.Services.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListVpcEndpointServicesByEndUserResponseBody.Services.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Zones") && dict["Zones"] != nil {
                self.zones = dict["Zones"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Services") && dict["Services"] != nil {
            var tmp : [ListVpcEndpointServicesByEndUserResponseBody.Services] = []
            for v in dict["Services"] as! [Any] {
                var model = ListVpcEndpointServicesByEndUserResponseBody.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVpcEndpointServicesByEndUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EniId") && dict["EniId"] != nil {
                self.eniId = dict["EniId"] as! String
            }
            if dict.keys.contains("EniIp") && dict["EniIp"] != nil {
                self.eniIp = dict["EniIp"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneDomain") && dict["ZoneDomain"] != nil {
                self.zoneDomain = dict["ZoneDomain"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
            if dict.keys.contains("ZoneIpv6Address") && dict["ZoneIpv6Address"] != nil {
                self.zoneIpv6Address = dict["ZoneIpv6Address"] as! String
            }
            if dict.keys.contains("ZoneStatus") && dict["ZoneStatus"] != nil {
                self.zoneStatus = dict["ZoneStatus"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

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
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") && dict["Zones"] != nil {
            var tmp : [ListVpcEndpointZonesResponseBody.Zones] = []
            for v in dict["Zones"] as! [Any] {
                var model = ListVpcEndpointZonesResponseBody.Zones()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVpcEndpointZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
            self.connectionStatus = dict["ConnectionStatus"] as! String
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("EndpointName") && dict["EndpointName"] != nil {
            self.endpointName = dict["EndpointName"] as! String
        }
        if dict.keys.contains("EndpointStatus") && dict["EndpointStatus"] != nil {
            self.endpointStatus = dict["EndpointStatus"] as! String
        }
        if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
            self.endpointType = dict["EndpointType"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListVpcEndpointsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListVpcEndpointsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
                self.bandwidth = dict["Bandwidth"] as! Int64
            }
            if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
                self.connectionStatus = dict["ConnectionStatus"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EndpointBusinessStatus") && dict["EndpointBusinessStatus"] != nil {
                self.endpointBusinessStatus = dict["EndpointBusinessStatus"] as! String
            }
            if dict.keys.contains("EndpointDescription") && dict["EndpointDescription"] != nil {
                self.endpointDescription = dict["EndpointDescription"] as! String
            }
            if dict.keys.contains("EndpointDomain") && dict["EndpointDomain"] != nil {
                self.endpointDomain = dict["EndpointDomain"] as! String
            }
            if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("EndpointName") && dict["EndpointName"] != nil {
                self.endpointName = dict["EndpointName"] as! String
            }
            if dict.keys.contains("EndpointStatus") && dict["EndpointStatus"] != nil {
                self.endpointStatus = dict["EndpointStatus"] as! String
            }
            if dict.keys.contains("EndpointType") && dict["EndpointType"] != nil {
                self.endpointType = dict["EndpointType"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceOwner") && dict["ResourceOwner"] != nil {
                self.resourceOwner = dict["ResourceOwner"] as! Bool
            }
            if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [ListVpcEndpointsResponseBody.Endpoints.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListVpcEndpointsResponseBody.Endpoints.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneAffinityEnabled") && dict["ZoneAffinityEnabled"] != nil {
                self.zoneAffinityEnabled = dict["ZoneAffinityEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
            var tmp : [ListVpcEndpointsResponseBody.Endpoints] = []
            for v in dict["Endpoints"] as! [Any] {
                var model = ListVpcEndpointsResponseBody.Endpoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.endpoints = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListVpcEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OpenPrivateLinkServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UserARN") && dict["UserARN"] != nil {
            self.userARN = dict["UserARN"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveUserFromVpcEndpointServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveZoneFromVpcEndpointResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
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

public class UpdateVpcEndpointAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var endpointDescription: String?

    public var endpointId: String?

    public var endpointName: String?

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
        if self.endpointDescription != nil {
            map["EndpointDescription"] = self.endpointDescription!
        }
        if self.endpointId != nil {
            map["EndpointId"] = self.endpointId!
        }
        if self.endpointName != nil {
            map["EndpointName"] = self.endpointName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointDescription") && dict["EndpointDescription"] != nil {
            self.endpointDescription = dict["EndpointDescription"] as! String
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("EndpointName") && dict["EndpointName"] != nil {
            self.endpointName = dict["EndpointName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateVpcEndpointAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateVpcEndpointConnectionAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVpcEndpointServiceAttributeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoAcceptEnabled") && dict["AutoAcceptEnabled"] != nil {
            self.autoAcceptEnabled = dict["AutoAcceptEnabled"] as! Bool
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectBandwidth") && dict["ConnectBandwidth"] != nil {
            self.connectBandwidth = dict["ConnectBandwidth"] as! Int32
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceDescription") && dict["ServiceDescription"] != nil {
            self.serviceDescription = dict["ServiceDescription"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceSupportIPv6") && dict["ServiceSupportIPv6"] != nil {
            self.serviceSupportIPv6 = dict["ServiceSupportIPv6"] as! Bool
        }
        if dict.keys.contains("ZoneAffinityEnabled") && dict["ZoneAffinityEnabled"] != nil {
            self.zoneAffinityEnabled = dict["ZoneAffinityEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateVpcEndpointServiceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoAllocatedEnabled") && dict["AutoAllocatedEnabled"] != nil {
            self.autoAllocatedEnabled = dict["AutoAllocatedEnabled"] as! Bool
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateVpcEndpointServiceResourceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") && dict["DryRun"] != nil {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
            self.endpointId = dict["EndpointId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceAllocateMode") && dict["ResourceAllocateMode"] != nil {
            self.resourceAllocateMode = dict["ResourceAllocateMode"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceReplaceMode") && dict["ResourceReplaceMode"] != nil {
            self.resourceReplaceMode = dict["ResourceReplaceMode"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateVpcEndpointZoneConnectionResourceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
