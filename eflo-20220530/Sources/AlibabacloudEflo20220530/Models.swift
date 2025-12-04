import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssignLeniPrivateIpAddressRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var elasticNetworkInterfaceId: String?

    public var privateIpAddress: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["PrivateIpAddress"] as? String {
            self.privateIpAddress = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AssignLeniPrivateIpAddressResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var elasticNetworkInterfaceId: String?

        public var ipName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elasticNetworkInterfaceId != nil {
                map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
            }
            if self.ipName != nil {
                map["IpName"] = self.ipName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ElasticNetworkInterfaceId"] as? String {
                self.elasticNetworkInterfaceId = value
            }
            if let value = dict["IpName"] as? String {
                self.ipName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: AssignLeniPrivateIpAddressResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = AssignLeniPrivateIpAddressResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AssignLeniPrivateIpAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssignLeniPrivateIpAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssignLeniPrivateIpAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssignPrivateIpAddressRequest : Tea.TeaModel {
    public var assignMac: Bool?

    public var clientToken: String?

    public var description_: String?

    public var networkInterfaceId: String?

    public var privateIpAddress: String?

    public var regionId: String?

    public var skipConfig: Bool?

    public var subnetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assignMac != nil {
            map["AssignMac"] = self.assignMac!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.networkInterfaceId != nil {
            map["NetworkInterfaceId"] = self.networkInterfaceId!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.skipConfig != nil {
            map["SkipConfig"] = self.skipConfig!
        }
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssignMac"] as? Bool {
            self.assignMac = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["NetworkInterfaceId"] as? String {
            self.networkInterfaceId = value
        }
        if let value = dict["PrivateIpAddress"] as? String {
            self.privateIpAddress = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SkipConfig"] as? Bool {
            self.skipConfig = value
        }
        if let value = dict["SubnetId"] as? String {
            self.subnetId = value
        }
    }
}

public class AssignPrivateIpAddressResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var ipName: String?

        public var networkInterfaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipName != nil {
                map["IpName"] = self.ipName!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpName"] as? String {
                self.ipName = value
            }
            if let value = dict["NetworkInterfaceId"] as? String {
                self.networkInterfaceId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: AssignPrivateIpAddressResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = AssignPrivateIpAddressResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AssignPrivateIpAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssignPrivateIpAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssignPrivateIpAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssociateVpdCidrBlockRequest : Tea.TeaModel {
    public var regionId: String?

    public var secondaryCidrBlock: String?

    public var vpdId: String?

    public override init() {
        super.init()
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
        if self.secondaryCidrBlock != nil {
            map["SecondaryCidrBlock"] = self.secondaryCidrBlock!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecondaryCidrBlock"] as? String {
            self.secondaryCidrBlock = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
    }
}

public class AssociateVpdCidrBlockResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: AssociateVpdCidrBlockResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = AssociateVpdCidrBlockResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AssociateVpdCidrBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateVpdCidrBlockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssociateVpdCidrBlockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachElasticNetworkInterfaceRequest : Tea.TeaModel {
    public var elasticNetworkInterfaceId: String?

    public var nodeId: String?

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
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AttachElasticNetworkInterfaceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AttachElasticNetworkInterfaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachElasticNetworkInterfaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachElasticNetworkInterfaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateElasticNetworkInterfaceRequest : Tea.TeaModel {
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

    public var description_: String?

    public var enableJumboFrame: Bool?

    public var nodeId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityGroupId: String?

    public var tag: [CreateElasticNetworkInterfaceRequest.Tag]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableJumboFrame != nil {
            map["EnableJumboFrame"] = self.enableJumboFrame!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableJumboFrame"] as? Bool {
            self.enableJumboFrame = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateElasticNetworkInterfaceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateElasticNetworkInterfaceRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
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

public class CreateElasticNetworkInterfaceResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var elasticNetworkInterfaceId: String?

        public var nodeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elasticNetworkInterfaceId != nil {
                map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ElasticNetworkInterfaceId"] as? String {
                self.elasticNetworkInterfaceId = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateElasticNetworkInterfaceResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateElasticNetworkInterfaceResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateElasticNetworkInterfaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateElasticNetworkInterfaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateElasticNetworkInterfaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateErRequest : Tea.TeaModel {
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
    public var description_: String?

    public var erName: String?

    public var masterZoneId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [CreateErRequest.Tag]?

    public override init() {
        super.init()
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
        if self.erName != nil {
            map["ErName"] = self.erName!
        }
        if self.masterZoneId != nil {
            map["MasterZoneId"] = self.masterZoneId!
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ErName"] as? String {
            self.erName = value
        }
        if let value = dict["MasterZoneId"] as? String {
            self.masterZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateErRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateErRequest.Tag()
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

public class CreateErResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var erId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.erId != nil {
                map["ErId"] = self.erId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErId"] as? String {
                self.erId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateErResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateErResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateErResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateErResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateErResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateErAttachmentRequest : Tea.TeaModel {
    public var autoReceiveAllRoute: Bool?

    public var erAttachmentName: String?

    public var erId: String?

    public var instanceId: String?

    public var instanceType: String?

    public var regionId: String?

    public var resourceTenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoReceiveAllRoute != nil {
            map["AutoReceiveAllRoute"] = self.autoReceiveAllRoute!
        }
        if self.erAttachmentName != nil {
            map["ErAttachmentName"] = self.erAttachmentName!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceTenantId != nil {
            map["ResourceTenantId"] = self.resourceTenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoReceiveAllRoute"] as? Bool {
            self.autoReceiveAllRoute = value
        }
        if let value = dict["ErAttachmentName"] as? String {
            self.erAttachmentName = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceTenantId"] as? String {
            self.resourceTenantId = value
        }
    }
}

public class CreateErAttachmentResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var erAttachmentId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.erAttachmentId != nil {
                map["ErAttachmentId"] = self.erAttachmentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErAttachmentId"] as? String {
                self.erAttachmentId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateErAttachmentResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateErAttachmentResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateErAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateErAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateErAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateErRouteMapRequest : Tea.TeaModel {
    public var description_: String?

    public var destinationCidrBlock: String?

    public var erId: String?

    public var receptionInstanceId: String?

    public var receptionInstanceOwner: String?

    public var receptionInstanceType: String?

    public var regionId: String?

    public var routeMapAction: String?

    public var routeMapNum: Int32?

    public var transmissionInstanceId: String?

    public var transmissionInstanceOwner: String?

    public var transmissionInstanceType: String?

    public override init() {
        super.init()
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
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.receptionInstanceId != nil {
            map["ReceptionInstanceId"] = self.receptionInstanceId!
        }
        if self.receptionInstanceOwner != nil {
            map["ReceptionInstanceOwner"] = self.receptionInstanceOwner!
        }
        if self.receptionInstanceType != nil {
            map["ReceptionInstanceType"] = self.receptionInstanceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.routeMapAction != nil {
            map["RouteMapAction"] = self.routeMapAction!
        }
        if self.routeMapNum != nil {
            map["RouteMapNum"] = self.routeMapNum!
        }
        if self.transmissionInstanceId != nil {
            map["TransmissionInstanceId"] = self.transmissionInstanceId!
        }
        if self.transmissionInstanceOwner != nil {
            map["TransmissionInstanceOwner"] = self.transmissionInstanceOwner!
        }
        if self.transmissionInstanceType != nil {
            map["TransmissionInstanceType"] = self.transmissionInstanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DestinationCidrBlock"] as? String {
            self.destinationCidrBlock = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ReceptionInstanceId"] as? String {
            self.receptionInstanceId = value
        }
        if let value = dict["ReceptionInstanceOwner"] as? String {
            self.receptionInstanceOwner = value
        }
        if let value = dict["ReceptionInstanceType"] as? String {
            self.receptionInstanceType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RouteMapAction"] as? String {
            self.routeMapAction = value
        }
        if let value = dict["RouteMapNum"] as? Int32 {
            self.routeMapNum = value
        }
        if let value = dict["TransmissionInstanceId"] as? String {
            self.transmissionInstanceId = value
        }
        if let value = dict["TransmissionInstanceOwner"] as? String {
            self.transmissionInstanceOwner = value
        }
        if let value = dict["TransmissionInstanceType"] as? String {
            self.transmissionInstanceType = value
        }
    }
}

public class CreateErRouteMapResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var erRouteMapId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.erRouteMapId != nil {
                map["ErRouteMapId"] = self.erRouteMapId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErRouteMapId"] as? String {
                self.erRouteMapId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateErRouteMapResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateErRouteMapResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateErRouteMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateErRouteMapResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateErRouteMapResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSubnetRequest : Tea.TeaModel {
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
    public var cidr: String?

    public var regionId: String?

    public var subnetName: String?

    public var tag: [CreateSubnetRequest.Tag]?

    public var type: String?

    public var vpdId: String?

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
        if self.cidr != nil {
            map["Cidr"] = self.cidr!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.subnetName != nil {
            map["SubnetName"] = self.subnetName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cidr"] as? String {
            self.cidr = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SubnetName"] as? String {
            self.subnetName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateSubnetRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateSubnetRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateSubnetResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var subnetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subnetId != nil {
                map["SubnetId"] = self.subnetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SubnetId"] as? String {
                self.subnetId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateSubnetResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateSubnetResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSubnetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSubnetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSubnetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVccRequest : Tea.TeaModel {
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
    public var accessCouldService: Bool?

    public var bandwidth: Int32?

    public var bgpAsn: Int64?

    public var bgpCidr: String?

    public var cenId: String?

    public var cenOwnerId: String?

    public var connectionType: String?

    public var description_: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [CreateVccRequest.Tag]?

    public var vSwitchId: String?

    public var vccId: String?

    public var vccName: String?

    public var vpcId: String?

    public var vpdId: String?

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
        if self.accessCouldService != nil {
            map["AccessCouldService"] = self.accessCouldService!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bgpAsn != nil {
            map["BgpAsn"] = self.bgpAsn!
        }
        if self.bgpCidr != nil {
            map["BgpCidr"] = self.bgpCidr!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cenOwnerId != nil {
            map["CenOwnerId"] = self.cenOwnerId!
        }
        if self.connectionType != nil {
            map["ConnectionType"] = self.connectionType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vccName != nil {
            map["VccName"] = self.vccName!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessCouldService"] as? Bool {
            self.accessCouldService = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["BgpAsn"] as? Int64 {
            self.bgpAsn = value
        }
        if let value = dict["BgpCidr"] as? String {
            self.bgpCidr = value
        }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["CenOwnerId"] as? String {
            self.cenOwnerId = value
        }
        if let value = dict["ConnectionType"] as? String {
            self.connectionType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateVccRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateVccRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
        if let value = dict["VccName"] as? String {
            self.vccName = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateVccResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var vccId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vccId != nil {
                map["VccId"] = self.vccId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VccId"] as? String {
                self.vccId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateVccResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateVccResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVccResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVccResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVccGrantRuleRequest : Tea.TeaModel {
    public var erId: String?

    public var grantTenantId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.grantTenantId != nil {
            map["GrantTenantId"] = self.grantTenantId!
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
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["GrantTenantId"] as? String {
            self.grantTenantId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateVccGrantRuleResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var grantRuleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.grantRuleId != nil {
                map["GrantRuleId"] = self.grantRuleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GrantRuleId"] as? String {
                self.grantRuleId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateVccGrantRuleResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateVccGrantRuleResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVccGrantRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVccGrantRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVccGrantRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVccRouteEntryRequest : Tea.TeaModel {
    public var destinationCidrBlock: String?

    public var regionId: String?

    public var vccId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationCidrBlock"] as? String {
            self.destinationCidrBlock = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
    }
}

public class CreateVccRouteEntryResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var vccRouteEntryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vccRouteEntryId != nil {
                map["VccRouteEntryId"] = self.vccRouteEntryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VccRouteEntryId"] as? String {
                self.vccRouteEntryId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateVccRouteEntryResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateVccRouteEntryResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVccRouteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVccRouteEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVccRouteEntryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVpdRequest : Tea.TeaModel {
    public class Subnets : Tea.TeaModel {
        public var cidr: String?

        public var regionId: String?

        public var subnetName: String?

        public var type: String?

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
            if self.cidr != nil {
                map["Cidr"] = self.cidr!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.subnetName != nil {
                map["SubnetName"] = self.subnetName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cidr"] as? String {
                self.cidr = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SubnetName"] as? String {
                self.subnetName = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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
    public var cidr: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var subnets: [CreateVpdRequest.Subnets]?

    public var tag: [CreateVpdRequest.Tag]?

    public var vpdName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cidr != nil {
            map["Cidr"] = self.cidr!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.subnets != nil {
            var tmp : [Any] = []
            for k in self.subnets! {
                tmp.append(k.toMap())
            }
            map["Subnets"] = tmp
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vpdName != nil {
            map["VpdName"] = self.vpdName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cidr"] as? String {
            self.cidr = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Subnets"] as? [Any?] {
            var tmp : [CreateVpdRequest.Subnets] = []
            for v in value {
                if v != nil {
                    var model = CreateVpdRequest.Subnets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subnets = tmp
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateVpdRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateVpdRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpdName"] as? String {
            self.vpdName = value
        }
    }
}

public class CreateVpdResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var subnetIds: [String]?

        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subnetIds != nil {
                map["SubnetIds"] = self.subnetIds!
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SubnetIds"] as? [String] {
                self.subnetIds = value
            }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateVpdResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateVpdResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVpdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVpdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVpdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVpdGrantRuleRequest : Tea.TeaModel {
    public var erId: String?

    public var grantTenantId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.grantTenantId != nil {
            map["GrantTenantId"] = self.grantTenantId!
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
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["GrantTenantId"] as? String {
            self.grantTenantId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateVpdGrantRuleResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var grantRuleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.grantRuleId != nil {
                map["GrantRuleId"] = self.grantRuleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GrantRuleId"] as? String {
                self.grantRuleId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: CreateVpdGrantRuleResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = CreateVpdGrantRuleResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateVpdGrantRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVpdGrantRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVpdGrantRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteElasticNetworkInterfaceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var elasticNetworkInterfaceId: String?

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
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
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
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteElasticNetworkInterfaceResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var elasticNetworkInterfaceId: String?

        public var nodeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elasticNetworkInterfaceId != nil {
                map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ElasticNetworkInterfaceId"] as? String {
                self.elasticNetworkInterfaceId = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: DeleteElasticNetworkInterfaceResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = DeleteElasticNetworkInterfaceResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteElasticNetworkInterfaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteElasticNetworkInterfaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteElasticNetworkInterfaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteErRequest : Tea.TeaModel {
    public var erId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteErResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteErResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteErResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteErResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteErAttachmentRequest : Tea.TeaModel {
    public var erAttachmentId: String?

    public var erId: String?

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
        if self.erAttachmentId != nil {
            map["ErAttachmentId"] = self.erAttachmentId!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErAttachmentId"] as? String {
            self.erAttachmentId = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteErAttachmentResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteErAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteErAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteErAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteErRouteMapRequest : Tea.TeaModel {
    public var erId: String?

    public var erRouteMapId: String?

    public var erRouteMapIds: [String]?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.erRouteMapId != nil {
            map["ErRouteMapId"] = self.erRouteMapId!
        }
        if self.erRouteMapIds != nil {
            map["ErRouteMapIds"] = self.erRouteMapIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ErRouteMapId"] as? String {
            self.erRouteMapId = value
        }
        if let value = dict["ErRouteMapIds"] as? [String] {
            self.erRouteMapIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteErRouteMapResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteErRouteMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteErRouteMapResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteErRouteMapResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSubnetRequest : Tea.TeaModel {
    public var regionId: String?

    public var subnetId: String?

    public var vpdId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SubnetId"] as? String {
            self.subnetId = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DeleteSubnetResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteSubnetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSubnetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSubnetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVccGrantRuleRequest : Tea.TeaModel {
    public var erId: String?

    public var grantRuleId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.grantRuleId != nil {
            map["GrantRuleId"] = self.grantRuleId!
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
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["GrantRuleId"] as? String {
            self.grantRuleId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteVccGrantRuleResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVccGrantRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVccGrantRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVccGrantRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVccRouteEntryRequest : Tea.TeaModel {
    public var destinationCidrBlock: String?

    public var regionId: String?

    public var vccId: String?

    public var vccRouteEntryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vccRouteEntryId != nil {
            map["VccRouteEntryId"] = self.vccRouteEntryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationCidrBlock"] as? String {
            self.destinationCidrBlock = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
        if let value = dict["VccRouteEntryId"] as? String {
            self.vccRouteEntryId = value
        }
    }
}

public class DeleteVccRouteEntryResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVccRouteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVccRouteEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVccRouteEntryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVpdRequest : Tea.TeaModel {
    public var regionId: String?

    public var vpdId: String?

    public override init() {
        super.init()
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
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
    }
}

public class DeleteVpdResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVpdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVpdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVpdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVpdGrantRuleRequest : Tea.TeaModel {
    public var erId: String?

    public var grantRuleId: String?

    public var grantTenantId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.grantRuleId != nil {
            map["GrantRuleId"] = self.grantRuleId!
        }
        if self.grantTenantId != nil {
            map["GrantTenantId"] = self.grantTenantId!
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
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["GrantRuleId"] as? String {
            self.grantRuleId = value
        }
        if let value = dict["GrantTenantId"] as? String {
            self.grantTenantId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteVpdGrantRuleResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVpdGrantRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVpdGrantRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVpdGrantRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlrRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeSlrResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var hasRole: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasRole != nil {
                map["HasRole"] = self.hasRole!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasRole"] as? Bool {
                self.hasRole = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: DescribeSlrResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = DescribeSlrResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSlrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachElasticNetworkInterfaceRequest : Tea.TeaModel {
    public var elasticNetworkInterfaceId: String?

    public var nodeId: String?

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
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DetachElasticNetworkInterfaceResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetachElasticNetworkInterfaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachElasticNetworkInterfaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachElasticNetworkInterfaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDestinationCidrBlockRequest : Tea.TeaModel {
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

public class GetDestinationCidrBlockResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var destinationCidrBlock: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destinationCidrBlock != nil {
                map["DestinationCidrBlock"] = self.destinationCidrBlock!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DestinationCidrBlock"] as? [String] {
                self.destinationCidrBlock = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetDestinationCidrBlockResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetDestinationCidrBlockResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDestinationCidrBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDestinationCidrBlockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDestinationCidrBlockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetElasticNetworkInterfaceRequest : Tea.TeaModel {
    public var elasticNetworkInterfaceId: String?

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
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetElasticNetworkInterfaceResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Ipv6Addresses : Tea.TeaModel {
            public var description_: String?

            public var elasticNetworkInterfaceId: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var ipName: String?

            public var ipv6Address: String?

            public var message: String?

            public var regionId: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.elasticNetworkInterfaceId != nil {
                    map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.ipName != nil {
                    map["IpName"] = self.ipName!
                }
                if self.ipv6Address != nil {
                    map["Ipv6Address"] = self.ipv6Address!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ElasticNetworkInterfaceId"] as? String {
                    self.elasticNetworkInterfaceId = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["IpName"] as? String {
                    self.ipName = value
                }
                if let value = dict["Ipv6Address"] as? String {
                    self.ipv6Address = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class PrivateIpAddresses : Tea.TeaModel {
            public var description_: String?

            public var elasticNetworkInterfaceId: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var ipName: String?

            public var message: String?

            public var privateIpAddress: String?

            public var regionId: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.elasticNetworkInterfaceId != nil {
                    map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.ipName != nil {
                    map["IpName"] = self.ipName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.privateIpAddress != nil {
                    map["PrivateIpAddress"] = self.privateIpAddress!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ElasticNetworkInterfaceId"] as? String {
                    self.elasticNetworkInterfaceId = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["IpName"] as? String {
                    self.ipName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["PrivateIpAddress"] as? String {
                    self.privateIpAddress = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var elasticNetworkInterfaceId: String?

        public var enableJumboFrame: Bool?

        public var gateway: String?

        public var gmtModified: String?

        public var ip: String?

        public var ipv6Addresses: [GetElasticNetworkInterfaceResponseBody.Content.Ipv6Addresses]?

        public var mac: String?

        public var mask: String?

        public var message: String?

        public var nodeId: String?

        public var privateIpAddresses: [GetElasticNetworkInterfaceResponseBody.Content.PrivateIpAddresses]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var securityGroupId: String?

        public var status: String?

        public var tags: [GetElasticNetworkInterfaceResponseBody.Content.Tags]?

        public var type: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.elasticNetworkInterfaceId != nil {
                map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
            }
            if self.enableJumboFrame != nil {
                map["EnableJumboFrame"] = self.enableJumboFrame!
            }
            if self.gateway != nil {
                map["Gateway"] = self.gateway!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.ipv6Addresses != nil {
                var tmp : [Any] = []
                for k in self.ipv6Addresses! {
                    tmp.append(k.toMap())
                }
                map["Ipv6Addresses"] = tmp
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.mask != nil {
                map["Mask"] = self.mask!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.privateIpAddresses != nil {
                var tmp : [Any] = []
                for k in self.privateIpAddresses! {
                    tmp.append(k.toMap())
                }
                map["PrivateIpAddresses"] = tmp
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
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
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ElasticNetworkInterfaceId"] as? String {
                self.elasticNetworkInterfaceId = value
            }
            if let value = dict["EnableJumboFrame"] as? Bool {
                self.enableJumboFrame = value
            }
            if let value = dict["Gateway"] as? String {
                self.gateway = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Ipv6Addresses"] as? [Any?] {
                var tmp : [GetElasticNetworkInterfaceResponseBody.Content.Ipv6Addresses] = []
                for v in value {
                    if v != nil {
                        var model = GetElasticNetworkInterfaceResponseBody.Content.Ipv6Addresses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipv6Addresses = tmp
            }
            if let value = dict["Mac"] as? String {
                self.mac = value
            }
            if let value = dict["Mask"] as? String {
                self.mask = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["PrivateIpAddresses"] as? [Any?] {
                var tmp : [GetElasticNetworkInterfaceResponseBody.Content.PrivateIpAddresses] = []
                for v in value {
                    if v != nil {
                        var model = GetElasticNetworkInterfaceResponseBody.Content.PrivateIpAddresses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.privateIpAddresses = tmp
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetElasticNetworkInterfaceResponseBody.Content.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetElasticNetworkInterfaceResponseBody.Content.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
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
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetElasticNetworkInterfaceResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetElasticNetworkInterfaceResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetElasticNetworkInterfaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetElasticNetworkInterfaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetElasticNetworkInterfaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetErRequest : Tea.TeaModel {
    public var erId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetErResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class ErAttachments : Tea.TeaModel {
            public var across: Bool?

            public var autoReceiveAllRoute: Bool?

            public var createTime: String?

            public var erAttachmentId: String?

            public var erAttachmentName: String?

            public var erId: String?

            public var gmtModified: String?

            public var instanceId: String?

            public var instanceName: String?

            public var instanceType: String?

            public var message: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var resourceTenantId: String?

            public var status: String?

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
                if self.across != nil {
                    map["Across"] = self.across!
                }
                if self.autoReceiveAllRoute != nil {
                    map["AutoReceiveAllRoute"] = self.autoReceiveAllRoute!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.erAttachmentId != nil {
                    map["ErAttachmentId"] = self.erAttachmentId!
                }
                if self.erAttachmentName != nil {
                    map["ErAttachmentName"] = self.erAttachmentName!
                }
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.resourceTenantId != nil {
                    map["ResourceTenantId"] = self.resourceTenantId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Across"] as? Bool {
                    self.across = value
                }
                if let value = dict["AutoReceiveAllRoute"] as? Bool {
                    self.autoReceiveAllRoute = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["ErAttachmentId"] as? String {
                    self.erAttachmentId = value
                }
                if let value = dict["ErAttachmentName"] as? String {
                    self.erAttachmentName = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ResourceTenantId"] as? String {
                    self.resourceTenantId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
            }
        }
        public class ErRouteEntrys : Tea.TeaModel {
            public var destinationCidrBlock: String?

            public var erId: String?

            public var erRouteEntryId: String?

            public var gmtModified: String?

            public var nextHopId: String?

            public var nextHopType: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var resourceTenantId: String?

            public var routeType: String?

            public var status: String?

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
                if self.destinationCidrBlock != nil {
                    map["DestinationCidrBlock"] = self.destinationCidrBlock!
                }
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.erRouteEntryId != nil {
                    map["ErRouteEntryId"] = self.erRouteEntryId!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.nextHopId != nil {
                    map["NextHopId"] = self.nextHopId!
                }
                if self.nextHopType != nil {
                    map["NextHopType"] = self.nextHopType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.resourceTenantId != nil {
                    map["ResourceTenantId"] = self.resourceTenantId!
                }
                if self.routeType != nil {
                    map["RouteType"] = self.routeType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DestinationCidrBlock"] as? String {
                    self.destinationCidrBlock = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["ErRouteEntryId"] as? String {
                    self.erRouteEntryId = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["NextHopId"] as? String {
                    self.nextHopId = value
                }
                if let value = dict["NextHopType"] as? String {
                    self.nextHopType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ResourceTenantId"] as? String {
                    self.resourceTenantId = value
                }
                if let value = dict["RouteType"] as? String {
                    self.routeType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
            }
        }
        public class ErRouteMaps : Tea.TeaModel {
            public var action: String?

            public var createTime: String?

            public var description_: String?

            public var destinationCidrBlock: String?

            public var erId: String?

            public var erRouteMapId: String?

            public var erRouteMapName: String?

            public var gmtModified: String?

            public var message: String?

            public var receptionInstanceId: String?

            public var receptionInstanceName: String?

            public var receptionInstanceOwner: String?

            public var receptionInstanceType: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var routeMapNum: Int32?

            public var status: String?

            public var tenantId: String?

            public var transmissionInstanceId: String?

            public var transmissionInstanceName: String?

            public var transmissionInstanceOwner: String?

            public var transmissionInstanceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.destinationCidrBlock != nil {
                    map["DestinationCidrBlock"] = self.destinationCidrBlock!
                }
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.erRouteMapId != nil {
                    map["ErRouteMapId"] = self.erRouteMapId!
                }
                if self.erRouteMapName != nil {
                    map["ErRouteMapName"] = self.erRouteMapName!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.receptionInstanceId != nil {
                    map["ReceptionInstanceId"] = self.receptionInstanceId!
                }
                if self.receptionInstanceName != nil {
                    map["ReceptionInstanceName"] = self.receptionInstanceName!
                }
                if self.receptionInstanceOwner != nil {
                    map["ReceptionInstanceOwner"] = self.receptionInstanceOwner!
                }
                if self.receptionInstanceType != nil {
                    map["ReceptionInstanceType"] = self.receptionInstanceType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.routeMapNum != nil {
                    map["RouteMapNum"] = self.routeMapNum!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.transmissionInstanceId != nil {
                    map["TransmissionInstanceId"] = self.transmissionInstanceId!
                }
                if self.transmissionInstanceName != nil {
                    map["TransmissionInstanceName"] = self.transmissionInstanceName!
                }
                if self.transmissionInstanceOwner != nil {
                    map["TransmissionInstanceOwner"] = self.transmissionInstanceOwner!
                }
                if self.transmissionInstanceType != nil {
                    map["TransmissionInstanceType"] = self.transmissionInstanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DestinationCidrBlock"] as? String {
                    self.destinationCidrBlock = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["ErRouteMapId"] as? String {
                    self.erRouteMapId = value
                }
                if let value = dict["ErRouteMapName"] as? String {
                    self.erRouteMapName = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["ReceptionInstanceId"] as? String {
                    self.receptionInstanceId = value
                }
                if let value = dict["ReceptionInstanceName"] as? String {
                    self.receptionInstanceName = value
                }
                if let value = dict["ReceptionInstanceOwner"] as? String {
                    self.receptionInstanceOwner = value
                }
                if let value = dict["ReceptionInstanceType"] as? String {
                    self.receptionInstanceType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["RouteMapNum"] as? Int32 {
                    self.routeMapNum = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["TransmissionInstanceId"] as? String {
                    self.transmissionInstanceId = value
                }
                if let value = dict["TransmissionInstanceName"] as? String {
                    self.transmissionInstanceName = value
                }
                if let value = dict["TransmissionInstanceOwner"] as? String {
                    self.transmissionInstanceOwner = value
                }
                if let value = dict["TransmissionInstanceType"] as? String {
                    self.transmissionInstanceType = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var erAttachments: [GetErResponseBody.Content.ErAttachments]?

        public var erId: String?

        public var erName: String?

        public var erRouteEntrys: [GetErResponseBody.Content.ErRouteEntrys]?

        public var erRouteMaps: [GetErResponseBody.Content.ErRouteMaps]?

        public var gmtModified: String?

        public var masterZoneId: String?

        public var message: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [GetErResponseBody.Content.Tags]?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.erAttachments != nil {
                var tmp : [Any] = []
                for k in self.erAttachments! {
                    tmp.append(k.toMap())
                }
                map["ErAttachments"] = tmp
            }
            if self.erId != nil {
                map["ErId"] = self.erId!
            }
            if self.erName != nil {
                map["ErName"] = self.erName!
            }
            if self.erRouteEntrys != nil {
                var tmp : [Any] = []
                for k in self.erRouteEntrys! {
                    tmp.append(k.toMap())
                }
                map["ErRouteEntrys"] = tmp
            }
            if self.erRouteMaps != nil {
                var tmp : [Any] = []
                for k in self.erRouteMaps! {
                    tmp.append(k.toMap())
                }
                map["ErRouteMaps"] = tmp
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.masterZoneId != nil {
                map["MasterZoneId"] = self.masterZoneId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ErAttachments"] as? [Any?] {
                var tmp : [GetErResponseBody.Content.ErAttachments] = []
                for v in value {
                    if v != nil {
                        var model = GetErResponseBody.Content.ErAttachments()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.erAttachments = tmp
            }
            if let value = dict["ErId"] as? String {
                self.erId = value
            }
            if let value = dict["ErName"] as? String {
                self.erName = value
            }
            if let value = dict["ErRouteEntrys"] as? [Any?] {
                var tmp : [GetErResponseBody.Content.ErRouteEntrys] = []
                for v in value {
                    if v != nil {
                        var model = GetErResponseBody.Content.ErRouteEntrys()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.erRouteEntrys = tmp
            }
            if let value = dict["ErRouteMaps"] as? [Any?] {
                var tmp : [GetErResponseBody.Content.ErRouteMaps] = []
                for v in value {
                    if v != nil {
                        var model = GetErResponseBody.Content.ErRouteMaps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.erRouteMaps = tmp
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["MasterZoneId"] as? String {
                self.masterZoneId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetErResponseBody.Content.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetErResponseBody.Content.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetErResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetErResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetErResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetErResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetErResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetErAttachmentRequest : Tea.TeaModel {
    public var erAttachmentId: String?

    public var erId: String?

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
        if self.erAttachmentId != nil {
            map["ErAttachmentId"] = self.erAttachmentId!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErAttachmentId"] as? String {
            self.erAttachmentId = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetErAttachmentResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var across: Bool?

        public var autoReceiveAllRoute: Bool?

        public var createTime: String?

        public var erAttachmentId: String?

        public var erAttachmentName: String?

        public var erId: String?

        public var gmtModified: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceType: String?

        public var message: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var resourceTenantId: String?

        public var status: String?

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
            if self.across != nil {
                map["Across"] = self.across!
            }
            if self.autoReceiveAllRoute != nil {
                map["AutoReceiveAllRoute"] = self.autoReceiveAllRoute!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.erAttachmentId != nil {
                map["ErAttachmentId"] = self.erAttachmentId!
            }
            if self.erAttachmentName != nil {
                map["ErAttachmentName"] = self.erAttachmentName!
            }
            if self.erId != nil {
                map["ErId"] = self.erId!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceTenantId != nil {
                map["ResourceTenantId"] = self.resourceTenantId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Across"] as? Bool {
                self.across = value
            }
            if let value = dict["AutoReceiveAllRoute"] as? Bool {
                self.autoReceiveAllRoute = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ErAttachmentId"] as? String {
                self.erAttachmentId = value
            }
            if let value = dict["ErAttachmentName"] as? String {
                self.erAttachmentName = value
            }
            if let value = dict["ErId"] as? String {
                self.erId = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceTenantId"] as? String {
                self.resourceTenantId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetErAttachmentResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetErAttachmentResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetErAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetErAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetErAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetErRouteEntryRequest : Tea.TeaModel {
    public var erId: String?

    public var erRouteEntryId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.erRouteEntryId != nil {
            map["ErRouteEntryId"] = self.erRouteEntryId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ErRouteEntryId"] as? String {
            self.erRouteEntryId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetErRouteEntryResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var destinationCidrBlock: String?

        public var erId: String?

        public var erRouteEntryId: String?

        public var gmtModified: String?

        public var nextHopId: String?

        public var nextHopType: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var routeType: String?

        public var status: String?

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
            if self.destinationCidrBlock != nil {
                map["DestinationCidrBlock"] = self.destinationCidrBlock!
            }
            if self.erId != nil {
                map["ErId"] = self.erId!
            }
            if self.erRouteEntryId != nil {
                map["ErRouteEntryId"] = self.erRouteEntryId!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.nextHopId != nil {
                map["NextHopId"] = self.nextHopId!
            }
            if self.nextHopType != nil {
                map["NextHopType"] = self.nextHopType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.routeType != nil {
                map["RouteType"] = self.routeType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DestinationCidrBlock"] as? String {
                self.destinationCidrBlock = value
            }
            if let value = dict["ErId"] as? String {
                self.erId = value
            }
            if let value = dict["ErRouteEntryId"] as? String {
                self.erRouteEntryId = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["NextHopId"] as? String {
                self.nextHopId = value
            }
            if let value = dict["NextHopType"] as? String {
                self.nextHopType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RouteType"] as? String {
                self.routeType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetErRouteEntryResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetErRouteEntryResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetErRouteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetErRouteEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetErRouteEntryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetErRouteMapRequest : Tea.TeaModel {
    public var erId: String?

    public var erRouteMapId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.erRouteMapId != nil {
            map["ErRouteMapId"] = self.erRouteMapId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ErRouteMapId"] as? String {
            self.erRouteMapId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetErRouteMapResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var action: String?

        public var description_: String?

        public var destinationCidrBlock: String?

        public var erId: String?

        public var erRouteMapId: String?

        public var erRouteMapName: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var message: String?

        public var receptionInstanceId: String?

        public var receptionInstanceName: String?

        public var receptionInstanceOwner: String?

        public var receptionInstanceType: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var routeMapNum: Int32?

        public var status: String?

        public var tenantId: String?

        public var transmissionInstanceId: String?

        public var transmissionInstanceName: String?

        public var transmissionInstanceOwner: String?

        public var transmissionInstanceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationCidrBlock != nil {
                map["DestinationCidrBlock"] = self.destinationCidrBlock!
            }
            if self.erId != nil {
                map["ErId"] = self.erId!
            }
            if self.erRouteMapId != nil {
                map["ErRouteMapId"] = self.erRouteMapId!
            }
            if self.erRouteMapName != nil {
                map["ErRouteMapName"] = self.erRouteMapName!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.receptionInstanceId != nil {
                map["ReceptionInstanceId"] = self.receptionInstanceId!
            }
            if self.receptionInstanceName != nil {
                map["ReceptionInstanceName"] = self.receptionInstanceName!
            }
            if self.receptionInstanceOwner != nil {
                map["ReceptionInstanceOwner"] = self.receptionInstanceOwner!
            }
            if self.receptionInstanceType != nil {
                map["ReceptionInstanceType"] = self.receptionInstanceType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.routeMapNum != nil {
                map["RouteMapNum"] = self.routeMapNum!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.transmissionInstanceId != nil {
                map["TransmissionInstanceId"] = self.transmissionInstanceId!
            }
            if self.transmissionInstanceName != nil {
                map["TransmissionInstanceName"] = self.transmissionInstanceName!
            }
            if self.transmissionInstanceOwner != nil {
                map["TransmissionInstanceOwner"] = self.transmissionInstanceOwner!
            }
            if self.transmissionInstanceType != nil {
                map["TransmissionInstanceType"] = self.transmissionInstanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DestinationCidrBlock"] as? String {
                self.destinationCidrBlock = value
            }
            if let value = dict["ErId"] as? String {
                self.erId = value
            }
            if let value = dict["ErRouteMapId"] as? String {
                self.erRouteMapId = value
            }
            if let value = dict["ErRouteMapName"] as? String {
                self.erRouteMapName = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["ReceptionInstanceId"] as? String {
                self.receptionInstanceId = value
            }
            if let value = dict["ReceptionInstanceName"] as? String {
                self.receptionInstanceName = value
            }
            if let value = dict["ReceptionInstanceOwner"] as? String {
                self.receptionInstanceOwner = value
            }
            if let value = dict["ReceptionInstanceType"] as? String {
                self.receptionInstanceType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RouteMapNum"] as? Int32 {
                self.routeMapNum = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["TransmissionInstanceId"] as? String {
                self.transmissionInstanceId = value
            }
            if let value = dict["TransmissionInstanceName"] as? String {
                self.transmissionInstanceName = value
            }
            if let value = dict["TransmissionInstanceOwner"] as? String {
                self.transmissionInstanceOwner = value
            }
            if let value = dict["TransmissionInstanceType"] as? String {
                self.transmissionInstanceType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetErRouteMapResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetErRouteMapResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetErRouteMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetErRouteMapResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetErRouteMapResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFabricTopologyRequest : Tea.TeaModel {
    public var clusterId: String?

    public var lniIds: [String]?

    public var nodeIds: [String]?

    public var regionId: String?

    public var vpcId: String?

    public var vpdId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.lniIds != nil {
            map["LniIds"] = self.lniIds!
        }
        if self.nodeIds != nil {
            map["NodeIds"] = self.nodeIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["LniIds"] as? [String] {
            self.lniIds = value
        }
        if let value = dict["NodeIds"] as? [String] {
            self.nodeIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
    }
}

public class GetFabricTopologyResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class TopoInfo : Tea.TeaModel {
            public var layerName: String?

            public var layerType: String?

            public var nextLayer: [Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.layerName != nil {
                    map["LayerName"] = self.layerName!
                }
                if self.layerType != nil {
                    map["LayerType"] = self.layerType!
                }
                if self.nextLayer != nil {
                    map["NextLayer"] = self.nextLayer!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LayerName"] as? String {
                    self.layerName = value
                }
                if let value = dict["LayerType"] as? String {
                    self.layerType = value
                }
                if let value = dict["NextLayer"] as? [Any] {
                    self.nextLayer = value
                }
            }
        }
        public var clusterId: String?

        public var regionId: String?

        public var topoInfo: [GetFabricTopologyResponseBody.Content.TopoInfo]?

        public var vpcId: String?

        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.topoInfo != nil {
                var tmp : [Any] = []
                for k in self.topoInfo! {
                    tmp.append(k.toMap())
                }
                map["TopoInfo"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["TopoInfo"] as? [Any?] {
                var tmp : [GetFabricTopologyResponseBody.Content.TopoInfo] = []
                for v in value {
                    if v != nil {
                        var model = GetFabricTopologyResponseBody.Content.TopoInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.topoInfo = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetFabricTopologyResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetFabricTopologyResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetFabricTopologyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFabricTopologyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFabricTopologyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLeniPrivateIpAddressRequest : Tea.TeaModel {
    public var elasticNetworkInterfaceId: String?

    public var ipName: String?

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
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
        }
        if self.ipName != nil {
            map["IpName"] = self.ipName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["IpName"] as? String {
            self.ipName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetLeniPrivateIpAddressResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var description_: String?

        public var elasticNetworkInterfaceId: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var ipName: String?

        public var message: String?

        public var privateIpAddress: String?

        public var regionId: String?

        public var resourceGroupId: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.elasticNetworkInterfaceId != nil {
                map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.ipName != nil {
                map["IpName"] = self.ipName!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.privateIpAddress != nil {
                map["PrivateIpAddress"] = self.privateIpAddress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ElasticNetworkInterfaceId"] as? String {
                self.elasticNetworkInterfaceId = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IpName"] as? String {
                self.ipName = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["PrivateIpAddress"] as? String {
                self.privateIpAddress = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetLeniPrivateIpAddressResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetLeniPrivateIpAddressResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLeniPrivateIpAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLeniPrivateIpAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLeniPrivateIpAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLniPrivateIpAddressRequest : Tea.TeaModel {
    public var ipName: String?

    public var networkInterfaceId: String?

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
        if self.ipName != nil {
            map["IpName"] = self.ipName!
        }
        if self.networkInterfaceId != nil {
            map["NetworkInterfaceId"] = self.networkInterfaceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpName"] as? String {
            self.ipName = value
        }
        if let value = dict["NetworkInterfaceId"] as? String {
            self.networkInterfaceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetLniPrivateIpAddressResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var description_: String?

        public var gmtCreate: String?

        public var ipAddressMac: String?

        public var ipName: String?

        public var message: String?

        public var networkInterfaceId: String?

        public var privateIpAddress: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var status: String?

        public var subnetId: String?

        public override init() {
            super.init()
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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.ipAddressMac != nil {
                map["IpAddressMac"] = self.ipAddressMac!
            }
            if self.ipName != nil {
                map["IpName"] = self.ipName!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.privateIpAddress != nil {
                map["PrivateIpAddress"] = self.privateIpAddress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subnetId != nil {
                map["SubnetId"] = self.subnetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["IpAddressMac"] as? String {
                self.ipAddressMac = value
            }
            if let value = dict["IpName"] as? String {
                self.ipName = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NetworkInterfaceId"] as? String {
                self.networkInterfaceId = value
            }
            if let value = dict["PrivateIpAddress"] as? String {
                self.privateIpAddress = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubnetId"] as? String {
                self.subnetId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetLniPrivateIpAddressResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetLniPrivateIpAddressResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLniPrivateIpAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLniPrivateIpAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLniPrivateIpAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNetworkInterfaceRequest : Tea.TeaModel {
    public var networkInterfaceId: String?

    public var regionId: String?

    public var subnetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkInterfaceId != nil {
            map["NetworkInterfaceId"] = self.networkInterfaceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkInterfaceId"] as? String {
            self.networkInterfaceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SubnetId"] as? String {
            self.subnetId = value
        }
    }
}

public class GetNetworkInterfaceResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class PrivateIpAddressMacGroup : Tea.TeaModel {
            public var description_: String?

            public var ipAddressMac: String?

            public var ipName: String?

            public var message: String?

            public var privateIpAddress: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ipAddressMac != nil {
                    map["IpAddressMac"] = self.ipAddressMac!
                }
                if self.ipName != nil {
                    map["IpName"] = self.ipName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.privateIpAddress != nil {
                    map["PrivateIpAddress"] = self.privateIpAddress!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["IpAddressMac"] as? String {
                    self.ipAddressMac = value
                }
                if let value = dict["IpName"] as? String {
                    self.ipName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["PrivateIpAddress"] as? String {
                    self.privateIpAddress = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class SubnetBaseInfo : Tea.TeaModel {
            public var cidr: String?

            public var createTime: String?

            public var subnetId: String?

            public var subnetName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.subnetId != nil {
                    map["SubnetId"] = self.subnetId!
                }
                if self.subnetName != nil {
                    map["SubnetName"] = self.subnetName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cidr"] as? String {
                    self.cidr = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["SubnetId"] as? String {
                    self.subnetId = value
                }
                if let value = dict["SubnetName"] as? String {
                    self.subnetName = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public class VpdBaseInfo : Tea.TeaModel {
            public var cidr: String?

            public var createTime: String?

            public var vpdId: String?

            public var vpdName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                if self.vpdName != nil {
                    map["VpdName"] = self.vpdName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cidr"] as? String {
                    self.cidr = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["VpdId"] as? String {
                    self.vpdId = value
                }
                if let value = dict["VpdName"] as? String {
                    self.vpdName = value
                }
            }
        }
        public var createTime: String?

        public var ethernet: [String]?

        public var gateway: String?

        public var ip: String?

        public var ncType: String?

        public var networkInterfaceId: String?

        public var networkInterfaceName: String?

        public var nodeId: String?

        public var privateIpAddressMacGroup: [GetNetworkInterfaceResponseBody.Content.PrivateIpAddressMacGroup]?

        public var quota: Int32?

        public var regionId: String?

        public var resourceGroupId: String?

        public var serviceMac: String?

        public var status: String?

        public var subnetBaseInfo: GetNetworkInterfaceResponseBody.Content.SubnetBaseInfo?

        public var tags: [GetNetworkInterfaceResponseBody.Content.Tags]?

        public var tenantId: String?

        public var vpdBaseInfo: GetNetworkInterfaceResponseBody.Content.VpdBaseInfo?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.subnetBaseInfo?.validate()
            try self.vpdBaseInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.ethernet != nil {
                map["Ethernet"] = self.ethernet!
            }
            if self.gateway != nil {
                map["Gateway"] = self.gateway!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.ncType != nil {
                map["NcType"] = self.ncType!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.networkInterfaceName != nil {
                map["NetworkInterfaceName"] = self.networkInterfaceName!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.privateIpAddressMacGroup != nil {
                var tmp : [Any] = []
                for k in self.privateIpAddressMacGroup! {
                    tmp.append(k.toMap())
                }
                map["PrivateIpAddressMacGroup"] = tmp
            }
            if self.quota != nil {
                map["Quota"] = self.quota!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.serviceMac != nil {
                map["ServiceMac"] = self.serviceMac!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subnetBaseInfo != nil {
                map["SubnetBaseInfo"] = self.subnetBaseInfo?.toMap()
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.vpdBaseInfo != nil {
                map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Ethernet"] as? [String] {
                self.ethernet = value
            }
            if let value = dict["Gateway"] as? String {
                self.gateway = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["NcType"] as? String {
                self.ncType = value
            }
            if let value = dict["NetworkInterfaceId"] as? String {
                self.networkInterfaceId = value
            }
            if let value = dict["NetworkInterfaceName"] as? String {
                self.networkInterfaceName = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["PrivateIpAddressMacGroup"] as? [Any?] {
                var tmp : [GetNetworkInterfaceResponseBody.Content.PrivateIpAddressMacGroup] = []
                for v in value {
                    if v != nil {
                        var model = GetNetworkInterfaceResponseBody.Content.PrivateIpAddressMacGroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.privateIpAddressMacGroup = tmp
            }
            if let value = dict["Quota"] as? Int32 {
                self.quota = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ServiceMac"] as? String {
                self.serviceMac = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubnetBaseInfo"] as? [String: Any?] {
                var model = GetNetworkInterfaceResponseBody.Content.SubnetBaseInfo()
                model.fromMap(value)
                self.subnetBaseInfo = model
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetNetworkInterfaceResponseBody.Content.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetNetworkInterfaceResponseBody.Content.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["VpdBaseInfo"] as? [String: Any?] {
                var model = GetNetworkInterfaceResponseBody.Content.VpdBaseInfo()
                model.fromMap(value)
                self.vpdBaseInfo = model
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetNetworkInterfaceResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetNetworkInterfaceResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetNetworkInterfaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNetworkInterfaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetNetworkInterfaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNodeInfoForPodRequest : Tea.TeaModel {
    public var nodeId: String?

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
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetNodeInfoForPodResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var clusterId: String?

        public var hdeniIpv6SipQuota: Int32?

        public var hdeniQuota: Int32?

        public var hdeniSipQuota: Int32?

        public var leniIpv6SipQuota: Int32?

        public var leniQuota: Int32?

        public var leniSipQuota: Int32?

        public var lniSipQuota: Int32?

        public var nodeId: String?

        public var regionId: String?

        public var vSwitches: [String]?

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
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.hdeniIpv6SipQuota != nil {
                map["HdeniIpv6SipQuota"] = self.hdeniIpv6SipQuota!
            }
            if self.hdeniQuota != nil {
                map["HdeniQuota"] = self.hdeniQuota!
            }
            if self.hdeniSipQuota != nil {
                map["HdeniSipQuota"] = self.hdeniSipQuota!
            }
            if self.leniIpv6SipQuota != nil {
                map["LeniIpv6SipQuota"] = self.leniIpv6SipQuota!
            }
            if self.leniQuota != nil {
                map["LeniQuota"] = self.leniQuota!
            }
            if self.leniSipQuota != nil {
                map["LeniSipQuota"] = self.leniSipQuota!
            }
            if self.lniSipQuota != nil {
                map["LniSipQuota"] = self.lniSipQuota!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.vSwitches != nil {
                map["VSwitches"] = self.vSwitches!
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
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["HdeniIpv6SipQuota"] as? Int32 {
                self.hdeniIpv6SipQuota = value
            }
            if let value = dict["HdeniQuota"] as? Int32 {
                self.hdeniQuota = value
            }
            if let value = dict["HdeniSipQuota"] as? Int32 {
                self.hdeniSipQuota = value
            }
            if let value = dict["LeniIpv6SipQuota"] as? Int32 {
                self.leniIpv6SipQuota = value
            }
            if let value = dict["LeniQuota"] as? Int32 {
                self.leniQuota = value
            }
            if let value = dict["LeniSipQuota"] as? Int32 {
                self.leniSipQuota = value
            }
            if let value = dict["LniSipQuota"] as? Int32 {
                self.lniSipQuota = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["VSwitches"] as? [String] {
                self.vSwitches = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetNodeInfoForPodResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetNodeInfoForPodResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetNodeInfoForPodResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNodeInfoForPodResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetNodeInfoForPodResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubnetRequest : Tea.TeaModel {
    public var regionId: String?

    public var subnetId: String?

    public var vpdId: String?

    public override init() {
        super.init()
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
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SubnetId"] as? String {
            self.subnetId = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
    }
}

public class GetSubnetResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public class VpdBaseInfo : Tea.TeaModel {
            public var cidr: String?

            public var createTime: String?

            public var vpdId: String?

            public var vpdName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                if self.vpdName != nil {
                    map["VpdName"] = self.vpdName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cidr"] as? String {
                    self.cidr = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["VpdId"] as? String {
                    self.vpdId = value
                }
                if let value = dict["VpdName"] as? String {
                    self.vpdName = value
                }
            }
        }
        public var availableIps: Int32?

        public var cidr: String?

        public var createTime: String?

        public var gmtModified: String?

        public var lbCount: Int64?

        public var message: String?

        public var ncCount: Int32?

        public var networkInterfaceCount: Int32?

        public var privateIpCount: Int64?

        public var regionId: String?

        public var resourceGroupId: String?

        public var status: String?

        public var subnetId: String?

        public var subnetName: String?

        public var tags: [GetSubnetResponseBody.Content.Tags]?

        public var tenantId: String?

        public var type: String?

        public var vpdBaseInfo: GetSubnetResponseBody.Content.VpdBaseInfo?

        public var vpdId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.vpdBaseInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableIps != nil {
                map["AvailableIps"] = self.availableIps!
            }
            if self.cidr != nil {
                map["Cidr"] = self.cidr!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.lbCount != nil {
                map["LbCount"] = self.lbCount!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.ncCount != nil {
                map["NcCount"] = self.ncCount!
            }
            if self.networkInterfaceCount != nil {
                map["NetworkInterfaceCount"] = self.networkInterfaceCount!
            }
            if self.privateIpCount != nil {
                map["PrivateIpCount"] = self.privateIpCount!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subnetId != nil {
                map["SubnetId"] = self.subnetId!
            }
            if self.subnetName != nil {
                map["SubnetName"] = self.subnetName!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.vpdBaseInfo != nil {
                map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableIps"] as? Int32 {
                self.availableIps = value
            }
            if let value = dict["Cidr"] as? String {
                self.cidr = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["LbCount"] as? Int64 {
                self.lbCount = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NcCount"] as? Int32 {
                self.ncCount = value
            }
            if let value = dict["NetworkInterfaceCount"] as? Int32 {
                self.networkInterfaceCount = value
            }
            if let value = dict["PrivateIpCount"] as? Int64 {
                self.privateIpCount = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubnetId"] as? String {
                self.subnetId = value
            }
            if let value = dict["SubnetName"] as? String {
                self.subnetName = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetSubnetResponseBody.Content.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetSubnetResponseBody.Content.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["VpdBaseInfo"] as? [String: Any?] {
                var model = GetSubnetResponseBody.Content.VpdBaseInfo()
                model.fromMap(value)
                self.vpdBaseInfo = model
            }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetSubnetResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetSubnetResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSubnetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubnetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSubnetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVccRequest : Tea.TeaModel {
    public var clientToken: String?

    public var enablePage: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var vccId: String?

    public override init() {
        super.init()
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
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
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
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
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
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
    }
}

public class GetVccResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class AliyunRouterInfo : Tea.TeaModel {
            public var localGatewayIp: String?

            public var mask: String?

            public var pcId: String?

            public var peerGatewayIp: String?

            public var vbrId: String?

            public var vlanId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.localGatewayIp != nil {
                    map["LocalGatewayIp"] = self.localGatewayIp!
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.pcId != nil {
                    map["PcId"] = self.pcId!
                }
                if self.peerGatewayIp != nil {
                    map["PeerGatewayIp"] = self.peerGatewayIp!
                }
                if self.vbrId != nil {
                    map["VbrId"] = self.vbrId!
                }
                if self.vlanId != nil {
                    map["VlanId"] = self.vlanId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LocalGatewayIp"] as? String {
                    self.localGatewayIp = value
                }
                if let value = dict["Mask"] as? String {
                    self.mask = value
                }
                if let value = dict["PcId"] as? String {
                    self.pcId = value
                }
                if let value = dict["PeerGatewayIp"] as? String {
                    self.peerGatewayIp = value
                }
                if let value = dict["VbrId"] as? String {
                    self.vbrId = value
                }
                if let value = dict["VlanId"] as? String {
                    self.vlanId = value
                }
            }
        }
        public class CisRouterInfo : Tea.TeaModel {
            public class CcInfos : Tea.TeaModel {
                public var ccId: String?

                public var localGatewayIp: String?

                public var remoteGatewayIp: String?

                public var status: String?

                public var subnetMask: String?

                public var vlanId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ccId != nil {
                        map["CcId"] = self.ccId!
                    }
                    if self.localGatewayIp != nil {
                        map["LocalGatewayIp"] = self.localGatewayIp!
                    }
                    if self.remoteGatewayIp != nil {
                        map["RemoteGatewayIp"] = self.remoteGatewayIp!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.subnetMask != nil {
                        map["SubnetMask"] = self.subnetMask!
                    }
                    if self.vlanId != nil {
                        map["VlanId"] = self.vlanId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CcId"] as? String {
                        self.ccId = value
                    }
                    if let value = dict["LocalGatewayIp"] as? String {
                        self.localGatewayIp = value
                    }
                    if let value = dict["RemoteGatewayIp"] as? String {
                        self.remoteGatewayIp = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["SubnetMask"] as? String {
                        self.subnetMask = value
                    }
                    if let value = dict["VlanId"] as? String {
                        self.vlanId = value
                    }
                }
            }
            public var ccInfos: [GetVccResponseBody.Content.CisRouterInfo.CcInfos]?

            public var ccrId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ccInfos != nil {
                    var tmp : [Any] = []
                    for k in self.ccInfos! {
                        tmp.append(k.toMap())
                    }
                    map["CcInfos"] = tmp
                }
                if self.ccrId != nil {
                    map["CcrId"] = self.ccrId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CcInfos"] as? [Any?] {
                    var tmp : [GetVccResponseBody.Content.CisRouterInfo.CcInfos] = []
                    for v in value {
                        if v != nil {
                            var model = GetVccResponseBody.Content.CisRouterInfo.CcInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ccInfos = tmp
                }
                if let value = dict["CcrId"] as? String {
                    self.ccrId = value
                }
            }
        }
        public class ErInfos : Tea.TeaModel {
            public var connections: Int64?

            public var createTime: String?

            public var description_: String?

            public var erId: String?

            public var erName: String?

            public var gmtModified: String?

            public var masterZoneId: String?

            public var message: String?

            public var regionId: String?

            public var routeMaps: Int64?

            public var status: String?

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
                if self.connections != nil {
                    map["Connections"] = self.connections!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.erName != nil {
                    map["ErName"] = self.erName!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.masterZoneId != nil {
                    map["MasterZoneId"] = self.masterZoneId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.routeMaps != nil {
                    map["RouteMaps"] = self.routeMaps!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Connections"] as? Int64 {
                    self.connections = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["ErName"] as? String {
                    self.erName = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["MasterZoneId"] as? String {
                    self.masterZoneId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RouteMaps"] as? Int64 {
                    self.routeMaps = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public class VbrInfos : Tea.TeaModel {
            public class VbrBgpPeers : Tea.TeaModel {
                public var bgpGroupId: String?

                public var bgpPeerId: String?

                public var peerAsn: String?

                public var peerIpAddress: String?

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
                    if self.bgpGroupId != nil {
                        map["BgpGroupId"] = self.bgpGroupId!
                    }
                    if self.bgpPeerId != nil {
                        map["BgpPeerId"] = self.bgpPeerId!
                    }
                    if self.peerAsn != nil {
                        map["PeerAsn"] = self.peerAsn!
                    }
                    if self.peerIpAddress != nil {
                        map["PeerIpAddress"] = self.peerIpAddress!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BgpGroupId"] as? String {
                        self.bgpGroupId = value
                    }
                    if let value = dict["BgpPeerId"] as? String {
                        self.bgpPeerId = value
                    }
                    if let value = dict["PeerAsn"] as? String {
                        self.peerAsn = value
                    }
                    if let value = dict["PeerIpAddress"] as? String {
                        self.peerIpAddress = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                }
            }
            public var cenId: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var status: String?

            public var vbrBgpPeers: [GetVccResponseBody.Content.VbrInfos.VbrBgpPeers]?

            public var vbrId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cenId != nil {
                    map["CenId"] = self.cenId!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vbrBgpPeers != nil {
                    var tmp : [Any] = []
                    for k in self.vbrBgpPeers! {
                        tmp.append(k.toMap())
                    }
                    map["VbrBgpPeers"] = tmp
                }
                if self.vbrId != nil {
                    map["VbrId"] = self.vbrId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CenId"] as? String {
                    self.cenId = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["VbrBgpPeers"] as? [Any?] {
                    var tmp : [GetVccResponseBody.Content.VbrInfos.VbrBgpPeers] = []
                    for v in value {
                        if v != nil {
                            var model = GetVccResponseBody.Content.VbrInfos.VbrBgpPeers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.vbrBgpPeers = tmp
                }
                if let value = dict["VbrId"] as? String {
                    self.vbrId = value
                }
            }
        }
        public class VpdBaseInfo : Tea.TeaModel {
            public var cidr: String?

            public var createTime: String?

            public var vpdId: String?

            public var vpdName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                if self.vpdName != nil {
                    map["VpdName"] = self.vpdName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cidr"] as? String {
                    self.cidr = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["VpdId"] as? String {
                    self.vpdId = value
                }
                if let value = dict["VpdName"] as? String {
                    self.vpdName = value
                }
            }
        }
        public var accessPointId: String?

        public var aliyunRouterInfo: [GetVccResponseBody.Content.AliyunRouterInfo]?

        public var attachErStatus: Bool?

        public var bandwidth: Int32?

        public var bandwidthStr: String?

        public var bgpAsn: String?

        public var bgpCidr: String?

        public var cenId: String?

        public var cenOwnerId: String?

        public var cisRouterInfo: [GetVccResponseBody.Content.CisRouterInfo]?

        public var commodityCode: String?

        public var connectionType: String?

        public var createTime: String?

        public var currentNode: String?

        public var duration: String?

        public var erInfos: [GetVccResponseBody.Content.ErInfos]?

        public var expirationDate: String?

        public var gmtModified: String?

        public var internetChargeType: String?

        public var lineOperator: String?

        public var message: String?

        public var payType: String?

        public var portType: String?

        public var pricingCycle: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var spec: String?

        public var status: String?

        public var tags: [GetVccResponseBody.Content.Tags]?

        public var tenantId: String?

        public var vSwitchId: String?

        public var vbrInfos: [GetVccResponseBody.Content.VbrInfos]?

        public var vccId: String?

        public var vccName: String?

        public var vpcId: String?

        public var vpdBaseInfo: GetVccResponseBody.Content.VpdBaseInfo?

        public var vpdId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.vpdBaseInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessPointId != nil {
                map["AccessPointId"] = self.accessPointId!
            }
            if self.aliyunRouterInfo != nil {
                var tmp : [Any] = []
                for k in self.aliyunRouterInfo! {
                    tmp.append(k.toMap())
                }
                map["AliyunRouterInfo"] = tmp
            }
            if self.attachErStatus != nil {
                map["AttachErStatus"] = self.attachErStatus!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.bandwidthStr != nil {
                map["BandwidthStr"] = self.bandwidthStr!
            }
            if self.bgpAsn != nil {
                map["BgpAsn"] = self.bgpAsn!
            }
            if self.bgpCidr != nil {
                map["BgpCidr"] = self.bgpCidr!
            }
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.cenOwnerId != nil {
                map["CenOwnerId"] = self.cenOwnerId!
            }
            if self.cisRouterInfo != nil {
                var tmp : [Any] = []
                for k in self.cisRouterInfo! {
                    tmp.append(k.toMap())
                }
                map["CisRouterInfo"] = tmp
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.connectionType != nil {
                map["ConnectionType"] = self.connectionType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.currentNode != nil {
                map["CurrentNode"] = self.currentNode!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.erInfos != nil {
                var tmp : [Any] = []
                for k in self.erInfos! {
                    tmp.append(k.toMap())
                }
                map["ErInfos"] = tmp
            }
            if self.expirationDate != nil {
                map["ExpirationDate"] = self.expirationDate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.internetChargeType != nil {
                map["InternetChargeType"] = self.internetChargeType!
            }
            if self.lineOperator != nil {
                map["LineOperator"] = self.lineOperator!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.portType != nil {
                map["PortType"] = self.portType!
            }
            if self.pricingCycle != nil {
                map["PricingCycle"] = self.pricingCycle!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vbrInfos != nil {
                var tmp : [Any] = []
                for k in self.vbrInfos! {
                    tmp.append(k.toMap())
                }
                map["VbrInfos"] = tmp
            }
            if self.vccId != nil {
                map["VccId"] = self.vccId!
            }
            if self.vccName != nil {
                map["VccName"] = self.vccName!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpdBaseInfo != nil {
                map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessPointId"] as? String {
                self.accessPointId = value
            }
            if let value = dict["AliyunRouterInfo"] as? [Any?] {
                var tmp : [GetVccResponseBody.Content.AliyunRouterInfo] = []
                for v in value {
                    if v != nil {
                        var model = GetVccResponseBody.Content.AliyunRouterInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.aliyunRouterInfo = tmp
            }
            if let value = dict["AttachErStatus"] as? Bool {
                self.attachErStatus = value
            }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["BandwidthStr"] as? String {
                self.bandwidthStr = value
            }
            if let value = dict["BgpAsn"] as? String {
                self.bgpAsn = value
            }
            if let value = dict["BgpCidr"] as? String {
                self.bgpCidr = value
            }
            if let value = dict["CenId"] as? String {
                self.cenId = value
            }
            if let value = dict["CenOwnerId"] as? String {
                self.cenOwnerId = value
            }
            if let value = dict["CisRouterInfo"] as? [Any?] {
                var tmp : [GetVccResponseBody.Content.CisRouterInfo] = []
                for v in value {
                    if v != nil {
                        var model = GetVccResponseBody.Content.CisRouterInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cisRouterInfo = tmp
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["ConnectionType"] as? String {
                self.connectionType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CurrentNode"] as? String {
                self.currentNode = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["ErInfos"] as? [Any?] {
                var tmp : [GetVccResponseBody.Content.ErInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetVccResponseBody.Content.ErInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.erInfos = tmp
            }
            if let value = dict["ExpirationDate"] as? String {
                self.expirationDate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["InternetChargeType"] as? String {
                self.internetChargeType = value
            }
            if let value = dict["LineOperator"] as? String {
                self.lineOperator = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["PortType"] as? String {
                self.portType = value
            }
            if let value = dict["PricingCycle"] as? String {
                self.pricingCycle = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Spec"] as? String {
                self.spec = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetVccResponseBody.Content.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetVccResponseBody.Content.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VbrInfos"] as? [Any?] {
                var tmp : [GetVccResponseBody.Content.VbrInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetVccResponseBody.Content.VbrInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vbrInfos = tmp
            }
            if let value = dict["VccId"] as? String {
                self.vccId = value
            }
            if let value = dict["VccName"] as? String {
                self.vccName = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpdBaseInfo"] as? [String: Any?] {
                var model = GetVccResponseBody.Content.VpdBaseInfo()
                model.fromMap(value)
                self.vpdBaseInfo = model
            }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetVccResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetVccResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVccResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVccResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVccGrantRuleRequest : Tea.TeaModel {
    public var erId: String?

    public var grantRuleId: String?

    public var grantTenantId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.grantRuleId != nil {
            map["GrantRuleId"] = self.grantRuleId!
        }
        if self.grantTenantId != nil {
            map["GrantTenantId"] = self.grantTenantId!
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
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["GrantRuleId"] as? String {
            self.grantRuleId = value
        }
        if let value = dict["GrantTenantId"] as? String {
            self.grantTenantId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetVccGrantRuleResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var createTime: String?

        public var erId: String?

        public var grantRuleId: String?

        public var grantTenantId: String?

        public var instanceId: String?

        public var instanceName: String?

        public var product: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var tenantId: String?

        public var used: Bool?

        public override init() {
            super.init()
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
            if self.erId != nil {
                map["ErId"] = self.erId!
            }
            if self.grantRuleId != nil {
                map["GrantRuleId"] = self.grantRuleId!
            }
            if self.grantTenantId != nil {
                map["GrantTenantId"] = self.grantTenantId!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.product != nil {
                map["Product"] = self.product!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.used != nil {
                map["Used"] = self.used!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ErId"] as? String {
                self.erId = value
            }
            if let value = dict["GrantRuleId"] as? String {
                self.grantRuleId = value
            }
            if let value = dict["GrantTenantId"] as? String {
                self.grantTenantId = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["Product"] as? String {
                self.product = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["Used"] as? Bool {
                self.used = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetVccGrantRuleResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetVccGrantRuleResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVccGrantRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVccGrantRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVccGrantRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVccRouteEntryRequest : Tea.TeaModel {
    public var regionId: String?

    public var vccId: String?

    public var vccRouteEntryId: String?

    public override init() {
        super.init()
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
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vccRouteEntryId != nil {
            map["VccRouteEntryId"] = self.vccRouteEntryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
        if let value = dict["VccRouteEntryId"] as? String {
            self.vccRouteEntryId = value
        }
    }
}

public class GetVccRouteEntryResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var destinationCidrBlock: String?

        public var gmtModified: String?

        public var message: String?

        public var nextHopId: String?

        public var nextHopType: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var routeType: String?

        public var status: String?

        public var tenantId: String?

        public var vccId: String?

        public var vccRouteEntryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destinationCidrBlock != nil {
                map["DestinationCidrBlock"] = self.destinationCidrBlock!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.nextHopId != nil {
                map["NextHopId"] = self.nextHopId!
            }
            if self.nextHopType != nil {
                map["NextHopType"] = self.nextHopType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.routeType != nil {
                map["RouteType"] = self.routeType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.vccId != nil {
                map["VccId"] = self.vccId!
            }
            if self.vccRouteEntryId != nil {
                map["VccRouteEntryId"] = self.vccRouteEntryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DestinationCidrBlock"] as? String {
                self.destinationCidrBlock = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NextHopId"] as? String {
                self.nextHopId = value
            }
            if let value = dict["NextHopType"] as? String {
                self.nextHopType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RouteType"] as? String {
                self.routeType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["VccId"] as? String {
                self.vccId = value
            }
            if let value = dict["VccRouteEntryId"] as? String {
                self.vccRouteEntryId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetVccRouteEntryResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetVccRouteEntryResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVccRouteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVccRouteEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVccRouteEntryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVpdRequest : Tea.TeaModel {
    public var regionId: String?

    public var vpdId: String?

    public override init() {
        super.init()
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
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
    }
}

public class GetVpdResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class ErInfos : Tea.TeaModel {
            public var connections: Int64?

            public var createTime: String?

            public var description_: String?

            public var erId: String?

            public var erName: String?

            public var gmtModified: String?

            public var masterZoneId: String?

            public var message: String?

            public var regionId: String?

            public var routeMaps: Int64?

            public var status: String?

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
                if self.connections != nil {
                    map["Connections"] = self.connections!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.erName != nil {
                    map["ErName"] = self.erName!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.masterZoneId != nil {
                    map["MasterZoneId"] = self.masterZoneId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.routeMaps != nil {
                    map["RouteMaps"] = self.routeMaps!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Connections"] as? Int64 {
                    self.connections = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["ErName"] as? String {
                    self.erName = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["MasterZoneId"] as? String {
                    self.masterZoneId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RouteMaps"] as? Int64 {
                    self.routeMaps = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var attachErStatus: Bool?

        public var cidr: String?

        public var createTime: String?

        public var erInfos: [GetVpdResponseBody.Content.ErInfos]?

        public var gmtModified: String?

        public var message: String?

        public var ncCount: Int32?

        public var networkInterfaceCount: Int32?

        public var privateIpCount: Int64?

        public var quota: Int32?

        public var regionId: String?

        public var resourceGroupId: String?

        public var secondaryCidrBlocks: [String]?

        public var serviceCidr: String?

        public var status: String?

        public var subnetCount: Int64?

        public var tags: [GetVpdResponseBody.Content.Tags]?

        public var tenantId: String?

        public var vpdId: String?

        public var vpdName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachErStatus != nil {
                map["AttachErStatus"] = self.attachErStatus!
            }
            if self.cidr != nil {
                map["Cidr"] = self.cidr!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.erInfos != nil {
                var tmp : [Any] = []
                for k in self.erInfos! {
                    tmp.append(k.toMap())
                }
                map["ErInfos"] = tmp
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.ncCount != nil {
                map["NcCount"] = self.ncCount!
            }
            if self.networkInterfaceCount != nil {
                map["NetworkInterfaceCount"] = self.networkInterfaceCount!
            }
            if self.privateIpCount != nil {
                map["PrivateIpCount"] = self.privateIpCount!
            }
            if self.quota != nil {
                map["Quota"] = self.quota!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.secondaryCidrBlocks != nil {
                map["SecondaryCidrBlocks"] = self.secondaryCidrBlocks!
            }
            if self.serviceCidr != nil {
                map["ServiceCidr"] = self.serviceCidr!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subnetCount != nil {
                map["SubnetCount"] = self.subnetCount!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            if self.vpdName != nil {
                map["VpdName"] = self.vpdName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachErStatus"] as? Bool {
                self.attachErStatus = value
            }
            if let value = dict["Cidr"] as? String {
                self.cidr = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ErInfos"] as? [Any?] {
                var tmp : [GetVpdResponseBody.Content.ErInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetVpdResponseBody.Content.ErInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.erInfos = tmp
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NcCount"] as? Int32 {
                self.ncCount = value
            }
            if let value = dict["NetworkInterfaceCount"] as? Int32 {
                self.networkInterfaceCount = value
            }
            if let value = dict["PrivateIpCount"] as? Int64 {
                self.privateIpCount = value
            }
            if let value = dict["Quota"] as? Int32 {
                self.quota = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SecondaryCidrBlocks"] as? [String] {
                self.secondaryCidrBlocks = value
            }
            if let value = dict["ServiceCidr"] as? String {
                self.serviceCidr = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubnetCount"] as? Int64 {
                self.subnetCount = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetVpdResponseBody.Content.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetVpdResponseBody.Content.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
            if let value = dict["VpdName"] as? String {
                self.vpdName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetVpdResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetVpdResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVpdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVpdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVpdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVpdGrantRuleRequest : Tea.TeaModel {
    public var erId: String?

    public var grantRuleId: String?

    public var grantTenantId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.grantRuleId != nil {
            map["GrantRuleId"] = self.grantRuleId!
        }
        if self.grantTenantId != nil {
            map["GrantTenantId"] = self.grantTenantId!
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
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["GrantRuleId"] as? String {
            self.grantRuleId = value
        }
        if let value = dict["GrantTenantId"] as? String {
            self.grantTenantId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetVpdGrantRuleResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var createTime: String?

        public var erId: String?

        public var grantRuleId: String?

        public var grantTenantId: String?

        public var instanceId: String?

        public var instanceName: String?

        public var product: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var tenantId: String?

        public var used: Bool?

        public override init() {
            super.init()
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
            if self.erId != nil {
                map["ErId"] = self.erId!
            }
            if self.grantRuleId != nil {
                map["GrantRuleId"] = self.grantRuleId!
            }
            if self.grantTenantId != nil {
                map["GrantTenantId"] = self.grantTenantId!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.product != nil {
                map["Product"] = self.product!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.used != nil {
                map["Used"] = self.used!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ErId"] as? String {
                self.erId = value
            }
            if let value = dict["GrantRuleId"] as? String {
                self.grantRuleId = value
            }
            if let value = dict["GrantTenantId"] as? String {
                self.grantTenantId = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["Product"] as? String {
                self.product = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["Used"] as? Bool {
                self.used = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetVpdGrantRuleResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetVpdGrantRuleResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVpdGrantRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVpdGrantRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVpdGrantRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVpdRouteEntryRequest : Tea.TeaModel {
    public var regionId: String?

    public var vpdId: String?

    public var vpdRouteEntryId: String?

    public override init() {
        super.init()
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
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.vpdRouteEntryId != nil {
            map["VpdRouteEntryId"] = self.vpdRouteEntryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
        if let value = dict["VpdRouteEntryId"] as? String {
            self.vpdRouteEntryId = value
        }
    }
}

public class GetVpdRouteEntryResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var destinationCidrBlock: String?

        public var gmtModified: String?

        public var nextHopId: String?

        public var nextHopType: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var routeType: String?

        public var status: String?

        public var tenantId: String?

        public var vpdId: String?

        public var vpdRouteEntryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.destinationCidrBlock != nil {
                map["DestinationCidrBlock"] = self.destinationCidrBlock!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.nextHopId != nil {
                map["NextHopId"] = self.nextHopId!
            }
            if self.nextHopType != nil {
                map["NextHopType"] = self.nextHopType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.routeType != nil {
                map["RouteType"] = self.routeType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            if self.vpdRouteEntryId != nil {
                map["VpdRouteEntryId"] = self.vpdRouteEntryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DestinationCidrBlock"] as? String {
                self.destinationCidrBlock = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["NextHopId"] as? String {
                self.nextHopId = value
            }
            if let value = dict["NextHopType"] as? String {
                self.nextHopType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RouteType"] as? String {
                self.routeType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
            if let value = dict["VpdRouteEntryId"] as? String {
                self.vpdRouteEntryId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: GetVpdRouteEntryResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = GetVpdRouteEntryResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetVpdRouteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVpdRouteEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVpdRouteEntryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitializeVccRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class InitializeVccResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var requestId: String?

        public var roleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: InitializeVccResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = InitializeVccResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class InitializeVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitializeVccResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InitializeVccResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListElasticNetworkInterfacesRequest : Tea.TeaModel {
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
    public var elasticNetworkInterfaceId: String?

    public var ip: String?

    public var networkType: String?

    public var nodeId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tag: [ListElasticNetworkInterfacesRequest.Tag]?

    public var type: String?

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
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
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
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListElasticNetworkInterfacesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListElasticNetworkInterfacesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

public class ListElasticNetworkInterfacesResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public var createTime: String?

            public var description_: String?

            public var elasticNetworkInterfaceId: String?

            public var gateway: String?

            public var gmtModified: String?

            public var ip: String?

            public var mac: String?

            public var mask: String?

            public var message: String?

            public var nodeId: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var securityGroupId: String?

            public var status: String?

            public var tags: [ListElasticNetworkInterfacesResponseBody.Content.Data.Tags]?

            public var type: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.elasticNetworkInterfaceId != nil {
                    map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
                }
                if self.gateway != nil {
                    map["Gateway"] = self.gateway!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.mac != nil {
                    map["Mac"] = self.mac!
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.type != nil {
                    map["Type"] = self.type!
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
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ElasticNetworkInterfaceId"] as? String {
                    self.elasticNetworkInterfaceId = value
                }
                if let value = dict["Gateway"] as? String {
                    self.gateway = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["Mac"] as? String {
                    self.mac = value
                }
                if let value = dict["Mask"] as? String {
                    self.mask = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["SecurityGroupId"] as? String {
                    self.securityGroupId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [ListElasticNetworkInterfacesResponseBody.Content.Data.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListElasticNetworkInterfacesResponseBody.Content.Data.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["Type"] as? String {
                    self.type = value
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
        public var data: [ListElasticNetworkInterfacesResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListElasticNetworkInterfacesResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListElasticNetworkInterfacesResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListElasticNetworkInterfacesResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListElasticNetworkInterfacesResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListElasticNetworkInterfacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListElasticNetworkInterfacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListElasticNetworkInterfacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListErAttachmentsRequest : Tea.TeaModel {
    public var autoReceiveAllRoute: Bool?

    public var enablePage: Bool?

    public var erAttachmentId: String?

    public var erAttachmentName: String?

    public var erId: String?

    public var instanceId: String?

    public var instanceType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceTenantId: String?

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
        if self.autoReceiveAllRoute != nil {
            map["AutoReceiveAllRoute"] = self.autoReceiveAllRoute!
        }
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.erAttachmentId != nil {
            map["ErAttachmentId"] = self.erAttachmentId!
        }
        if self.erAttachmentName != nil {
            map["ErAttachmentName"] = self.erAttachmentName!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
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
        if self.resourceTenantId != nil {
            map["ResourceTenantId"] = self.resourceTenantId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoReceiveAllRoute"] as? Bool {
            self.autoReceiveAllRoute = value
        }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["ErAttachmentId"] as? String {
            self.erAttachmentId = value
        }
        if let value = dict["ErAttachmentName"] as? String {
            self.erAttachmentName = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
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
        if let value = dict["ResourceTenantId"] as? String {
            self.resourceTenantId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListErAttachmentsResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var across: Bool?

            public var autoReceiveAllRoute: Bool?

            public var createTime: String?

            public var erAttachmentId: String?

            public var erAttachmentName: String?

            public var erId: String?

            public var gmtModified: String?

            public var instanceId: String?

            public var instanceName: String?

            public var instanceType: String?

            public var message: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var resourceTenantId: String?

            public var status: String?

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
                if self.across != nil {
                    map["Across"] = self.across!
                }
                if self.autoReceiveAllRoute != nil {
                    map["AutoReceiveAllRoute"] = self.autoReceiveAllRoute!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.erAttachmentId != nil {
                    map["ErAttachmentId"] = self.erAttachmentId!
                }
                if self.erAttachmentName != nil {
                    map["ErAttachmentName"] = self.erAttachmentName!
                }
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.resourceTenantId != nil {
                    map["ResourceTenantId"] = self.resourceTenantId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Across"] as? Bool {
                    self.across = value
                }
                if let value = dict["AutoReceiveAllRoute"] as? Bool {
                    self.autoReceiveAllRoute = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["ErAttachmentId"] as? String {
                    self.erAttachmentId = value
                }
                if let value = dict["ErAttachmentName"] as? String {
                    self.erAttachmentName = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ResourceTenantId"] as? String {
                    self.resourceTenantId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
            }
        }
        public var data: [ListErAttachmentsResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListErAttachmentsResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListErAttachmentsResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListErAttachmentsResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListErAttachmentsResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListErAttachmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListErAttachmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListErAttachmentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListErRouteEntriesRequest : Tea.TeaModel {
    public var destinationCidrBlock: String?

    public var enablePage: Bool?

    public var erId: String?

    public var ignoreDetailedRouteEntry: Bool?

    public var instanceId: String?

    public var nextHopId: String?

    public var nextHopType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var routeType: String?

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
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.ignoreDetailedRouteEntry != nil {
            map["IgnoreDetailedRouteEntry"] = self.ignoreDetailedRouteEntry!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nextHopId != nil {
            map["NextHopId"] = self.nextHopId!
        }
        if self.nextHopType != nil {
            map["NextHopType"] = self.nextHopType!
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
        if self.routeType != nil {
            map["RouteType"] = self.routeType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationCidrBlock"] as? String {
            self.destinationCidrBlock = value
        }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["IgnoreDetailedRouteEntry"] as? Bool {
            self.ignoreDetailedRouteEntry = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["NextHopId"] as? String {
            self.nextHopId = value
        }
        if let value = dict["NextHopType"] as? String {
            self.nextHopType = value
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
        if let value = dict["RouteType"] as? String {
            self.routeType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListErRouteEntriesResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var destinationCidrBlock: String?

            public var erId: String?

            public var erRouteEntryId: String?

            public var gmtModified: String?

            public var nextHopId: String?

            public var nextHopType: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var resourceTenantId: String?

            public var routeType: String?

            public var status: String?

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
                if self.destinationCidrBlock != nil {
                    map["DestinationCidrBlock"] = self.destinationCidrBlock!
                }
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.erRouteEntryId != nil {
                    map["ErRouteEntryId"] = self.erRouteEntryId!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.nextHopId != nil {
                    map["NextHopId"] = self.nextHopId!
                }
                if self.nextHopType != nil {
                    map["NextHopType"] = self.nextHopType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.resourceTenantId != nil {
                    map["ResourceTenantId"] = self.resourceTenantId!
                }
                if self.routeType != nil {
                    map["RouteType"] = self.routeType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DestinationCidrBlock"] as? String {
                    self.destinationCidrBlock = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["ErRouteEntryId"] as? String {
                    self.erRouteEntryId = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["NextHopId"] as? String {
                    self.nextHopId = value
                }
                if let value = dict["NextHopType"] as? String {
                    self.nextHopType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ResourceTenantId"] as? String {
                    self.resourceTenantId = value
                }
                if let value = dict["RouteType"] as? String {
                    self.routeType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
            }
        }
        public var data: [ListErRouteEntriesResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListErRouteEntriesResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListErRouteEntriesResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListErRouteEntriesResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListErRouteEntriesResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListErRouteEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListErRouteEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListErRouteEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListErRouteMapsRequest : Tea.TeaModel {
    public var destinationCidrBlock: String?

    public var enablePage: Bool?

    public var erId: String?

    public var erRouteMapId: String?

    public var erRouteMapNum: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var receptionInstanceId: String?

    public var receptionInstanceName: String?

    public var receptionInstanceType: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var routeMapAction: String?

    public var transmissionInstanceId: String?

    public var transmissionInstanceName: String?

    public var transmissionInstanceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.erRouteMapId != nil {
            map["ErRouteMapId"] = self.erRouteMapId!
        }
        if self.erRouteMapNum != nil {
            map["ErRouteMapNum"] = self.erRouteMapNum!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.receptionInstanceId != nil {
            map["ReceptionInstanceId"] = self.receptionInstanceId!
        }
        if self.receptionInstanceName != nil {
            map["ReceptionInstanceName"] = self.receptionInstanceName!
        }
        if self.receptionInstanceType != nil {
            map["ReceptionInstanceType"] = self.receptionInstanceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.routeMapAction != nil {
            map["RouteMapAction"] = self.routeMapAction!
        }
        if self.transmissionInstanceId != nil {
            map["TransmissionInstanceId"] = self.transmissionInstanceId!
        }
        if self.transmissionInstanceName != nil {
            map["TransmissionInstanceName"] = self.transmissionInstanceName!
        }
        if self.transmissionInstanceType != nil {
            map["TransmissionInstanceType"] = self.transmissionInstanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationCidrBlock"] as? String {
            self.destinationCidrBlock = value
        }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ErRouteMapId"] as? String {
            self.erRouteMapId = value
        }
        if let value = dict["ErRouteMapNum"] as? Int32 {
            self.erRouteMapNum = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReceptionInstanceId"] as? String {
            self.receptionInstanceId = value
        }
        if let value = dict["ReceptionInstanceName"] as? String {
            self.receptionInstanceName = value
        }
        if let value = dict["ReceptionInstanceType"] as? String {
            self.receptionInstanceType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RouteMapAction"] as? String {
            self.routeMapAction = value
        }
        if let value = dict["TransmissionInstanceId"] as? String {
            self.transmissionInstanceId = value
        }
        if let value = dict["TransmissionInstanceName"] as? String {
            self.transmissionInstanceName = value
        }
        if let value = dict["TransmissionInstanceType"] as? String {
            self.transmissionInstanceType = value
        }
    }
}

public class ListErRouteMapsResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var action: String?

            public var createTime: String?

            public var description_: String?

            public var destinationCidrBlock: String?

            public var erId: String?

            public var erRouteMapId: String?

            public var gmtModified: String?

            public var message: String?

            public var receptionInstanceId: String?

            public var receptionInstanceName: String?

            public var receptionInstanceOwner: String?

            public var receptionInstanceType: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var routeMapNum: Int32?

            public var status: String?

            public var tenantId: String?

            public var transmissionInstanceId: String?

            public var transmissionInstanceName: String?

            public var transmissionInstanceOwner: String?

            public var transmissionInstanceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.destinationCidrBlock != nil {
                    map["DestinationCidrBlock"] = self.destinationCidrBlock!
                }
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.erRouteMapId != nil {
                    map["ErRouteMapId"] = self.erRouteMapId!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.receptionInstanceId != nil {
                    map["ReceptionInstanceId"] = self.receptionInstanceId!
                }
                if self.receptionInstanceName != nil {
                    map["ReceptionInstanceName"] = self.receptionInstanceName!
                }
                if self.receptionInstanceOwner != nil {
                    map["ReceptionInstanceOwner"] = self.receptionInstanceOwner!
                }
                if self.receptionInstanceType != nil {
                    map["ReceptionInstanceType"] = self.receptionInstanceType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.routeMapNum != nil {
                    map["RouteMapNum"] = self.routeMapNum!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.transmissionInstanceId != nil {
                    map["TransmissionInstanceId"] = self.transmissionInstanceId!
                }
                if self.transmissionInstanceName != nil {
                    map["TransmissionInstanceName"] = self.transmissionInstanceName!
                }
                if self.transmissionInstanceOwner != nil {
                    map["TransmissionInstanceOwner"] = self.transmissionInstanceOwner!
                }
                if self.transmissionInstanceType != nil {
                    map["TransmissionInstanceType"] = self.transmissionInstanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DestinationCidrBlock"] as? String {
                    self.destinationCidrBlock = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["ErRouteMapId"] as? String {
                    self.erRouteMapId = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["ReceptionInstanceId"] as? String {
                    self.receptionInstanceId = value
                }
                if let value = dict["ReceptionInstanceName"] as? String {
                    self.receptionInstanceName = value
                }
                if let value = dict["ReceptionInstanceOwner"] as? String {
                    self.receptionInstanceOwner = value
                }
                if let value = dict["ReceptionInstanceType"] as? String {
                    self.receptionInstanceType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["RouteMapNum"] as? Int32 {
                    self.routeMapNum = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["TransmissionInstanceId"] as? String {
                    self.transmissionInstanceId = value
                }
                if let value = dict["TransmissionInstanceName"] as? String {
                    self.transmissionInstanceName = value
                }
                if let value = dict["TransmissionInstanceOwner"] as? String {
                    self.transmissionInstanceOwner = value
                }
                if let value = dict["TransmissionInstanceType"] as? String {
                    self.transmissionInstanceType = value
                }
            }
        }
        public var data: [ListErRouteMapsResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListErRouteMapsResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListErRouteMapsResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListErRouteMapsResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListErRouteMapsResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListErRouteMapsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListErRouteMapsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListErRouteMapsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListErsRequest : Tea.TeaModel {
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
    public var enablePage: Bool?

    public var erId: String?

    public var erName: String?

    public var instanceId: String?

    public var instanceType: String?

    public var masterZoneId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [ListErsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.erName != nil {
            map["ErName"] = self.erName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.masterZoneId != nil {
            map["MasterZoneId"] = self.masterZoneId!
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
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ErName"] as? String {
            self.erName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["MasterZoneId"] as? String {
            self.masterZoneId = value
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
            var tmp : [ListErsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListErsRequest.Tag()
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

public class ListErsResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public var connections: Int64?

            public var createTime: String?

            public var description_: String?

            public var erId: String?

            public var erName: String?

            public var gmtModified: String?

            public var masterZoneId: String?

            public var message: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var routeMaps: Int64?

            public var status: String?

            public var tags: [ListErsResponseBody.Content.Data.Tags]?

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
                if self.connections != nil {
                    map["Connections"] = self.connections!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.erName != nil {
                    map["ErName"] = self.erName!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.masterZoneId != nil {
                    map["MasterZoneId"] = self.masterZoneId!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.routeMaps != nil {
                    map["RouteMaps"] = self.routeMaps!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Connections"] as? Int64 {
                    self.connections = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["ErName"] as? String {
                    self.erName = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["MasterZoneId"] as? String {
                    self.masterZoneId = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["RouteMaps"] as? Int64 {
                    self.routeMaps = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [ListErsResponseBody.Content.Data.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListErsResponseBody.Content.Data.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
            }
        }
        public var data: [ListErsResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListErsResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListErsResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListErsResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListErsResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListErsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListErsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListErsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesByNcdRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceType: String?

    public var maxNcd: Int32?

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
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.maxNcd != nil {
            map["MaxNcd"] = self.maxNcd!
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
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["MaxNcd"] as? Int32 {
            self.maxNcd = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListInstancesByNcdResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class InstanceInfos : Tea.TeaModel {
            public var instanceId: String?

            public var ncd: Int32?

            public override init() {
                super.init()
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
                if self.ncd != nil {
                    map["Ncd"] = self.ncd!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Ncd"] as? Int32 {
                    self.ncd = value
                }
            }
        }
        public var instanceInfos: [ListInstancesByNcdResponseBody.Content.InstanceInfos]?

        public var instanceType: String?

        public var maxNcd: Int32?

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
            if self.instanceInfos != nil {
                var tmp : [Any] = []
                for k in self.instanceInfos! {
                    tmp.append(k.toMap())
                }
                map["InstanceInfos"] = tmp
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.maxNcd != nil {
                map["MaxNcd"] = self.maxNcd!
            }
            if self.sourceInstanceId != nil {
                map["SourceInstanceId"] = self.sourceInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceInfos"] as? [Any?] {
                var tmp : [ListInstancesByNcdResponseBody.Content.InstanceInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesByNcdResponseBody.Content.InstanceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceInfos = tmp
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["MaxNcd"] as? Int32 {
                self.maxNcd = value
            }
            if let value = dict["SourceInstanceId"] as? String {
                self.sourceInstanceId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListInstancesByNcdResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListInstancesByNcdResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstancesByNcdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesByNcdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstancesByNcdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLeniPrivateIpAddressesRequest : Tea.TeaModel {
    public var elasticNetworkInterfaceId: String?

    public var ipName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var privateIpAddress: String?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
        }
        if self.ipName != nil {
            map["IpName"] = self.ipName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["IpName"] as? String {
            self.ipName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrivateIpAddress"] as? String {
            self.privateIpAddress = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListLeniPrivateIpAddressesResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var description_: String?

            public var elasticNetworkInterfaceId: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var ipName: String?

            public var message: String?

            public var privateIpAddress: String?

            public var regionId: String?

            public var resourceGroupId: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.elasticNetworkInterfaceId != nil {
                    map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.ipName != nil {
                    map["IpName"] = self.ipName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.privateIpAddress != nil {
                    map["PrivateIpAddress"] = self.privateIpAddress!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ElasticNetworkInterfaceId"] as? String {
                    self.elasticNetworkInterfaceId = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["IpName"] as? String {
                    self.ipName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["PrivateIpAddress"] as? String {
                    self.privateIpAddress = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var data: [ListLeniPrivateIpAddressesResponseBody.Content.Data]?

        public var resourceGroupId: String?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListLeniPrivateIpAddressesResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListLeniPrivateIpAddressesResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListLeniPrivateIpAddressesResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListLeniPrivateIpAddressesResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListLeniPrivateIpAddressesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLeniPrivateIpAddressesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLeniPrivateIpAddressesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLniPrivateIpAddressRequest : Tea.TeaModel {
    public var description_: String?

    public var enablePage: Bool?

    public var ip: String?

    public var ipName: String?

    public var networkInterfaceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.ipName != nil {
            map["IpName"] = self.ipName!
        }
        if self.networkInterfaceId != nil {
            map["NetworkInterfaceId"] = self.networkInterfaceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["IpName"] as? String {
            self.ipName = value
        }
        if let value = dict["NetworkInterfaceId"] as? String {
            self.networkInterfaceId = value
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
    }
}

public class ListLniPrivateIpAddressResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var description_: String?

            public var gmtCreate: String?

            public var ipAddressMac: String?

            public var ipName: String?

            public var message: String?

            public var networkInterfaceId: String?

            public var privateIpAddress: String?

            public var regionId: String?

            public var resourceGroupId: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.ipAddressMac != nil {
                    map["IpAddressMac"] = self.ipAddressMac!
                }
                if self.ipName != nil {
                    map["IpName"] = self.ipName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.networkInterfaceId != nil {
                    map["NetworkInterfaceId"] = self.networkInterfaceId!
                }
                if self.privateIpAddress != nil {
                    map["PrivateIpAddress"] = self.privateIpAddress!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["IpAddressMac"] as? String {
                    self.ipAddressMac = value
                }
                if let value = dict["IpName"] as? String {
                    self.ipName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["NetworkInterfaceId"] as? String {
                    self.networkInterfaceId = value
                }
                if let value = dict["PrivateIpAddress"] as? String {
                    self.privateIpAddress = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var data: [ListLniPrivateIpAddressResponseBody.Content.Data]?

        public var resourceGroupId: String?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListLniPrivateIpAddressResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListLniPrivateIpAddressResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListLniPrivateIpAddressResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListLniPrivateIpAddressResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListLniPrivateIpAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLniPrivateIpAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLniPrivateIpAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNetworkInterfacesRequest : Tea.TeaModel {
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
    public var enablePage: Bool?

    public var ip: String?

    public var networkInterfaceId: String?

    public var nodeId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var subnetId: String?

    public var tag: [ListNetworkInterfacesRequest.Tag]?

    public var vpdId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.networkInterfaceId != nil {
            map["NetworkInterfaceId"] = self.networkInterfaceId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
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
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["NetworkInterfaceId"] as? String {
            self.networkInterfaceId = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
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
        if let value = dict["SubnetId"] as? String {
            self.subnetId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListNetworkInterfacesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListNetworkInterfacesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
    }
}

public class ListNetworkInterfacesResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class PrivateIpAddressMacGroup : Tea.TeaModel {
                public var description_: String?

                public var ipAddressMac: String?

                public var ipName: String?

                public var message: String?

                public var privateIpAddress: String?

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
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.ipAddressMac != nil {
                        map["IpAddressMac"] = self.ipAddressMac!
                    }
                    if self.ipName != nil {
                        map["IpName"] = self.ipName!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.privateIpAddress != nil {
                        map["PrivateIpAddress"] = self.privateIpAddress!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["IpAddressMac"] as? String {
                        self.ipAddressMac = value
                    }
                    if let value = dict["IpName"] as? String {
                        self.ipName = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["PrivateIpAddress"] as? String {
                        self.privateIpAddress = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                }
            }
            public class SubnetBaseInfo : Tea.TeaModel {
                public var cidr: String?

                public var createTime: String?

                public var subnetId: String?

                public var subnetName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cidr != nil {
                        map["Cidr"] = self.cidr!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.subnetId != nil {
                        map["SubnetId"] = self.subnetId!
                    }
                    if self.subnetName != nil {
                        map["SubnetName"] = self.subnetName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cidr"] as? String {
                        self.cidr = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["SubnetId"] as? String {
                        self.subnetId = value
                    }
                    if let value = dict["SubnetName"] as? String {
                        self.subnetName = value
                    }
                }
            }
            public class Tags : Tea.TeaModel {
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
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public class VpdBaseInfo : Tea.TeaModel {
                public var cidr: String?

                public var createTime: String?

                public var vpdId: String?

                public var vpdName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cidr != nil {
                        map["Cidr"] = self.cidr!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.vpdId != nil {
                        map["VpdId"] = self.vpdId!
                    }
                    if self.vpdName != nil {
                        map["VpdName"] = self.vpdName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cidr"] as? String {
                        self.cidr = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["VpdId"] as? String {
                        self.vpdId = value
                    }
                    if let value = dict["VpdName"] as? String {
                        self.vpdName = value
                    }
                }
            }
            public var createTime: String?

            public var ethernet: [String]?

            public var gateway: String?

            public var ip: String?

            public var ncType: String?

            public var networkInterfaceId: String?

            public var networkInterfaceName: String?

            public var nodeId: String?

            public var privateIpAddressMacGroup: [ListNetworkInterfacesResponseBody.Content.Data.PrivateIpAddressMacGroup]?

            public var quota: Int32?

            public var regionId: String?

            public var resourceGroupId: String?

            public var serviceMac: String?

            public var status: String?

            public var subnetBaseInfo: ListNetworkInterfacesResponseBody.Content.Data.SubnetBaseInfo?

            public var tags: [ListNetworkInterfacesResponseBody.Content.Data.Tags]?

            public var tenantId: String?

            public var vpdBaseInfo: ListNetworkInterfacesResponseBody.Content.Data.VpdBaseInfo?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.subnetBaseInfo?.validate()
                try self.vpdBaseInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.ethernet != nil {
                    map["Ethernet"] = self.ethernet!
                }
                if self.gateway != nil {
                    map["Gateway"] = self.gateway!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.ncType != nil {
                    map["NcType"] = self.ncType!
                }
                if self.networkInterfaceId != nil {
                    map["NetworkInterfaceId"] = self.networkInterfaceId!
                }
                if self.networkInterfaceName != nil {
                    map["NetworkInterfaceName"] = self.networkInterfaceName!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.privateIpAddressMacGroup != nil {
                    var tmp : [Any] = []
                    for k in self.privateIpAddressMacGroup! {
                        tmp.append(k.toMap())
                    }
                    map["PrivateIpAddressMacGroup"] = tmp
                }
                if self.quota != nil {
                    map["Quota"] = self.quota!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.serviceMac != nil {
                    map["ServiceMac"] = self.serviceMac!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subnetBaseInfo != nil {
                    map["SubnetBaseInfo"] = self.subnetBaseInfo?.toMap()
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.vpdBaseInfo != nil {
                    map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Ethernet"] as? [String] {
                    self.ethernet = value
                }
                if let value = dict["Gateway"] as? String {
                    self.gateway = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["NcType"] as? String {
                    self.ncType = value
                }
                if let value = dict["NetworkInterfaceId"] as? String {
                    self.networkInterfaceId = value
                }
                if let value = dict["NetworkInterfaceName"] as? String {
                    self.networkInterfaceName = value
                }
                if let value = dict["NodeId"] as? String {
                    self.nodeId = value
                }
                if let value = dict["PrivateIpAddressMacGroup"] as? [Any?] {
                    var tmp : [ListNetworkInterfacesResponseBody.Content.Data.PrivateIpAddressMacGroup] = []
                    for v in value {
                        if v != nil {
                            var model = ListNetworkInterfacesResponseBody.Content.Data.PrivateIpAddressMacGroup()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.privateIpAddressMacGroup = tmp
                }
                if let value = dict["Quota"] as? Int32 {
                    self.quota = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ServiceMac"] as? String {
                    self.serviceMac = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SubnetBaseInfo"] as? [String: Any?] {
                    var model = ListNetworkInterfacesResponseBody.Content.Data.SubnetBaseInfo()
                    model.fromMap(value)
                    self.subnetBaseInfo = model
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [ListNetworkInterfacesResponseBody.Content.Data.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListNetworkInterfacesResponseBody.Content.Data.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["VpdBaseInfo"] as? [String: Any?] {
                    var model = ListNetworkInterfacesResponseBody.Content.Data.VpdBaseInfo()
                    model.fromMap(value)
                    self.vpdBaseInfo = model
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var data: [ListNetworkInterfacesResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListNetworkInterfacesResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListNetworkInterfacesResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListNetworkInterfacesResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListNetworkInterfacesResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListNetworkInterfacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNetworkInterfacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNetworkInterfacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNodeInfosForPodRequest : Tea.TeaModel {
    public var clusterId: String?

    public var nodeId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class ListNodeInfosForPodResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var clusterId: String?

        public var hdeniQuota: Int32?

        public var leniQuota: Int32?

        public var leniSipQuota: Int32?

        public var lniSipQuota: Int32?

        public var nodeId: String?

        public var regionId: String?

        public var vSwitches: [String]?

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
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.hdeniQuota != nil {
                map["HdeniQuota"] = self.hdeniQuota!
            }
            if self.leniQuota != nil {
                map["LeniQuota"] = self.leniQuota!
            }
            if self.leniSipQuota != nil {
                map["LeniSipQuota"] = self.leniSipQuota!
            }
            if self.lniSipQuota != nil {
                map["LniSipQuota"] = self.lniSipQuota!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.vSwitches != nil {
                map["VSwitches"] = self.vSwitches!
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
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["HdeniQuota"] as? Int32 {
                self.hdeniQuota = value
            }
            if let value = dict["LeniQuota"] as? Int32 {
                self.leniQuota = value
            }
            if let value = dict["LeniSipQuota"] as? Int32 {
                self.leniSipQuota = value
            }
            if let value = dict["LniSipQuota"] as? Int32 {
                self.lniSipQuota = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["VSwitches"] as? [String] {
                self.vSwitches = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: [ListNodeInfosForPodResponseBody.Content]?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            var tmp : [Any] = []
            for k in self.content! {
                tmp.append(k.toMap())
            }
            map["Content"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [Any?] {
            var tmp : [ListNodeInfosForPodResponseBody.Content] = []
            for v in value {
                if v != nil {
                    var model = ListNodeInfosForPodResponseBody.Content()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.content = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListNodeInfosForPodResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeInfosForPodResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNodeInfosForPodResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubnetsRequest : Tea.TeaModel {
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
    public var enablePage: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var subnetId: String?

    public var subnetName: String?

    public var tag: [ListSubnetsRequest.Tag]?

    public var type: String?

    public var vpdId: String?

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
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        if self.subnetName != nil {
            map["SubnetName"] = self.subnetName!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubnetId"] as? String {
            self.subnetId = value
        }
        if let value = dict["SubnetName"] as? String {
            self.subnetName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListSubnetsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListSubnetsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class ListSubnetsResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public class VpdBaseInfo : Tea.TeaModel {
                public var cidr: String?

                public var createTime: String?

                public var vpdId: String?

                public var vpdName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cidr != nil {
                        map["Cidr"] = self.cidr!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.vpdId != nil {
                        map["VpdId"] = self.vpdId!
                    }
                    if self.vpdName != nil {
                        map["VpdName"] = self.vpdName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cidr"] as? String {
                        self.cidr = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["VpdId"] as? String {
                        self.vpdId = value
                    }
                    if let value = dict["VpdName"] as? String {
                        self.vpdName = value
                    }
                }
            }
            public var cidr: String?

            public var createTime: String?

            public var gmtModified: String?

            public var message: String?

            public var ncCount: Int32?

            public var networkInterfaceCount: Int32?

            public var regionId: String?

            public var resourceGroupId: String?

            public var status: String?

            public var subnetId: String?

            public var subnetName: String?

            public var tags: [ListSubnetsResponseBody.Content.Data.Tags]?

            public var tenantId: String?

            public var type: String?

            public var vpdBaseInfo: ListSubnetsResponseBody.Content.Data.VpdBaseInfo?

            public var vpdId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpdBaseInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.ncCount != nil {
                    map["NcCount"] = self.ncCount!
                }
                if self.networkInterfaceCount != nil {
                    map["NetworkInterfaceCount"] = self.networkInterfaceCount!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subnetId != nil {
                    map["SubnetId"] = self.subnetId!
                }
                if self.subnetName != nil {
                    map["SubnetName"] = self.subnetName!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.vpdBaseInfo != nil {
                    map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cidr"] as? String {
                    self.cidr = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["NcCount"] as? Int32 {
                    self.ncCount = value
                }
                if let value = dict["NetworkInterfaceCount"] as? Int32 {
                    self.networkInterfaceCount = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SubnetId"] as? String {
                    self.subnetId = value
                }
                if let value = dict["SubnetName"] as? String {
                    self.subnetName = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [ListSubnetsResponseBody.Content.Data.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListSubnetsResponseBody.Content.Data.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["VpdBaseInfo"] as? [String: Any?] {
                    var model = ListSubnetsResponseBody.Content.Data.VpdBaseInfo()
                    model.fromMap(value)
                    self.vpdBaseInfo = model
                }
                if let value = dict["VpdId"] as? String {
                    self.vpdId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var data: [ListSubnetsResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListSubnetsResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListSubnetsResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListSubnetsResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListSubnetsResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSubnetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubnetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSubnetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVccFlowInfosRequest : Tea.TeaModel {
    public var direction: String?

    public var from: Int64?

    public var metricName: String?

    public var regionId: String?

    public var to: Int64?

    public var vccId: String?

    public override init() {
        super.init()
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
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["From"] as? Int64 {
            self.from = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["To"] as? Int64 {
            self.to = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
    }
}

public class ListVccFlowInfosResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var direction: String?

            public var metricName: String?

            public var regionId: String?

            public var timestamp: Int64?

            public var value: Double?

            public var vccId: String?

            public override init() {
                super.init()
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
                if self.metricName != nil {
                    map["MetricName"] = self.metricName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.vccId != nil {
                    map["VccId"] = self.vccId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Direction"] as? String {
                    self.direction = value
                }
                if let value = dict["MetricName"] as? String {
                    self.metricName = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Timestamp"] as? Int64 {
                    self.timestamp = value
                }
                if let value = dict["Value"] as? Double {
                    self.value = value
                }
                if let value = dict["VccId"] as? String {
                    self.vccId = value
                }
            }
        }
        public var data: [ListVccFlowInfosResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListVccFlowInfosResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListVccFlowInfosResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListVccFlowInfosResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListVccFlowInfosResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVccFlowInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVccFlowInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVccFlowInfosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVccGrantRulesRequest : Tea.TeaModel {
    public var enablePage: Bool?

    public var erId: String?

    public var forSelect: Bool?

    public var grantRuleId: String?

    public var grantTenantId: String?

    public var instanceId: String?

    public var instanceName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.forSelect != nil {
            map["ForSelect"] = self.forSelect!
        }
        if self.grantRuleId != nil {
            map["GrantRuleId"] = self.grantRuleId!
        }
        if self.grantTenantId != nil {
            map["GrantTenantId"] = self.grantTenantId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ForSelect"] as? Bool {
            self.forSelect = value
        }
        if let value = dict["GrantRuleId"] as? String {
            self.grantRuleId = value
        }
        if let value = dict["GrantTenantId"] as? String {
            self.grantTenantId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
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
    }
}

public class ListVccGrantRulesResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var createTime: String?

            public var erId: String?

            public var grantRuleId: String?

            public var grantTenantId: String?

            public var instanceId: String?

            public var instanceName: String?

            public var product: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var tenantId: String?

            public var used: Bool?

            public override init() {
                super.init()
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
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.grantRuleId != nil {
                    map["GrantRuleId"] = self.grantRuleId!
                }
                if self.grantTenantId != nil {
                    map["GrantTenantId"] = self.grantTenantId!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.product != nil {
                    map["Product"] = self.product!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.used != nil {
                    map["Used"] = self.used!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["GrantRuleId"] as? String {
                    self.grantRuleId = value
                }
                if let value = dict["GrantTenantId"] as? String {
                    self.grantTenantId = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["Product"] as? String {
                    self.product = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["Used"] as? Bool {
                    self.used = value
                }
            }
        }
        public var data: [ListVccGrantRulesResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListVccGrantRulesResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListVccGrantRulesResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListVccGrantRulesResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListVccGrantRulesResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVccGrantRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVccGrantRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVccGrantRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVccRouteEntriesRequest : Tea.TeaModel {
    public var destinationCidrBlock: String?

    public var enablePage: Bool?

    public var ignoreDetailedRouteEntry: Bool?

    public var nextHopId: String?

    public var nextHopType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var routeType: String?

    public var status: String?

    public var vccId: String?

    public var vpdRouteEntryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.ignoreDetailedRouteEntry != nil {
            map["IgnoreDetailedRouteEntry"] = self.ignoreDetailedRouteEntry!
        }
        if self.nextHopId != nil {
            map["NextHopId"] = self.nextHopId!
        }
        if self.nextHopType != nil {
            map["NextHopType"] = self.nextHopType!
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
        if self.routeType != nil {
            map["RouteType"] = self.routeType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vpdRouteEntryId != nil {
            map["VpdRouteEntryId"] = self.vpdRouteEntryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationCidrBlock"] as? String {
            self.destinationCidrBlock = value
        }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["IgnoreDetailedRouteEntry"] as? Bool {
            self.ignoreDetailedRouteEntry = value
        }
        if let value = dict["NextHopId"] as? String {
            self.nextHopId = value
        }
        if let value = dict["NextHopType"] as? String {
            self.nextHopType = value
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
        if let value = dict["RouteType"] as? String {
            self.routeType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
        if let value = dict["VpdRouteEntryId"] as? String {
            self.vpdRouteEntryId = value
        }
    }
}

public class ListVccRouteEntriesResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var destinationCidrBlock: String?

            public var gmtModified: String?

            public var message: String?

            public var nextHopId: String?

            public var nextHopType: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var resourceTenantId: String?

            public var routeType: String?

            public var status: String?

            public var tenantId: String?

            public var vccId: String?

            public var vccRouteEntryId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destinationCidrBlock != nil {
                    map["DestinationCidrBlock"] = self.destinationCidrBlock!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.nextHopId != nil {
                    map["NextHopId"] = self.nextHopId!
                }
                if self.nextHopType != nil {
                    map["NextHopType"] = self.nextHopType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.resourceTenantId != nil {
                    map["ResourceTenantId"] = self.resourceTenantId!
                }
                if self.routeType != nil {
                    map["RouteType"] = self.routeType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.vccId != nil {
                    map["VccId"] = self.vccId!
                }
                if self.vccRouteEntryId != nil {
                    map["VccRouteEntryId"] = self.vccRouteEntryId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DestinationCidrBlock"] as? String {
                    self.destinationCidrBlock = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["NextHopId"] as? String {
                    self.nextHopId = value
                }
                if let value = dict["NextHopType"] as? String {
                    self.nextHopType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ResourceTenantId"] as? String {
                    self.resourceTenantId = value
                }
                if let value = dict["RouteType"] as? String {
                    self.routeType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["VccId"] as? String {
                    self.vccId = value
                }
                if let value = dict["VccRouteEntryId"] as? String {
                    self.vccRouteEntryId = value
                }
            }
        }
        public var data: [ListVccRouteEntriesResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListVccRouteEntriesResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListVccRouteEntriesResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListVccRouteEntriesResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListVccRouteEntriesResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVccRouteEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVccRouteEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVccRouteEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVccsRequest : Tea.TeaModel {
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
    public var bandwidth: Int32?

    public var cenId: String?

    public var enablePage: Bool?

    public var exStatus: String?

    public var filterErId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tag: [ListVccsRequest.Tag]?

    public var vccId: String?

    public var vpcId: String?

    public var vpdId: String?

    public override init() {
        super.init()
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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.exStatus != nil {
            map["ExStatus"] = self.exStatus!
        }
        if self.filterErId != nil {
            map["FilterErId"] = self.filterErId!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["ExStatus"] as? String {
            self.exStatus = value
        }
        if let value = dict["FilterErId"] as? String {
            self.filterErId = value
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListVccsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListVccsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
    }
}

public class ListVccsResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class ErInfos : Tea.TeaModel {
                public var connections: Int64?

                public var createTime: String?

                public var description_: String?

                public var erId: String?

                public var erName: String?

                public var gmtModified: String?

                public var masterZoneId: String?

                public var message: String?

                public var regionId: String?

                public var routeMaps: Int64?

                public var status: String?

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
                    if self.connections != nil {
                        map["Connections"] = self.connections!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.erId != nil {
                        map["ErId"] = self.erId!
                    }
                    if self.erName != nil {
                        map["ErName"] = self.erName!
                    }
                    if self.gmtModified != nil {
                        map["GmtModified"] = self.gmtModified!
                    }
                    if self.masterZoneId != nil {
                        map["MasterZoneId"] = self.masterZoneId!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.routeMaps != nil {
                        map["RouteMaps"] = self.routeMaps!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.tenantId != nil {
                        map["TenantId"] = self.tenantId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Connections"] as? Int64 {
                        self.connections = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["ErId"] as? String {
                        self.erId = value
                    }
                    if let value = dict["ErName"] as? String {
                        self.erName = value
                    }
                    if let value = dict["GmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["MasterZoneId"] as? String {
                        self.masterZoneId = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["RouteMaps"] as? Int64 {
                        self.routeMaps = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["TenantId"] as? String {
                        self.tenantId = value
                    }
                }
            }
            public class Tags : Tea.TeaModel {
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
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public class VpdBaseInfo : Tea.TeaModel {
                public var cidr: String?

                public var createTime: String?

                public var vpdId: String?

                public var vpdName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cidr != nil {
                        map["Cidr"] = self.cidr!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.vpdId != nil {
                        map["VpdId"] = self.vpdId!
                    }
                    if self.vpdName != nil {
                        map["VpdName"] = self.vpdName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cidr"] as? String {
                        self.cidr = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["VpdId"] as? String {
                        self.vpdId = value
                    }
                    if let value = dict["VpdName"] as? String {
                        self.vpdName = value
                    }
                }
            }
            public var accessPointId: String?

            public var bandwidthStr: String?

            public var bgpAsn: String?

            public var bgpCidr: String?

            public var cenId: String?

            public var cenOwnerId: String?

            public var commodityCode: String?

            public var connectionType: String?

            public var createTime: String?

            public var currentNode: String?

            public var erInfos: [ListVccsResponseBody.Content.Data.ErInfos]?

            public var expirationDate: String?

            public var gmtModified: String?

            public var lineOperator: String?

            public var message: String?

            public var portType: String?

            public var rate: Double?

            public var regionId: String?

            public var resourceGroupId: String?

            public var spec: String?

            public var status: String?

            public var tags: [ListVccsResponseBody.Content.Data.Tags]?

            public var taskId: String?

            public var tenantId: String?

            public var vccId: String?

            public var vccName: String?

            public var vpcId: String?

            public var vpdBaseInfo: ListVccsResponseBody.Content.Data.VpdBaseInfo?

            public var vpdId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpdBaseInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessPointId != nil {
                    map["AccessPointId"] = self.accessPointId!
                }
                if self.bandwidthStr != nil {
                    map["BandwidthStr"] = self.bandwidthStr!
                }
                if self.bgpAsn != nil {
                    map["BgpAsn"] = self.bgpAsn!
                }
                if self.bgpCidr != nil {
                    map["BgpCidr"] = self.bgpCidr!
                }
                if self.cenId != nil {
                    map["CenId"] = self.cenId!
                }
                if self.cenOwnerId != nil {
                    map["CenOwnerId"] = self.cenOwnerId!
                }
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.connectionType != nil {
                    map["ConnectionType"] = self.connectionType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.currentNode != nil {
                    map["CurrentNode"] = self.currentNode!
                }
                if self.erInfos != nil {
                    var tmp : [Any] = []
                    for k in self.erInfos! {
                        tmp.append(k.toMap())
                    }
                    map["ErInfos"] = tmp
                }
                if self.expirationDate != nil {
                    map["ExpirationDate"] = self.expirationDate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.lineOperator != nil {
                    map["LineOperator"] = self.lineOperator!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.portType != nil {
                    map["PortType"] = self.portType!
                }
                if self.rate != nil {
                    map["Rate"] = self.rate!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.spec != nil {
                    map["Spec"] = self.spec!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.vccId != nil {
                    map["VccId"] = self.vccId!
                }
                if self.vccName != nil {
                    map["VccName"] = self.vccName!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpdBaseInfo != nil {
                    map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessPointId"] as? String {
                    self.accessPointId = value
                }
                if let value = dict["BandwidthStr"] as? String {
                    self.bandwidthStr = value
                }
                if let value = dict["BgpAsn"] as? String {
                    self.bgpAsn = value
                }
                if let value = dict["BgpCidr"] as? String {
                    self.bgpCidr = value
                }
                if let value = dict["CenId"] as? String {
                    self.cenId = value
                }
                if let value = dict["CenOwnerId"] as? String {
                    self.cenOwnerId = value
                }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["ConnectionType"] as? String {
                    self.connectionType = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CurrentNode"] as? String {
                    self.currentNode = value
                }
                if let value = dict["ErInfos"] as? [Any?] {
                    var tmp : [ListVccsResponseBody.Content.Data.ErInfos] = []
                    for v in value {
                        if v != nil {
                            var model = ListVccsResponseBody.Content.Data.ErInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.erInfos = tmp
                }
                if let value = dict["ExpirationDate"] as? String {
                    self.expirationDate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["LineOperator"] as? String {
                    self.lineOperator = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["PortType"] as? String {
                    self.portType = value
                }
                if let value = dict["Rate"] as? Double {
                    self.rate = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Spec"] as? String {
                    self.spec = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [ListVccsResponseBody.Content.Data.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListVccsResponseBody.Content.Data.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["VccId"] as? String {
                    self.vccId = value
                }
                if let value = dict["VccName"] as? String {
                    self.vccName = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpdBaseInfo"] as? [String: Any?] {
                    var model = ListVccsResponseBody.Content.Data.VpdBaseInfo()
                    model.fromMap(value)
                    self.vpdBaseInfo = model
                }
                if let value = dict["VpdId"] as? String {
                    self.vpdId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var data: [ListVccsResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListVccsResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListVccsResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListVccsResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListVccsResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVccsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVccsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVccsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpdGrantRulesRequest : Tea.TeaModel {
    public var enablePage: Bool?

    public var erId: String?

    public var forSelect: Bool?

    public var grantRuleId: String?

    public var grantTenantId: String?

    public var instanceId: String?

    public var instanceName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.forSelect != nil {
            map["ForSelect"] = self.forSelect!
        }
        if self.grantRuleId != nil {
            map["GrantRuleId"] = self.grantRuleId!
        }
        if self.grantTenantId != nil {
            map["GrantTenantId"] = self.grantTenantId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ForSelect"] as? Bool {
            self.forSelect = value
        }
        if let value = dict["GrantRuleId"] as? String {
            self.grantRuleId = value
        }
        if let value = dict["GrantTenantId"] as? String {
            self.grantTenantId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
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
    }
}

public class ListVpdGrantRulesResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var createTime: String?

            public var erId: String?

            public var grantRuleId: String?

            public var grantTenantId: String?

            public var instanceId: String?

            public var instanceName: String?

            public var product: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var tenantId: String?

            public var used: Bool?

            public override init() {
                super.init()
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
                if self.erId != nil {
                    map["ErId"] = self.erId!
                }
                if self.grantRuleId != nil {
                    map["GrantRuleId"] = self.grantRuleId!
                }
                if self.grantTenantId != nil {
                    map["GrantTenantId"] = self.grantTenantId!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.product != nil {
                    map["Product"] = self.product!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.used != nil {
                    map["Used"] = self.used!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["ErId"] as? String {
                    self.erId = value
                }
                if let value = dict["GrantRuleId"] as? String {
                    self.grantRuleId = value
                }
                if let value = dict["GrantTenantId"] as? String {
                    self.grantTenantId = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["Product"] as? String {
                    self.product = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["Used"] as? Bool {
                    self.used = value
                }
            }
        }
        public var data: [ListVpdGrantRulesResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListVpdGrantRulesResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListVpdGrantRulesResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListVpdGrantRulesResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListVpdGrantRulesResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVpdGrantRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpdGrantRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpdGrantRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpdRouteEntriesRequest : Tea.TeaModel {
    public var destinationCidrBlock: String?

    public var enablePage: Bool?

    public var ignoreDetailedRouteEntry: Bool?

    public var nextHopId: String?

    public var nextHopType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var routeType: String?

    public var status: String?

    public var vpdId: String?

    public var vpdRouteEntryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationCidrBlock != nil {
            map["DestinationCidrBlock"] = self.destinationCidrBlock!
        }
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.ignoreDetailedRouteEntry != nil {
            map["IgnoreDetailedRouteEntry"] = self.ignoreDetailedRouteEntry!
        }
        if self.nextHopId != nil {
            map["NextHopId"] = self.nextHopId!
        }
        if self.nextHopType != nil {
            map["NextHopType"] = self.nextHopType!
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
        if self.routeType != nil {
            map["RouteType"] = self.routeType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.vpdRouteEntryId != nil {
            map["VpdRouteEntryId"] = self.vpdRouteEntryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationCidrBlock"] as? String {
            self.destinationCidrBlock = value
        }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["IgnoreDetailedRouteEntry"] as? Bool {
            self.ignoreDetailedRouteEntry = value
        }
        if let value = dict["NextHopId"] as? String {
            self.nextHopId = value
        }
        if let value = dict["NextHopType"] as? String {
            self.nextHopType = value
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
        if let value = dict["RouteType"] as? String {
            self.routeType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
        if let value = dict["VpdRouteEntryId"] as? String {
            self.vpdRouteEntryId = value
        }
    }
}

public class ListVpdRouteEntriesResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var destinationCidrBlock: String?

            public var gmtModified: String?

            public var nextHopId: String?

            public var nextHopType: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var resourceTenantId: String?

            public var routeType: String?

            public var status: String?

            public var tenantId: String?

            public var vpdId: String?

            public var vpdRouteEntryId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destinationCidrBlock != nil {
                    map["DestinationCidrBlock"] = self.destinationCidrBlock!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.nextHopId != nil {
                    map["NextHopId"] = self.nextHopId!
                }
                if self.nextHopType != nil {
                    map["NextHopType"] = self.nextHopType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.resourceTenantId != nil {
                    map["ResourceTenantId"] = self.resourceTenantId!
                }
                if self.routeType != nil {
                    map["RouteType"] = self.routeType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                if self.vpdRouteEntryId != nil {
                    map["VpdRouteEntryId"] = self.vpdRouteEntryId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DestinationCidrBlock"] as? String {
                    self.destinationCidrBlock = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["NextHopId"] as? String {
                    self.nextHopId = value
                }
                if let value = dict["NextHopType"] as? String {
                    self.nextHopType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ResourceTenantId"] as? String {
                    self.resourceTenantId = value
                }
                if let value = dict["RouteType"] as? String {
                    self.routeType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["VpdId"] as? String {
                    self.vpdId = value
                }
                if let value = dict["VpdRouteEntryId"] as? String {
                    self.vpdRouteEntryId = value
                }
            }
        }
        public var data: [ListVpdRouteEntriesResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListVpdRouteEntriesResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListVpdRouteEntriesResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListVpdRouteEntriesResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListVpdRouteEntriesResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVpdRouteEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpdRouteEntriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpdRouteEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVpdsRequest : Tea.TeaModel {
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
    public var enablePage: Bool?

    public var filterErId: String?

    public var forSelect: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tag: [ListVpdsRequest.Tag]?

    public var vpdId: String?

    public var vpdName: String?

    public var withDependence: Bool?

    public var withoutVcc: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.filterErId != nil {
            map["FilterErId"] = self.filterErId!
        }
        if self.forSelect != nil {
            map["ForSelect"] = self.forSelect!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.vpdName != nil {
            map["VpdName"] = self.vpdName!
        }
        if self.withDependence != nil {
            map["WithDependence"] = self.withDependence!
        }
        if self.withoutVcc != nil {
            map["WithoutVcc"] = self.withoutVcc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnablePage"] as? Bool {
            self.enablePage = value
        }
        if let value = dict["FilterErId"] as? String {
            self.filterErId = value
        }
        if let value = dict["ForSelect"] as? Bool {
            self.forSelect = value
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListVpdsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListVpdsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
        if let value = dict["VpdName"] as? String {
            self.vpdName = value
        }
        if let value = dict["WithDependence"] as? Bool {
            self.withDependence = value
        }
        if let value = dict["WithoutVcc"] as? Bool {
            self.withoutVcc = value
        }
    }
}

public class ListVpdsResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class ErInfos : Tea.TeaModel {
                public var connections: Int64?

                public var createTime: String?

                public var description_: String?

                public var erId: String?

                public var erName: String?

                public var gmtModified: String?

                public var masterZoneId: String?

                public var message: String?

                public var regionId: String?

                public var routeMaps: Int64?

                public var status: String?

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
                    if self.connections != nil {
                        map["Connections"] = self.connections!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.erId != nil {
                        map["ErId"] = self.erId!
                    }
                    if self.erName != nil {
                        map["ErName"] = self.erName!
                    }
                    if self.gmtModified != nil {
                        map["GmtModified"] = self.gmtModified!
                    }
                    if self.masterZoneId != nil {
                        map["MasterZoneId"] = self.masterZoneId!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.routeMaps != nil {
                        map["RouteMaps"] = self.routeMaps!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.tenantId != nil {
                        map["TenantId"] = self.tenantId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Connections"] as? Int64 {
                        self.connections = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["ErId"] as? String {
                        self.erId = value
                    }
                    if let value = dict["ErName"] as? String {
                        self.erName = value
                    }
                    if let value = dict["GmtModified"] as? String {
                        self.gmtModified = value
                    }
                    if let value = dict["MasterZoneId"] as? String {
                        self.masterZoneId = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["RouteMaps"] as? Int64 {
                        self.routeMaps = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["TenantId"] as? String {
                        self.tenantId = value
                    }
                }
            }
            public class Tags : Tea.TeaModel {
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
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public var cidr: String?

            public var createTime: String?

            public var dependence: [String: Any]?

            public var erInfos: [ListVpdsResponseBody.Content.Data.ErInfos]?

            public var gmtModified: String?

            public var message: String?

            public var ncCount: Int32?

            public var networkInterfaceCount: Int32?

            public var regionId: String?

            public var resourceGroupId: String?

            public var secondaryCidrBlocks: [String]?

            public var serviceCidr: String?

            public var status: String?

            public var subnetCount: Int32?

            public var tags: [ListVpdsResponseBody.Content.Data.Tags]?

            public var tenantId: String?

            public var vpdId: String?

            public var vpdName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dependence != nil {
                    map["Dependence"] = self.dependence!
                }
                if self.erInfos != nil {
                    var tmp : [Any] = []
                    for k in self.erInfos! {
                        tmp.append(k.toMap())
                    }
                    map["ErInfos"] = tmp
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.ncCount != nil {
                    map["NcCount"] = self.ncCount!
                }
                if self.networkInterfaceCount != nil {
                    map["NetworkInterfaceCount"] = self.networkInterfaceCount!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.secondaryCidrBlocks != nil {
                    map["SecondaryCidrBlocks"] = self.secondaryCidrBlocks!
                }
                if self.serviceCidr != nil {
                    map["ServiceCidr"] = self.serviceCidr!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subnetCount != nil {
                    map["SubnetCount"] = self.subnetCount!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                if self.vpdName != nil {
                    map["VpdName"] = self.vpdName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cidr"] as? String {
                    self.cidr = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Dependence"] as? [String: Any] {
                    self.dependence = value
                }
                if let value = dict["ErInfos"] as? [Any?] {
                    var tmp : [ListVpdsResponseBody.Content.Data.ErInfos] = []
                    for v in value {
                        if v != nil {
                            var model = ListVpdsResponseBody.Content.Data.ErInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.erInfos = tmp
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["NcCount"] as? Int32 {
                    self.ncCount = value
                }
                if let value = dict["NetworkInterfaceCount"] as? Int32 {
                    self.networkInterfaceCount = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["SecondaryCidrBlocks"] as? [String] {
                    self.secondaryCidrBlocks = value
                }
                if let value = dict["ServiceCidr"] as? String {
                    self.serviceCidr = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SubnetCount"] as? Int32 {
                    self.subnetCount = value
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [ListVpdsResponseBody.Content.Data.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = ListVpdsResponseBody.Content.Data.Tags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tags = tmp
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["VpdId"] as? String {
                    self.vpdId = value
                }
                if let value = dict["VpdName"] as? String {
                    self.vpdName = value
                }
            }
        }
        public var data: [ListVpdsResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListVpdsResponseBody.Content.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListVpdsResponseBody.Content.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: ListVpdsResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = ListVpdsResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListVpdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVpdsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryInstanceNcdRequest : Tea.TeaModel {
    public var instanceId1: String?

    public var instanceId2: String?

    public var instanceType: String?

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
        if self.instanceId1 != nil {
            map["InstanceId1"] = self.instanceId1!
        }
        if self.instanceId2 != nil {
            map["InstanceId2"] = self.instanceId2!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId1"] as? String {
            self.instanceId1 = value
        }
        if let value = dict["InstanceId2"] as? String {
            self.instanceId2 = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class QueryInstanceNcdResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var instanceId1: String?

        public var instanceId2: String?

        public var instanceType: String?

        public var ncd: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId1 != nil {
                map["InstanceId1"] = self.instanceId1!
            }
            if self.instanceId2 != nil {
                map["InstanceId2"] = self.instanceId2!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.ncd != nil {
                map["Ncd"] = self.ncd!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId1"] as? String {
                self.instanceId1 = value
            }
            if let value = dict["InstanceId2"] as? String {
                self.instanceId2 = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Ncd"] as? Int32 {
                self.ncd = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: QueryInstanceNcdResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = QueryInstanceNcdResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryInstanceNcdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInstanceNcdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryInstanceNcdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RefundVccRequest : Tea.TeaModel {
    public var regionId: String?

    public var vccId: String?

    public override init() {
        super.init()
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
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
    }
}

public class RefundVccResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RefundVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundVccResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RefundVccResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryVccRequest : Tea.TeaModel {
    public var regionId: String?

    public var vccId: String?

    public override init() {
        super.init()
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
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
    }
}

public class RetryVccResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RetryVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryVccResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RetryVccResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchVccConnectionRequest : Tea.TeaModel {
    public var cenId: String?

    public var connectionType: String?

    public var regionId: String?

    public var vSwitchId: String?

    public var vccId: String?

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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.connectionType != nil {
            map["ConnectionType"] = self.connectionType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["ConnectionType"] as? String {
            self.connectionType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class SwitchVccConnectionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: Any?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? Any {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SwitchVccConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchVccConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SwitchVccConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnAssignPrivateIpAddressRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ipName: String?

    public var networkInterfaceId: String?

    public var privateIpAddress: String?

    public var regionId: String?

    public var subnetId: String?

    public override init() {
        super.init()
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
        if self.ipName != nil {
            map["IpName"] = self.ipName!
        }
        if self.networkInterfaceId != nil {
            map["NetworkInterfaceId"] = self.networkInterfaceId!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["IpName"] as? String {
            self.ipName = value
        }
        if let value = dict["NetworkInterfaceId"] as? String {
            self.networkInterfaceId = value
        }
        if let value = dict["PrivateIpAddress"] as? String {
            self.privateIpAddress = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SubnetId"] as? String {
            self.subnetId = value
        }
    }
}

public class UnAssignPrivateIpAddressResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var ipName: String?

        public var networkInterfaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipName != nil {
                map["IpName"] = self.ipName!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IpName"] as? String {
                self.ipName = value
            }
            if let value = dict["NetworkInterfaceId"] as? String {
                self.networkInterfaceId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: UnAssignPrivateIpAddressResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = UnAssignPrivateIpAddressResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnAssignPrivateIpAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnAssignPrivateIpAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnAssignPrivateIpAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnAssociateVpdCidrBlockRequest : Tea.TeaModel {
    public var regionId: String?

    public var secondaryCidrBlock: String?

    public var vpdId: String?

    public override init() {
        super.init()
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
        if self.secondaryCidrBlock != nil {
            map["SecondaryCidrBlock"] = self.secondaryCidrBlock!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecondaryCidrBlock"] as? String {
            self.secondaryCidrBlock = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
    }
}

public class UnAssociateVpdCidrBlockResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: UnAssociateVpdCidrBlockResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = UnAssociateVpdCidrBlockResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnAssociateVpdCidrBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnAssociateVpdCidrBlockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnAssociateVpdCidrBlockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnassignLeniPrivateIpAddressRequest : Tea.TeaModel {
    public var clientToken: String?

    public var elasticNetworkInterfaceId: String?

    public var ipName: String?

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
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
        }
        if self.ipName != nil {
            map["IpName"] = self.ipName!
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
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["IpName"] as? String {
            self.ipName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UnassignLeniPrivateIpAddressResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var elasticNetworkInterfaceId: String?

        public var ipName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elasticNetworkInterfaceId != nil {
                map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
            }
            if self.ipName != nil {
                map["IpName"] = self.ipName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ElasticNetworkInterfaceId"] as? String {
                self.elasticNetworkInterfaceId = value
            }
            if let value = dict["IpName"] as? String {
                self.ipName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: UnassignLeniPrivateIpAddressResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = UnassignLeniPrivateIpAddressResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnassignLeniPrivateIpAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnassignLeniPrivateIpAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnassignLeniPrivateIpAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateElasticNetworkInterfaceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var elasticNetworkInterfaceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
    }
}

public class UpdateElasticNetworkInterfaceResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var elasticNetworkInterfaceId: String?

        public var nodeId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elasticNetworkInterfaceId != nil {
                map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ElasticNetworkInterfaceId"] as? String {
                self.elasticNetworkInterfaceId = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: UpdateElasticNetworkInterfaceResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = UpdateElasticNetworkInterfaceResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateElasticNetworkInterfaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateElasticNetworkInterfaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateElasticNetworkInterfaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateErRequest : Tea.TeaModel {
    public var description_: String?

    public var erId: String?

    public var erName: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.erName != nil {
            map["ErName"] = self.erName!
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
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ErName"] as? String {
            self.erName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateErResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: [String: Any]?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any] {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateErResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateErResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateErResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateErAttachmentRequest : Tea.TeaModel {
    public var erAttachmentId: String?

    public var erAttachmentName: String?

    public var erId: String?

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
        if self.erAttachmentId != nil {
            map["ErAttachmentId"] = self.erAttachmentId!
        }
        if self.erAttachmentName != nil {
            map["ErAttachmentName"] = self.erAttachmentName!
        }
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErAttachmentId"] as? String {
            self.erAttachmentId = value
        }
        if let value = dict["ErAttachmentName"] as? String {
            self.erAttachmentName = value
        }
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateErAttachmentResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: [String: Any]?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any] {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateErAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateErAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateErAttachmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateErRouteMapRequest : Tea.TeaModel {
    public var description_: String?

    public var erId: String?

    public var erRouteMapId: String?

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
        if self.erId != nil {
            map["ErId"] = self.erId!
        }
        if self.erRouteMapId != nil {
            map["ErRouteMapId"] = self.erRouteMapId!
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
        if let value = dict["ErId"] as? String {
            self.erId = value
        }
        if let value = dict["ErRouteMapId"] as? String {
            self.erRouteMapId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateErRouteMapResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: [String: Any]?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any] {
            self.content = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateErRouteMapResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateErRouteMapResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateErRouteMapResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLeniPrivateIpAddressRequest : Tea.TeaModel {
    public var description_: String?

    public var elasticNetworkInterfaceId: String?

    public var ipName: String?

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
        if self.elasticNetworkInterfaceId != nil {
            map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
        }
        if self.ipName != nil {
            map["IpName"] = self.ipName!
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
        if let value = dict["ElasticNetworkInterfaceId"] as? String {
            self.elasticNetworkInterfaceId = value
        }
        if let value = dict["IpName"] as? String {
            self.ipName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateLeniPrivateIpAddressResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var elasticNetworkInterfaceId: String?

        public var ipName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elasticNetworkInterfaceId != nil {
                map["ElasticNetworkInterfaceId"] = self.elasticNetworkInterfaceId!
            }
            if self.ipName != nil {
                map["IpName"] = self.ipName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ElasticNetworkInterfaceId"] as? String {
                self.elasticNetworkInterfaceId = value
            }
            if let value = dict["IpName"] as? String {
                self.ipName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: UpdateLeniPrivateIpAddressResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = UpdateLeniPrivateIpAddressResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateLeniPrivateIpAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLeniPrivateIpAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLeniPrivateIpAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSubnetRequest : Tea.TeaModel {
    public var regionId: String?

    public var subnetId: String?

    public var subnetName: String?

    public var vpdId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        if self.subnetName != nil {
            map["SubnetName"] = self.subnetName!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SubnetId"] as? String {
            self.subnetId = value
        }
        if let value = dict["SubnetName"] as? String {
            self.subnetName = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class UpdateSubnetResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var subnetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subnetId != nil {
                map["SubnetId"] = self.subnetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SubnetId"] as? String {
                self.subnetId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: UpdateSubnetResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = UpdateSubnetResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateSubnetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSubnetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSubnetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVccRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var orderId: String?

    public var regionId: String?

    public var vccId: String?

    public var vccName: String?

    public override init() {
        super.init()
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vccName != nil {
            map["VccName"] = self.vccName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VccId"] as? String {
            self.vccId = value
        }
        if let value = dict["VccName"] as? String {
            self.vccName = value
        }
    }
}

public class UpdateVccResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var vccId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vccId != nil {
                map["VccId"] = self.vccId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VccId"] as? String {
                self.vccId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: UpdateVccResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = UpdateVccResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVccResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateVccResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVpdRequest : Tea.TeaModel {
    public var regionId: String?

    public var vpdId: String?

    public var vpdName: String?

    public override init() {
        super.init()
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
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.vpdName != nil {
            map["VpdName"] = self.vpdName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpdId"] as? String {
            self.vpdId = value
        }
        if let value = dict["VpdName"] as? String {
            self.vpdName = value
        }
    }
}

public class UpdateVpdResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VpdId"] as? String {
                self.vpdId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var content: UpdateVpdResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Content"] as? [String: Any?] {
            var model = UpdateVpdResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateVpdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVpdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateVpdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
