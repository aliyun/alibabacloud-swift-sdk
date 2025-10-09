import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var regionId: String?

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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

    public var newResourceGroupId: String?

    public var requestId: String?

    public var success: Int64?

    public override init() {
        super.init()
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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Int64 {
            self.success = value
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

public class ConvertPostPayOrderRequest : Tea.TeaModel {
    public var duration: Int32?

    public var instanceId: String?

    public var paidType: Int32?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ConvertPostPayOrderResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

    public var orderId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ConvertPostPayOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConvertPostPayOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConvertPostPayOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAclRequest : Tea.TeaModel {
    public var aclOperationType: String?

    public var aclOperationTypes: String?

    public var aclPermissionType: String?

    public var aclResourceName: String?

    public var aclResourcePatternType: String?

    public var aclResourceType: String?

    public var host: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.aclOperationType != nil {
            map["AclOperationType"] = self.aclOperationType!
        }
        if self.aclOperationTypes != nil {
            map["AclOperationTypes"] = self.aclOperationTypes!
        }
        if self.aclPermissionType != nil {
            map["AclPermissionType"] = self.aclPermissionType!
        }
        if self.aclResourceName != nil {
            map["AclResourceName"] = self.aclResourceName!
        }
        if self.aclResourcePatternType != nil {
            map["AclResourcePatternType"] = self.aclResourcePatternType!
        }
        if self.aclResourceType != nil {
            map["AclResourceType"] = self.aclResourceType!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclOperationType"] as? String {
            self.aclOperationType = value
        }
        if let value = dict["AclOperationTypes"] as? String {
            self.aclOperationTypes = value
        }
        if let value = dict["AclPermissionType"] as? String {
            self.aclPermissionType = value
        }
        if let value = dict["AclResourceName"] as? String {
            self.aclResourceName = value
        }
        if let value = dict["AclResourcePatternType"] as? String {
            self.aclResourcePatternType = value
        }
        if let value = dict["AclResourceType"] as? String {
            self.aclResourceType = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class CreateAclResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConsumerGroupRequest : Tea.TeaModel {
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
    public var consumerId: String?

    public var instanceId: String?

    public var regionId: String?

    public var remark: String?

    public var tag: [CreateConsumerGroupRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
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
        if let value = dict["ConsumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateConsumerGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateConsumerGroupRequest.Tag()
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

public class CreateConsumerGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateConsumerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConsumerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateConsumerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePostPayInstanceRequest : Tea.TeaModel {
    public class ServerlessConfig : Tea.TeaModel {
        public var reservedPublishCapacity: Int64?

        public var reservedSubscribeCapacity: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedPublishCapacity != nil {
                map["ReservedPublishCapacity"] = self.reservedPublishCapacity!
            }
            if self.reservedSubscribeCapacity != nil {
                map["ReservedSubscribeCapacity"] = self.reservedSubscribeCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ReservedPublishCapacity"] as? Int64 {
                self.reservedPublishCapacity = value
            }
            if let value = dict["ReservedSubscribeCapacity"] as? Int64 {
                self.reservedSubscribeCapacity = value
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
    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var eipMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serverlessConfig: CreatePostPayInstanceRequest.ServerlessConfig?

    public var specType: String?

    public var tag: [CreatePostPayInstanceRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serverlessConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serverlessConfig != nil {
            map["ServerlessConfig"] = self.serverlessConfig?.toMap()
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
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
        if let value = dict["DeployType"] as? Int32 {
            self.deployType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServerlessConfig"] as? [String: Any?] {
            var model = CreatePostPayInstanceRequest.ServerlessConfig()
            model.fromMap(value)
            self.serverlessConfig = model
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreatePostPayInstanceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreatePostPayInstanceRequest.Tag()
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

public class CreatePostPayInstanceShrinkRequest : Tea.TeaModel {
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
    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var eipMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serverlessConfigShrink: String?

    public var specType: String?

    public var tag: [CreatePostPayInstanceShrinkRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serverlessConfigShrink != nil {
            map["ServerlessConfig"] = self.serverlessConfigShrink!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
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
        if let value = dict["DeployType"] as? Int32 {
            self.deployType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServerlessConfig"] as? String {
            self.serverlessConfigShrink = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreatePostPayInstanceShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreatePostPayInstanceShrinkRequest.Tag()
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

public class CreatePostPayInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
        }
    }
    public var code: Int32?

    public var data: CreatePostPayInstanceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreatePostPayInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreatePostPayInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePostPayInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePostPayInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePostPayOrderRequest : Tea.TeaModel {
    public class ServerlessConfig : Tea.TeaModel {
        public var reservedPublishCapacity: Int64?

        public var reservedSubscribeCapacity: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedPublishCapacity != nil {
                map["ReservedPublishCapacity"] = self.reservedPublishCapacity!
            }
            if self.reservedSubscribeCapacity != nil {
                map["ReservedSubscribeCapacity"] = self.reservedSubscribeCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ReservedPublishCapacity"] as? Int64 {
                self.reservedPublishCapacity = value
            }
            if let value = dict["ReservedSubscribeCapacity"] as? Int64 {
                self.reservedSubscribeCapacity = value
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
    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var eipMax: Int32?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serverlessConfig: CreatePostPayOrderRequest.ServerlessConfig?

    public var specType: String?

    public var tag: [CreatePostPayOrderRequest.Tag]?

    public var topicQuota: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serverlessConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.ioMax != nil {
            map["IoMax"] = self.ioMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serverlessConfig != nil {
            map["ServerlessConfig"] = self.serverlessConfig?.toMap()
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topicQuota != nil {
            map["TopicQuota"] = self.topicQuota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeployType"] as? Int32 {
            self.deployType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["IoMax"] as? Int32 {
            self.ioMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServerlessConfig"] as? [String: Any?] {
            var model = CreatePostPayOrderRequest.ServerlessConfig()
            model.fromMap(value)
            self.serverlessConfig = model
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreatePostPayOrderRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreatePostPayOrderRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TopicQuota"] as? Int32 {
            self.topicQuota = value
        }
    }
}

public class CreatePostPayOrderShrinkRequest : Tea.TeaModel {
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
    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var eipMax: Int32?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serverlessConfigShrink: String?

    public var specType: String?

    public var tag: [CreatePostPayOrderShrinkRequest.Tag]?

    public var topicQuota: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.ioMax != nil {
            map["IoMax"] = self.ioMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serverlessConfigShrink != nil {
            map["ServerlessConfig"] = self.serverlessConfigShrink!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topicQuota != nil {
            map["TopicQuota"] = self.topicQuota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeployType"] as? Int32 {
            self.deployType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["IoMax"] as? Int32 {
            self.ioMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServerlessConfig"] as? String {
            self.serverlessConfigShrink = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreatePostPayOrderShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreatePostPayOrderShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TopicQuota"] as? Int32 {
            self.topicQuota = value
        }
    }
}

public class CreatePostPayOrderResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

    public var orderId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreatePostPayOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePostPayOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePostPayOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePrePayInstanceRequest : Tea.TeaModel {
    public class ConfluentConfig : Tea.TeaModel {
        public var connectCU: Int32?

        public var connectReplica: Int32?

        public var controlCenterCU: Int32?

        public var controlCenterReplica: Int32?

        public var controlCenterStorage: Int32?

        public var kafkaCU: Int32?

        public var kafkaReplica: Int32?

        public var kafkaRestProxyCU: Int32?

        public var kafkaRestProxyReplica: Int32?

        public var kafkaStorage: Int32?

        public var ksqlCU: Int32?

        public var ksqlReplica: Int32?

        public var ksqlStorage: Int32?

        public var schemaRegistryCU: Int32?

        public var schemaRegistryReplica: Int32?

        public var zooKeeperCU: Int32?

        public var zooKeeperReplica: Int32?

        public var zooKeeperStorage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectCU != nil {
                map["ConnectCU"] = self.connectCU!
            }
            if self.connectReplica != nil {
                map["ConnectReplica"] = self.connectReplica!
            }
            if self.controlCenterCU != nil {
                map["ControlCenterCU"] = self.controlCenterCU!
            }
            if self.controlCenterReplica != nil {
                map["ControlCenterReplica"] = self.controlCenterReplica!
            }
            if self.controlCenterStorage != nil {
                map["ControlCenterStorage"] = self.controlCenterStorage!
            }
            if self.kafkaCU != nil {
                map["KafkaCU"] = self.kafkaCU!
            }
            if self.kafkaReplica != nil {
                map["KafkaReplica"] = self.kafkaReplica!
            }
            if self.kafkaRestProxyCU != nil {
                map["KafkaRestProxyCU"] = self.kafkaRestProxyCU!
            }
            if self.kafkaRestProxyReplica != nil {
                map["KafkaRestProxyReplica"] = self.kafkaRestProxyReplica!
            }
            if self.kafkaStorage != nil {
                map["KafkaStorage"] = self.kafkaStorage!
            }
            if self.ksqlCU != nil {
                map["KsqlCU"] = self.ksqlCU!
            }
            if self.ksqlReplica != nil {
                map["KsqlReplica"] = self.ksqlReplica!
            }
            if self.ksqlStorage != nil {
                map["KsqlStorage"] = self.ksqlStorage!
            }
            if self.schemaRegistryCU != nil {
                map["SchemaRegistryCU"] = self.schemaRegistryCU!
            }
            if self.schemaRegistryReplica != nil {
                map["SchemaRegistryReplica"] = self.schemaRegistryReplica!
            }
            if self.zooKeeperCU != nil {
                map["ZooKeeperCU"] = self.zooKeeperCU!
            }
            if self.zooKeeperReplica != nil {
                map["ZooKeeperReplica"] = self.zooKeeperReplica!
            }
            if self.zooKeeperStorage != nil {
                map["ZooKeeperStorage"] = self.zooKeeperStorage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectCU"] as? Int32 {
                self.connectCU = value
            }
            if let value = dict["ConnectReplica"] as? Int32 {
                self.connectReplica = value
            }
            if let value = dict["ControlCenterCU"] as? Int32 {
                self.controlCenterCU = value
            }
            if let value = dict["ControlCenterReplica"] as? Int32 {
                self.controlCenterReplica = value
            }
            if let value = dict["ControlCenterStorage"] as? Int32 {
                self.controlCenterStorage = value
            }
            if let value = dict["KafkaCU"] as? Int32 {
                self.kafkaCU = value
            }
            if let value = dict["KafkaReplica"] as? Int32 {
                self.kafkaReplica = value
            }
            if let value = dict["KafkaRestProxyCU"] as? Int32 {
                self.kafkaRestProxyCU = value
            }
            if let value = dict["KafkaRestProxyReplica"] as? Int32 {
                self.kafkaRestProxyReplica = value
            }
            if let value = dict["KafkaStorage"] as? Int32 {
                self.kafkaStorage = value
            }
            if let value = dict["KsqlCU"] as? Int32 {
                self.ksqlCU = value
            }
            if let value = dict["KsqlReplica"] as? Int32 {
                self.ksqlReplica = value
            }
            if let value = dict["KsqlStorage"] as? Int32 {
                self.ksqlStorage = value
            }
            if let value = dict["SchemaRegistryCU"] as? Int32 {
                self.schemaRegistryCU = value
            }
            if let value = dict["SchemaRegistryReplica"] as? Int32 {
                self.schemaRegistryReplica = value
            }
            if let value = dict["ZooKeeperCU"] as? Int32 {
                self.zooKeeperCU = value
            }
            if let value = dict["ZooKeeperReplica"] as? Int32 {
                self.zooKeeperReplica = value
            }
            if let value = dict["ZooKeeperStorage"] as? Int32 {
                self.zooKeeperStorage = value
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
    public var confluentConfig: CreatePrePayInstanceRequest.ConfluentConfig?

    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var duration: Int32?

    public var eipMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var specType: String?

    public var tag: [CreatePrePayInstanceRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.confluentConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.confluentConfig != nil {
            map["ConfluentConfig"] = self.confluentConfig?.toMap()
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
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
        if let value = dict["ConfluentConfig"] as? [String: Any?] {
            var model = CreatePrePayInstanceRequest.ConfluentConfig()
            model.fromMap(value)
            self.confluentConfig = model
        }
        if let value = dict["DeployType"] as? Int32 {
            self.deployType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreatePrePayInstanceRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreatePrePayInstanceRequest.Tag()
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

public class CreatePrePayInstanceShrinkRequest : Tea.TeaModel {
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
    public var confluentConfigShrink: String?

    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var duration: Int32?

    public var eipMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var specType: String?

    public var tag: [CreatePrePayInstanceShrinkRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.confluentConfigShrink != nil {
            map["ConfluentConfig"] = self.confluentConfigShrink!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
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
        if let value = dict["ConfluentConfig"] as? String {
            self.confluentConfigShrink = value
        }
        if let value = dict["DeployType"] as? Int32 {
            self.deployType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreatePrePayInstanceShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreatePrePayInstanceShrinkRequest.Tag()
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

public class CreatePrePayInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
        }
    }
    public var code: Int32?

    public var data: CreatePrePayInstanceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreatePrePayInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreatePrePayInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrePayInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePrePayInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePrePayOrderRequest : Tea.TeaModel {
    public class ConfluentConfig : Tea.TeaModel {
        public var connectCU: Int32?

        public var connectReplica: Int32?

        public var controlCenterCU: Int32?

        public var controlCenterReplica: Int32?

        public var controlCenterStorage: Int32?

        public var kafkaCU: Int32?

        public var kafkaReplica: Int32?

        public var kafkaRestProxyCU: Int32?

        public var kafkaRestProxyReplica: Int32?

        public var kafkaStorage: Int32?

        public var ksqlCU: Int32?

        public var ksqlReplica: Int32?

        public var ksqlStorage: Int32?

        public var schemaRegistryCU: Int32?

        public var schemaRegistryReplica: Int32?

        public var zooKeeperCU: Int32?

        public var zooKeeperReplica: Int32?

        public var zooKeeperStorage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectCU != nil {
                map["ConnectCU"] = self.connectCU!
            }
            if self.connectReplica != nil {
                map["ConnectReplica"] = self.connectReplica!
            }
            if self.controlCenterCU != nil {
                map["ControlCenterCU"] = self.controlCenterCU!
            }
            if self.controlCenterReplica != nil {
                map["ControlCenterReplica"] = self.controlCenterReplica!
            }
            if self.controlCenterStorage != nil {
                map["ControlCenterStorage"] = self.controlCenterStorage!
            }
            if self.kafkaCU != nil {
                map["KafkaCU"] = self.kafkaCU!
            }
            if self.kafkaReplica != nil {
                map["KafkaReplica"] = self.kafkaReplica!
            }
            if self.kafkaRestProxyCU != nil {
                map["KafkaRestProxyCU"] = self.kafkaRestProxyCU!
            }
            if self.kafkaRestProxyReplica != nil {
                map["KafkaRestProxyReplica"] = self.kafkaRestProxyReplica!
            }
            if self.kafkaStorage != nil {
                map["KafkaStorage"] = self.kafkaStorage!
            }
            if self.ksqlCU != nil {
                map["KsqlCU"] = self.ksqlCU!
            }
            if self.ksqlReplica != nil {
                map["KsqlReplica"] = self.ksqlReplica!
            }
            if self.ksqlStorage != nil {
                map["KsqlStorage"] = self.ksqlStorage!
            }
            if self.schemaRegistryCU != nil {
                map["SchemaRegistryCU"] = self.schemaRegistryCU!
            }
            if self.schemaRegistryReplica != nil {
                map["SchemaRegistryReplica"] = self.schemaRegistryReplica!
            }
            if self.zooKeeperCU != nil {
                map["ZooKeeperCU"] = self.zooKeeperCU!
            }
            if self.zooKeeperReplica != nil {
                map["ZooKeeperReplica"] = self.zooKeeperReplica!
            }
            if self.zooKeeperStorage != nil {
                map["ZooKeeperStorage"] = self.zooKeeperStorage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectCU"] as? Int32 {
                self.connectCU = value
            }
            if let value = dict["ConnectReplica"] as? Int32 {
                self.connectReplica = value
            }
            if let value = dict["ControlCenterCU"] as? Int32 {
                self.controlCenterCU = value
            }
            if let value = dict["ControlCenterReplica"] as? Int32 {
                self.controlCenterReplica = value
            }
            if let value = dict["ControlCenterStorage"] as? Int32 {
                self.controlCenterStorage = value
            }
            if let value = dict["KafkaCU"] as? Int32 {
                self.kafkaCU = value
            }
            if let value = dict["KafkaReplica"] as? Int32 {
                self.kafkaReplica = value
            }
            if let value = dict["KafkaRestProxyCU"] as? Int32 {
                self.kafkaRestProxyCU = value
            }
            if let value = dict["KafkaRestProxyReplica"] as? Int32 {
                self.kafkaRestProxyReplica = value
            }
            if let value = dict["KafkaStorage"] as? Int32 {
                self.kafkaStorage = value
            }
            if let value = dict["KsqlCU"] as? Int32 {
                self.ksqlCU = value
            }
            if let value = dict["KsqlReplica"] as? Int32 {
                self.ksqlReplica = value
            }
            if let value = dict["KsqlStorage"] as? Int32 {
                self.ksqlStorage = value
            }
            if let value = dict["SchemaRegistryCU"] as? Int32 {
                self.schemaRegistryCU = value
            }
            if let value = dict["SchemaRegistryReplica"] as? Int32 {
                self.schemaRegistryReplica = value
            }
            if let value = dict["ZooKeeperCU"] as? Int32 {
                self.zooKeeperCU = value
            }
            if let value = dict["ZooKeeperReplica"] as? Int32 {
                self.zooKeeperReplica = value
            }
            if let value = dict["ZooKeeperStorage"] as? Int32 {
                self.zooKeeperStorage = value
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
    public var confluentConfig: CreatePrePayOrderRequest.ConfluentConfig?

    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var duration: Int32?

    public var eipMax: Int32?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var specType: String?

    public var tag: [CreatePrePayOrderRequest.Tag]?

    public var topicQuota: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.confluentConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.confluentConfig != nil {
            map["ConfluentConfig"] = self.confluentConfig?.toMap()
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.ioMax != nil {
            map["IoMax"] = self.ioMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topicQuota != nil {
            map["TopicQuota"] = self.topicQuota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfluentConfig"] as? [String: Any?] {
            var model = CreatePrePayOrderRequest.ConfluentConfig()
            model.fromMap(value)
            self.confluentConfig = model
        }
        if let value = dict["DeployType"] as? Int32 {
            self.deployType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["IoMax"] as? Int32 {
            self.ioMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreatePrePayOrderRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreatePrePayOrderRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TopicQuota"] as? Int32 {
            self.topicQuota = value
        }
    }
}

public class CreatePrePayOrderShrinkRequest : Tea.TeaModel {
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
    public var confluentConfigShrink: String?

    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var duration: Int32?

    public var eipMax: Int32?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var specType: String?

    public var tag: [CreatePrePayOrderShrinkRequest.Tag]?

    public var topicQuota: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.confluentConfigShrink != nil {
            map["ConfluentConfig"] = self.confluentConfigShrink!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.ioMax != nil {
            map["IoMax"] = self.ioMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topicQuota != nil {
            map["TopicQuota"] = self.topicQuota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfluentConfig"] as? String {
            self.confluentConfigShrink = value
        }
        if let value = dict["DeployType"] as? Int32 {
            self.deployType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["IoMax"] as? Int32 {
            self.ioMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreatePrePayOrderShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreatePrePayOrderShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TopicQuota"] as? Int32 {
            self.topicQuota = value
        }
    }
}

public class CreatePrePayOrderResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

    public var orderId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreatePrePayOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrePayOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePrePayOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSaslUserRequest : Tea.TeaModel {
    public var instanceId: String?

    public var mechanism: String?

    public var password: String?

    public var regionId: String?

    public var type: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mechanism != nil {
            map["Mechanism"] = self.mechanism!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mechanism"] as? String {
            self.mechanism = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class CreateSaslUserResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateSaslUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSaslUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSaslUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateScheduledScalingRuleRequest : Tea.TeaModel {
    public var durationMinutes: Int32?

    public var enable: Bool?

    public var firstScheduledTime: Int64?

    public var instanceId: String?

    public var regionId: String?

    public var repeatType: String?

    public var reservedPubFlow: Int32?

    public var reservedSubFlow: Int32?

    public var ruleName: String?

    public var scheduleType: String?

    public var timeZone: String?

    public var weeklyTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.durationMinutes != nil {
            map["DurationMinutes"] = self.durationMinutes!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.firstScheduledTime != nil {
            map["FirstScheduledTime"] = self.firstScheduledTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.reservedPubFlow != nil {
            map["ReservedPubFlow"] = self.reservedPubFlow!
        }
        if self.reservedSubFlow != nil {
            map["ReservedSubFlow"] = self.reservedSubFlow!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.weeklyTypes != nil {
            map["WeeklyTypes"] = self.weeklyTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DurationMinutes"] as? Int32 {
            self.durationMinutes = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["FirstScheduledTime"] as? Int64 {
            self.firstScheduledTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["ReservedPubFlow"] as? Int32 {
            self.reservedPubFlow = value
        }
        if let value = dict["ReservedSubFlow"] as? Int32 {
            self.reservedSubFlow = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["ScheduleType"] as? String {
            self.scheduleType = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["WeeklyTypes"] as? [String] {
            self.weeklyTypes = value
        }
    }
}

public class CreateScheduledScalingRuleShrinkRequest : Tea.TeaModel {
    public var durationMinutes: Int32?

    public var enable: Bool?

    public var firstScheduledTime: Int64?

    public var instanceId: String?

    public var regionId: String?

    public var repeatType: String?

    public var reservedPubFlow: Int32?

    public var reservedSubFlow: Int32?

    public var ruleName: String?

    public var scheduleType: String?

    public var timeZone: String?

    public var weeklyTypesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.durationMinutes != nil {
            map["DurationMinutes"] = self.durationMinutes!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.firstScheduledTime != nil {
            map["FirstScheduledTime"] = self.firstScheduledTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.repeatType != nil {
            map["RepeatType"] = self.repeatType!
        }
        if self.reservedPubFlow != nil {
            map["ReservedPubFlow"] = self.reservedPubFlow!
        }
        if self.reservedSubFlow != nil {
            map["ReservedSubFlow"] = self.reservedSubFlow!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.weeklyTypesShrink != nil {
            map["WeeklyTypes"] = self.weeklyTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DurationMinutes"] as? Int32 {
            self.durationMinutes = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["FirstScheduledTime"] as? Int64 {
            self.firstScheduledTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RepeatType"] as? String {
            self.repeatType = value
        }
        if let value = dict["ReservedPubFlow"] as? Int32 {
            self.reservedPubFlow = value
        }
        if let value = dict["ReservedSubFlow"] as? Int32 {
            self.reservedSubFlow = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["ScheduleType"] as? String {
            self.scheduleType = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["WeeklyTypes"] as? String {
            self.weeklyTypesShrink = value
        }
    }
}

public class CreateScheduledScalingRuleResponseBody : Tea.TeaModel {
    public var code: Int64?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateScheduledScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScheduledScalingRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateScheduledScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTopicRequest : Tea.TeaModel {
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
    public var compactTopic: Bool?

    public var config: String?

    public var instanceId: String?

    public var localTopic: Bool?

    public var minInsyncReplicas: Int64?

    public var partitionNum: String?

    public var regionId: String?

    public var remark: String?

    public var replicationFactor: Int64?

    public var tag: [CreateTopicRequest.Tag]?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compactTopic != nil {
            map["CompactTopic"] = self.compactTopic!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.localTopic != nil {
            map["LocalTopic"] = self.localTopic!
        }
        if self.minInsyncReplicas != nil {
            map["MinInsyncReplicas"] = self.minInsyncReplicas!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.replicationFactor != nil {
            map["ReplicationFactor"] = self.replicationFactor!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompactTopic"] as? Bool {
            self.compactTopic = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LocalTopic"] as? Bool {
            self.localTopic = value
        }
        if let value = dict["MinInsyncReplicas"] as? Int64 {
            self.minInsyncReplicas = value
        }
        if let value = dict["PartitionNum"] as? String {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ReplicationFactor"] as? Int64 {
            self.replicationFactor = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateTopicRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateTopicRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class CreateTopicResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAclRequest : Tea.TeaModel {
    public var aclOperationType: String?

    public var aclOperationTypes: String?

    public var aclPermissionType: String?

    public var aclResourceName: String?

    public var aclResourcePatternType: String?

    public var aclResourceType: String?

    public var host: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.aclOperationType != nil {
            map["AclOperationType"] = self.aclOperationType!
        }
        if self.aclOperationTypes != nil {
            map["AclOperationTypes"] = self.aclOperationTypes!
        }
        if self.aclPermissionType != nil {
            map["AclPermissionType"] = self.aclPermissionType!
        }
        if self.aclResourceName != nil {
            map["AclResourceName"] = self.aclResourceName!
        }
        if self.aclResourcePatternType != nil {
            map["AclResourcePatternType"] = self.aclResourcePatternType!
        }
        if self.aclResourceType != nil {
            map["AclResourceType"] = self.aclResourceType!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclOperationType"] as? String {
            self.aclOperationType = value
        }
        if let value = dict["AclOperationTypes"] as? String {
            self.aclOperationTypes = value
        }
        if let value = dict["AclPermissionType"] as? String {
            self.aclPermissionType = value
        }
        if let value = dict["AclResourceName"] as? String {
            self.aclResourceName = value
        }
        if let value = dict["AclResourcePatternType"] as? String {
            self.aclResourcePatternType = value
        }
        if let value = dict["AclResourceType"] as? String {
            self.aclResourceType = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class DeleteAclResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAclResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteConsumerGroupRequest : Tea.TeaModel {
    public var consumerId: String?

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
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
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
        if let value = dict["ConsumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteConsumerGroupResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteConsumerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConsumerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteConsumerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
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

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSaslUserRequest : Tea.TeaModel {
    public var instanceId: String?

    public var mechanism: String?

    public var regionId: String?

    public var type: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mechanism != nil {
            map["Mechanism"] = self.mechanism!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mechanism"] as? String {
            self.mechanism = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class DeleteSaslUserResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteSaslUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSaslUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSaslUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteScheduledScalingRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var ruleName: String?

    public override init() {
        super.init()
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
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
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
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class DeleteScheduledScalingRuleResponseBody : Tea.TeaModel {
    public var code: Int64?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteScheduledScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScheduledScalingRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteScheduledScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTopicRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var topic: String?

    public override init() {
        super.init()
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
        if self.topic != nil {
            map["Topic"] = self.topic!
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
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class DeleteTopicResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteTopicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTopicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTopicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAclResourceNameRequest : Tea.TeaModel {
    public var aclResourcePatternType: String?

    public var aclResourceType: String?

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
        if self.aclResourcePatternType != nil {
            map["AclResourcePatternType"] = self.aclResourcePatternType!
        }
        if self.aclResourceType != nil {
            map["AclResourceType"] = self.aclResourceType!
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
        if let value = dict["AclResourcePatternType"] as? String {
            self.aclResourcePatternType = value
        }
        if let value = dict["AclResourceType"] as? String {
            self.aclResourceType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeAclResourceNameResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var data: [String]?

        public override init() {
            super.init()
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
                map["data"] = self.data!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [String] {
                self.data = value
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAclResourceNameResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeAclResourceNameResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAclResourceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAclResourceNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAclResourceNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAclsRequest : Tea.TeaModel {
    public var aclOperationType: String?

    public var aclPermissionType: String?

    public var aclResourceName: String?

    public var aclResourcePatternType: String?

    public var aclResourceType: String?

    public var host: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.aclOperationType != nil {
            map["AclOperationType"] = self.aclOperationType!
        }
        if self.aclPermissionType != nil {
            map["AclPermissionType"] = self.aclPermissionType!
        }
        if self.aclResourceName != nil {
            map["AclResourceName"] = self.aclResourceName!
        }
        if self.aclResourcePatternType != nil {
            map["AclResourcePatternType"] = self.aclResourcePatternType!
        }
        if self.aclResourceType != nil {
            map["AclResourceType"] = self.aclResourceType!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclOperationType"] as? String {
            self.aclOperationType = value
        }
        if let value = dict["AclPermissionType"] as? String {
            self.aclPermissionType = value
        }
        if let value = dict["AclResourceName"] as? String {
            self.aclResourceName = value
        }
        if let value = dict["AclResourcePatternType"] as? String {
            self.aclResourcePatternType = value
        }
        if let value = dict["AclResourceType"] as? String {
            self.aclResourceType = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class DescribeAclsResponseBody : Tea.TeaModel {
    public class KafkaAclList : Tea.TeaModel {
        public class KafkaAclVO : Tea.TeaModel {
            public var aclOperationType: String?

            public var aclPermissionType: String?

            public var aclResourceName: String?

            public var aclResourcePatternType: String?

            public var aclResourceType: String?

            public var host: String?

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
                if self.aclOperationType != nil {
                    map["AclOperationType"] = self.aclOperationType!
                }
                if self.aclPermissionType != nil {
                    map["AclPermissionType"] = self.aclPermissionType!
                }
                if self.aclResourceName != nil {
                    map["AclResourceName"] = self.aclResourceName!
                }
                if self.aclResourcePatternType != nil {
                    map["AclResourcePatternType"] = self.aclResourcePatternType!
                }
                if self.aclResourceType != nil {
                    map["AclResourceType"] = self.aclResourceType!
                }
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AclOperationType"] as? String {
                    self.aclOperationType = value
                }
                if let value = dict["AclPermissionType"] as? String {
                    self.aclPermissionType = value
                }
                if let value = dict["AclResourceName"] as? String {
                    self.aclResourceName = value
                }
                if let value = dict["AclResourcePatternType"] as? String {
                    self.aclResourcePatternType = value
                }
                if let value = dict["AclResourceType"] as? String {
                    self.aclResourceType = value
                }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
                if let value = dict["Username"] as? String {
                    self.username = value
                }
            }
        }
        public var kafkaAclVO: [DescribeAclsResponseBody.KafkaAclList.KafkaAclVO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kafkaAclVO != nil {
                var tmp : [Any] = []
                for k in self.kafkaAclVO! {
                    tmp.append(k.toMap())
                }
                map["KafkaAclVO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KafkaAclVO"] as? [Any?] {
                var tmp : [DescribeAclsResponseBody.KafkaAclList.KafkaAclVO] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAclsResponseBody.KafkaAclList.KafkaAclVO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.kafkaAclVO = tmp
            }
        }
    }
    public var code: Int32?

    public var kafkaAclList: DescribeAclsResponseBody.KafkaAclList?

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
        try self.kafkaAclList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.kafkaAclList != nil {
            map["KafkaAclList"] = self.kafkaAclList?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["KafkaAclList"] as? [String: Any?] {
            var model = DescribeAclsResponseBody.KafkaAclList()
            model.fromMap(value)
            self.kafkaAclList = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAclsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAclsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAclsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSaslUsersRequest : Tea.TeaModel {
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

public class DescribeSaslUsersResponseBody : Tea.TeaModel {
    public class SaslUserList : Tea.TeaModel {
        public class SaslUserVO : Tea.TeaModel {
            public var mechanism: String?

            public var password: String?

            public var type: String?

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
                if self.mechanism != nil {
                    map["Mechanism"] = self.mechanism!
                }
                if self.password != nil {
                    map["Password"] = self.password!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Mechanism"] as? String {
                    self.mechanism = value
                }
                if let value = dict["Password"] as? String {
                    self.password = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Username"] as? String {
                    self.username = value
                }
            }
        }
        public var saslUserVO: [DescribeSaslUsersResponseBody.SaslUserList.SaslUserVO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.saslUserVO != nil {
                var tmp : [Any] = []
                for k in self.saslUserVO! {
                    tmp.append(k.toMap())
                }
                map["SaslUserVO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SaslUserVO"] as? [Any?] {
                var tmp : [DescribeSaslUsersResponseBody.SaslUserList.SaslUserVO] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSaslUsersResponseBody.SaslUserList.SaslUserVO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.saslUserVO = tmp
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public var saslUserList: DescribeSaslUsersResponseBody.SaslUserList?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.saslUserList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.saslUserList != nil {
            map["SaslUserList"] = self.saslUserList?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SaslUserList"] as? [String: Any?] {
            var model = DescribeSaslUsersResponseBody.SaslUserList()
            model.fromMap(value)
            self.saslUserList = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeSaslUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSaslUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSaslUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableAutoGroupCreationRequest : Tea.TeaModel {
    public var enable: Bool?

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
        if self.enable != nil {
            map["Enable"] = self.enable!
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
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class EnableAutoGroupCreationResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnableAutoGroupCreationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableAutoGroupCreationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableAutoGroupCreationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableAutoTopicCreationRequest : Tea.TeaModel {
    public var instanceId: String?

    public var operate: String?

    public var partitionNum: Int64?

    public var regionId: String?

    public var updatePartition: Bool?

    public override init() {
        super.init()
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
        if self.operate != nil {
            map["Operate"] = self.operate!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.updatePartition != nil {
            map["UpdatePartition"] = self.updatePartition!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Operate"] as? String {
            self.operate = value
        }
        if let value = dict["PartitionNum"] as? Int64 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UpdatePartition"] as? Bool {
            self.updatePartition = value
        }
    }
}

public class EnableAutoTopicCreationResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnableAutoTopicCreationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableAutoTopicCreationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableAutoTopicCreationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FailoverTestRequest : Tea.TeaModel {
    public var configs: String?

    public var description_: String?

    public var duration: Int64?

    public var executeTime: Int64?

    public var instanceId: String?

    public var name: String?

    public var regionId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.executeTime != nil {
            map["ExecuteTime"] = self.executeTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Configs"] as? String {
            self.configs = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["ExecuteTime"] as? Int64 {
            self.executeTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class FailoverTestResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class FailoverTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FailoverTestResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FailoverTestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAllInstanceIdListRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetAllInstanceIdListResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var instanceIds: [String: Any]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["InstanceIds"] as? [String: Any] {
            self.instanceIds = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAllInstanceIdListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAllInstanceIdListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAllInstanceIdListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAllowedIpListRequest : Tea.TeaModel {
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

public class GetAllowedIpListResponseBody : Tea.TeaModel {
    public class AllowedList : Tea.TeaModel {
        public class InternetList : Tea.TeaModel {
            public var allowedIpGroup: [String: String]?

            public var allowedIpList: [String]?

            public var blackIPList: [String]?

            public var blackIPMap: [String: String]?

            public var portRange: String?

            public var securityGroupId: String?

            public var userDefinedSharedSecurityGroup: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowedIpGroup != nil {
                    map["AllowedIpGroup"] = self.allowedIpGroup!
                }
                if self.allowedIpList != nil {
                    map["AllowedIpList"] = self.allowedIpList!
                }
                if self.blackIPList != nil {
                    map["BlackIPList"] = self.blackIPList!
                }
                if self.blackIPMap != nil {
                    map["BlackIPMap"] = self.blackIPMap!
                }
                if self.portRange != nil {
                    map["PortRange"] = self.portRange!
                }
                if self.securityGroupId != nil {
                    map["SecurityGroupId"] = self.securityGroupId!
                }
                if self.userDefinedSharedSecurityGroup != nil {
                    map["UserDefinedSharedSecurityGroup"] = self.userDefinedSharedSecurityGroup!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowedIpGroup"] as? [String: String] {
                    self.allowedIpGroup = value
                }
                if let value = dict["AllowedIpList"] as? [String] {
                    self.allowedIpList = value
                }
                if let value = dict["BlackIPList"] as? [String] {
                    self.blackIPList = value
                }
                if let value = dict["BlackIPMap"] as? [String: String] {
                    self.blackIPMap = value
                }
                if let value = dict["PortRange"] as? String {
                    self.portRange = value
                }
                if let value = dict["SecurityGroupId"] as? String {
                    self.securityGroupId = value
                }
                if let value = dict["UserDefinedSharedSecurityGroup"] as? Bool {
                    self.userDefinedSharedSecurityGroup = value
                }
            }
        }
        public class VpcList : Tea.TeaModel {
            public var allowedIpGroup: [String: String]?

            public var allowedIpList: [String]?

            public var blackIPList: [String]?

            public var blackIPMap: [String: String]?

            public var portRange: String?

            public var securityGroupId: String?

            public var userDefinedSharedSecurityGroup: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowedIpGroup != nil {
                    map["AllowedIpGroup"] = self.allowedIpGroup!
                }
                if self.allowedIpList != nil {
                    map["AllowedIpList"] = self.allowedIpList!
                }
                if self.blackIPList != nil {
                    map["BlackIPList"] = self.blackIPList!
                }
                if self.blackIPMap != nil {
                    map["BlackIPMap"] = self.blackIPMap!
                }
                if self.portRange != nil {
                    map["PortRange"] = self.portRange!
                }
                if self.securityGroupId != nil {
                    map["SecurityGroupId"] = self.securityGroupId!
                }
                if self.userDefinedSharedSecurityGroup != nil {
                    map["UserDefinedSharedSecurityGroup"] = self.userDefinedSharedSecurityGroup!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowedIpGroup"] as? [String: String] {
                    self.allowedIpGroup = value
                }
                if let value = dict["AllowedIpList"] as? [String] {
                    self.allowedIpList = value
                }
                if let value = dict["BlackIPList"] as? [String] {
                    self.blackIPList = value
                }
                if let value = dict["BlackIPMap"] as? [String: String] {
                    self.blackIPMap = value
                }
                if let value = dict["PortRange"] as? String {
                    self.portRange = value
                }
                if let value = dict["SecurityGroupId"] as? String {
                    self.securityGroupId = value
                }
                if let value = dict["UserDefinedSharedSecurityGroup"] as? Bool {
                    self.userDefinedSharedSecurityGroup = value
                }
            }
        }
        public var deployType: Int32?

        public var internetList: [GetAllowedIpListResponseBody.AllowedList.InternetList]?

        public var vpcList: [GetAllowedIpListResponseBody.AllowedList.VpcList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deployType != nil {
                map["DeployType"] = self.deployType!
            }
            if self.internetList != nil {
                var tmp : [Any] = []
                for k in self.internetList! {
                    tmp.append(k.toMap())
                }
                map["InternetList"] = tmp
            }
            if self.vpcList != nil {
                var tmp : [Any] = []
                for k in self.vpcList! {
                    tmp.append(k.toMap())
                }
                map["VpcList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeployType"] as? Int32 {
                self.deployType = value
            }
            if let value = dict["InternetList"] as? [Any?] {
                var tmp : [GetAllowedIpListResponseBody.AllowedList.InternetList] = []
                for v in value {
                    if v != nil {
                        var model = GetAllowedIpListResponseBody.AllowedList.InternetList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.internetList = tmp
            }
            if let value = dict["VpcList"] as? [Any?] {
                var tmp : [GetAllowedIpListResponseBody.AllowedList.VpcList] = []
                for v in value {
                    if v != nil {
                        var model = GetAllowedIpListResponseBody.AllowedList.VpcList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vpcList = tmp
            }
        }
    }
    public var allowedList: GetAllowedIpListResponseBody.AllowedList?

    public var code: Int32?

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
        try self.allowedList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedList != nil {
            map["AllowedList"] = self.allowedList?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedList"] as? [String: Any?] {
            var model = GetAllowedIpListResponseBody.AllowedList()
            model.fromMap(value)
            self.allowedList = model
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAllowedIpListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAllowedIpListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAllowedIpListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAutoScalingConfigurationRequest : Tea.TeaModel {
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

public class GetAutoScalingConfigurationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ScheduledScalingRules : Tea.TeaModel {
            public class ScheduledScalingRules : Tea.TeaModel {
                public class WeeklyTypes : Tea.TeaModel {
                    public var weeklyTypes: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.weeklyTypes != nil {
                            map["WeeklyTypes"] = self.weeklyTypes!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["WeeklyTypes"] as? [String] {
                            self.weeklyTypes = value
                        }
                    }
                }
                public var durationMinutes: Int64?

                public var enable: Bool?

                public var estimatedElasticScalingDownTimeSecs: Int64?

                public var estimatedElasticScalingUpTimeSecs: Int64?

                public var firstScheduledTime: Int64?

                public var repeatType: String?

                public var reservedPubFlow: Int64?

                public var reservedSubFlow: Int64?

                public var ruleId: Int64?

                public var ruleName: String?

                public var scheduleType: String?

                public var timeZone: String?

                public var weeklyTypes: GetAutoScalingConfigurationResponseBody.Data.ScheduledScalingRules.ScheduledScalingRules.WeeklyTypes?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.weeklyTypes?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.durationMinutes != nil {
                        map["DurationMinutes"] = self.durationMinutes!
                    }
                    if self.enable != nil {
                        map["Enable"] = self.enable!
                    }
                    if self.estimatedElasticScalingDownTimeSecs != nil {
                        map["EstimatedElasticScalingDownTimeSecs"] = self.estimatedElasticScalingDownTimeSecs!
                    }
                    if self.estimatedElasticScalingUpTimeSecs != nil {
                        map["EstimatedElasticScalingUpTimeSecs"] = self.estimatedElasticScalingUpTimeSecs!
                    }
                    if self.firstScheduledTime != nil {
                        map["FirstScheduledTime"] = self.firstScheduledTime!
                    }
                    if self.repeatType != nil {
                        map["RepeatType"] = self.repeatType!
                    }
                    if self.reservedPubFlow != nil {
                        map["ReservedPubFlow"] = self.reservedPubFlow!
                    }
                    if self.reservedSubFlow != nil {
                        map["ReservedSubFlow"] = self.reservedSubFlow!
                    }
                    if self.ruleId != nil {
                        map["RuleId"] = self.ruleId!
                    }
                    if self.ruleName != nil {
                        map["RuleName"] = self.ruleName!
                    }
                    if self.scheduleType != nil {
                        map["ScheduleType"] = self.scheduleType!
                    }
                    if self.timeZone != nil {
                        map["TimeZone"] = self.timeZone!
                    }
                    if self.weeklyTypes != nil {
                        map["WeeklyTypes"] = self.weeklyTypes?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DurationMinutes"] as? Int64 {
                        self.durationMinutes = value
                    }
                    if let value = dict["Enable"] as? Bool {
                        self.enable = value
                    }
                    if let value = dict["EstimatedElasticScalingDownTimeSecs"] as? Int64 {
                        self.estimatedElasticScalingDownTimeSecs = value
                    }
                    if let value = dict["EstimatedElasticScalingUpTimeSecs"] as? Int64 {
                        self.estimatedElasticScalingUpTimeSecs = value
                    }
                    if let value = dict["FirstScheduledTime"] as? Int64 {
                        self.firstScheduledTime = value
                    }
                    if let value = dict["RepeatType"] as? String {
                        self.repeatType = value
                    }
                    if let value = dict["ReservedPubFlow"] as? Int64 {
                        self.reservedPubFlow = value
                    }
                    if let value = dict["ReservedSubFlow"] as? Int64 {
                        self.reservedSubFlow = value
                    }
                    if let value = dict["RuleId"] as? Int64 {
                        self.ruleId = value
                    }
                    if let value = dict["RuleName"] as? String {
                        self.ruleName = value
                    }
                    if let value = dict["ScheduleType"] as? String {
                        self.scheduleType = value
                    }
                    if let value = dict["TimeZone"] as? String {
                        self.timeZone = value
                    }
                    if let value = dict["WeeklyTypes"] as? [String: Any?] {
                        var model = GetAutoScalingConfigurationResponseBody.Data.ScheduledScalingRules.ScheduledScalingRules.WeeklyTypes()
                        model.fromMap(value)
                        self.weeklyTypes = model
                    }
                }
            }
            public var scheduledScalingRules: [GetAutoScalingConfigurationResponseBody.Data.ScheduledScalingRules.ScheduledScalingRules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.scheduledScalingRules != nil {
                    var tmp : [Any] = []
                    for k in self.scheduledScalingRules! {
                        tmp.append(k.toMap())
                    }
                    map["ScheduledScalingRules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ScheduledScalingRules"] as? [Any?] {
                    var tmp : [GetAutoScalingConfigurationResponseBody.Data.ScheduledScalingRules.ScheduledScalingRules] = []
                    for v in value {
                        if v != nil {
                            var model = GetAutoScalingConfigurationResponseBody.Data.ScheduledScalingRules.ScheduledScalingRules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.scheduledScalingRules = tmp
                }
            }
        }
        public var scheduledScalingRules: GetAutoScalingConfigurationResponseBody.Data.ScheduledScalingRules?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.scheduledScalingRules?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.scheduledScalingRules != nil {
                map["ScheduledScalingRules"] = self.scheduledScalingRules?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ScheduledScalingRules"] as? [String: Any?] {
                var model = GetAutoScalingConfigurationResponseBody.Data.ScheduledScalingRules()
                model.fromMap(value)
                self.scheduledScalingRules = model
            }
        }
    }
    public var code: Int64?

    public var data: GetAutoScalingConfigurationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAutoScalingConfigurationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAutoScalingConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAutoScalingConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAutoScalingConfigurationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumerListRequest : Tea.TeaModel {
    public var consumerId: String?

    public var currentPage: Int32?

    public var instanceId: String?

    public var pageSize: Int32?

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
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if let value = dict["ConsumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetConsumerListResponseBody : Tea.TeaModel {
    public class ConsumerList : Tea.TeaModel {
        public class ConsumerVO : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class TagVO : Tea.TeaModel {
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
                public var tagVO: [GetConsumerListResponseBody.ConsumerList.ConsumerVO.Tags.TagVO]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagVO != nil {
                        var tmp : [Any] = []
                        for k in self.tagVO! {
                            tmp.append(k.toMap())
                        }
                        map["TagVO"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TagVO"] as? [Any?] {
                        var tmp : [GetConsumerListResponseBody.ConsumerList.ConsumerVO.Tags.TagVO] = []
                        for v in value {
                            if v != nil {
                                var model = GetConsumerListResponseBody.ConsumerList.ConsumerVO.Tags.TagVO()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tagVO = tmp
                    }
                }
            }
            public var automaticallyCreatedGroup: Bool?

            public var consumerId: String?

            public var createTime: Int64?

            public var instanceId: String?

            public var regionId: String?

            public var remark: String?

            public var tags: GetConsumerListResponseBody.ConsumerList.ConsumerVO.Tags?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.automaticallyCreatedGroup != nil {
                    map["AutomaticallyCreatedGroup"] = self.automaticallyCreatedGroup!
                }
                if self.consumerId != nil {
                    map["ConsumerId"] = self.consumerId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutomaticallyCreatedGroup"] as? Bool {
                    self.automaticallyCreatedGroup = value
                }
                if let value = dict["ConsumerId"] as? String {
                    self.consumerId = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = GetConsumerListResponseBody.ConsumerList.ConsumerVO.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
            }
        }
        public var consumerVO: [GetConsumerListResponseBody.ConsumerList.ConsumerVO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumerVO != nil {
                var tmp : [Any] = []
                for k in self.consumerVO! {
                    tmp.append(k.toMap())
                }
                map["ConsumerVO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConsumerVO"] as? [Any?] {
                var tmp : [GetConsumerListResponseBody.ConsumerList.ConsumerVO] = []
                for v in value {
                    if v != nil {
                        var model = GetConsumerListResponseBody.ConsumerList.ConsumerVO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.consumerVO = tmp
            }
        }
    }
    public var code: Int32?

    public var consumerList: GetConsumerListResponseBody.ConsumerList?

    public var currentPage: Int32?

    public var message: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.consumerList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.consumerList != nil {
            map["ConsumerList"] = self.consumerList?.toMap()
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["ConsumerList"] as? [String: Any?] {
            var model = GetConsumerListResponseBody.ConsumerList()
            model.fromMap(value)
            self.consumerList = model
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class GetConsumerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetConsumerListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConsumerProgressRequest : Tea.TeaModel {
    public var consumerId: String?

    public var hideLastTimestamp: Bool?

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
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
        }
        if self.hideLastTimestamp != nil {
            map["HideLastTimestamp"] = self.hideLastTimestamp!
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
        if let value = dict["ConsumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["HideLastTimestamp"] as? Bool {
            self.hideLastTimestamp = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetConsumerProgressResponseBody : Tea.TeaModel {
    public class ConsumerProgress : Tea.TeaModel {
        public class RebalanceInfoList : Tea.TeaModel {
            public class RebalanceInfoList : Tea.TeaModel {
                public var generation: Int64?

                public var groupId: String?

                public var lastRebalanceTimestamp: Int64?

                public var reason: String?

                public var rebalanceSuccess: Bool?

                public var rebalanceTimeConsuming: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.generation != nil {
                        map["Generation"] = self.generation!
                    }
                    if self.groupId != nil {
                        map["GroupId"] = self.groupId!
                    }
                    if self.lastRebalanceTimestamp != nil {
                        map["LastRebalanceTimestamp"] = self.lastRebalanceTimestamp!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.rebalanceSuccess != nil {
                        map["RebalanceSuccess"] = self.rebalanceSuccess!
                    }
                    if self.rebalanceTimeConsuming != nil {
                        map["RebalanceTimeConsuming"] = self.rebalanceTimeConsuming!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Generation"] as? Int64 {
                        self.generation = value
                    }
                    if let value = dict["GroupId"] as? String {
                        self.groupId = value
                    }
                    if let value = dict["LastRebalanceTimestamp"] as? Int64 {
                        self.lastRebalanceTimestamp = value
                    }
                    if let value = dict["Reason"] as? String {
                        self.reason = value
                    }
                    if let value = dict["RebalanceSuccess"] as? Bool {
                        self.rebalanceSuccess = value
                    }
                    if let value = dict["RebalanceTimeConsuming"] as? Int64 {
                        self.rebalanceTimeConsuming = value
                    }
                }
            }
            public var rebalanceInfoList: [GetConsumerProgressResponseBody.ConsumerProgress.RebalanceInfoList.RebalanceInfoList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rebalanceInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.rebalanceInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["RebalanceInfoList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RebalanceInfoList"] as? [Any?] {
                    var tmp : [GetConsumerProgressResponseBody.ConsumerProgress.RebalanceInfoList.RebalanceInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = GetConsumerProgressResponseBody.ConsumerProgress.RebalanceInfoList.RebalanceInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.rebalanceInfoList = tmp
                }
            }
        }
        public class TopicList : Tea.TeaModel {
            public class TopicList : Tea.TeaModel {
                public class OffsetList : Tea.TeaModel {
                    public class OffsetList : Tea.TeaModel {
                        public var accumulate: Int64?

                        public var brokerOffset: Int64?

                        public var clientId: String?

                        public var clientIp: String?

                        public var consumerOffset: Int64?

                        public var lastTimestamp: Int64?

                        public var memberId: String?

                        public var partition: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.accumulate != nil {
                                map["Accumulate"] = self.accumulate!
                            }
                            if self.brokerOffset != nil {
                                map["BrokerOffset"] = self.brokerOffset!
                            }
                            if self.clientId != nil {
                                map["ClientId"] = self.clientId!
                            }
                            if self.clientIp != nil {
                                map["ClientIp"] = self.clientIp!
                            }
                            if self.consumerOffset != nil {
                                map["ConsumerOffset"] = self.consumerOffset!
                            }
                            if self.lastTimestamp != nil {
                                map["LastTimestamp"] = self.lastTimestamp!
                            }
                            if self.memberId != nil {
                                map["MemberId"] = self.memberId!
                            }
                            if self.partition != nil {
                                map["Partition"] = self.partition!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Accumulate"] as? Int64 {
                                self.accumulate = value
                            }
                            if let value = dict["BrokerOffset"] as? Int64 {
                                self.brokerOffset = value
                            }
                            if let value = dict["ClientId"] as? String {
                                self.clientId = value
                            }
                            if let value = dict["ClientIp"] as? String {
                                self.clientIp = value
                            }
                            if let value = dict["ConsumerOffset"] as? Int64 {
                                self.consumerOffset = value
                            }
                            if let value = dict["LastTimestamp"] as? Int64 {
                                self.lastTimestamp = value
                            }
                            if let value = dict["MemberId"] as? String {
                                self.memberId = value
                            }
                            if let value = dict["Partition"] as? Int32 {
                                self.partition = value
                            }
                        }
                    }
                    public var offsetList: [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList.OffsetList]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.offsetList != nil {
                            var tmp : [Any] = []
                            for k in self.offsetList! {
                                tmp.append(k.toMap())
                            }
                            map["OffsetList"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["OffsetList"] as? [Any?] {
                            var tmp : [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList.OffsetList] = []
                            for v in value {
                                if v != nil {
                                    var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList.OffsetList()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.offsetList = tmp
                        }
                    }
                }
                public var lastTimestamp: Int64?

                public var offsetList: GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList?

                public var topic: String?

                public var totalDiff: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.offsetList?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.lastTimestamp != nil {
                        map["LastTimestamp"] = self.lastTimestamp!
                    }
                    if self.offsetList != nil {
                        map["OffsetList"] = self.offsetList?.toMap()
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    if self.totalDiff != nil {
                        map["TotalDiff"] = self.totalDiff!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["LastTimestamp"] as? Int64 {
                        self.lastTimestamp = value
                    }
                    if let value = dict["OffsetList"] as? [String: Any?] {
                        var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList()
                        model.fromMap(value)
                        self.offsetList = model
                    }
                    if let value = dict["Topic"] as? String {
                        self.topic = value
                    }
                    if let value = dict["TotalDiff"] as? Int64 {
                        self.totalDiff = value
                    }
                }
            }
            public var topicList: [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.topicList != nil {
                    var tmp : [Any] = []
                    for k in self.topicList! {
                        tmp.append(k.toMap())
                    }
                    map["TopicList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TopicList"] as? [Any?] {
                    var tmp : [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList] = []
                    for v in value {
                        if v != nil {
                            var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.topicList = tmp
                }
            }
        }
        public var lastTimestamp: Int64?

        public var rebalanceInfoList: GetConsumerProgressResponseBody.ConsumerProgress.RebalanceInfoList?

        public var topicList: GetConsumerProgressResponseBody.ConsumerProgress.TopicList?

        public var totalDiff: Int64?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.rebalanceInfoList?.validate()
            try self.topicList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastTimestamp != nil {
                map["LastTimestamp"] = self.lastTimestamp!
            }
            if self.rebalanceInfoList != nil {
                map["RebalanceInfoList"] = self.rebalanceInfoList?.toMap()
            }
            if self.topicList != nil {
                map["TopicList"] = self.topicList?.toMap()
            }
            if self.totalDiff != nil {
                map["TotalDiff"] = self.totalDiff!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LastTimestamp"] as? Int64 {
                self.lastTimestamp = value
            }
            if let value = dict["RebalanceInfoList"] as? [String: Any?] {
                var model = GetConsumerProgressResponseBody.ConsumerProgress.RebalanceInfoList()
                model.fromMap(value)
                self.rebalanceInfoList = model
            }
            if let value = dict["TopicList"] as? [String: Any?] {
                var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList()
                model.fromMap(value)
                self.topicList = model
            }
            if let value = dict["TotalDiff"] as? Int64 {
                self.totalDiff = value
            }
            if let value = dict["state"] as? String {
                self.state = value
            }
        }
    }
    public var code: Int32?

    public var consumerProgress: GetConsumerProgressResponseBody.ConsumerProgress?

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
        try self.consumerProgress?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.consumerProgress != nil {
            map["ConsumerProgress"] = self.consumerProgress?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["ConsumerProgress"] as? [String: Any?] {
            var model = GetConsumerProgressResponseBody.ConsumerProgress()
            model.fromMap(value)
            self.consumerProgress = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetConsumerProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsumerProgressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetConsumerProgressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceListRequest : Tea.TeaModel {
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

    public var orderId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var series: String?

    public var tag: [GetInstanceListRequest.Tag]?

    public override init() {
        super.init()
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.series != nil {
            map["Series"] = self.series!
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
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Series"] as? String {
            self.series = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [GetInstanceListRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceListRequest.Tag()
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

public class GetInstanceListResponseBody : Tea.TeaModel {
    public class InstanceList : Tea.TeaModel {
        public class InstanceVO : Tea.TeaModel {
            public class ConfluentConfig : Tea.TeaModel {
                public var connectCU: Int32?

                public var connectReplica: Int32?

                public var controlCenterCU: Int32?

                public var controlCenterReplica: Int32?

                public var controlCenterStorage: Int32?

                public var kafkaCU: Int32?

                public var kafkaReplica: Int32?

                public var kafkaRestProxyCU: Int32?

                public var kafkaRestProxyReplica: Int32?

                public var kafkaStorage: Int32?

                public var ksqlCU: Int32?

                public var ksqlReplica: Int32?

                public var ksqlStorage: Int32?

                public var schemaRegistryCU: Int32?

                public var schemaRegistryReplica: Int32?

                public var zooKeeperCU: Int32?

                public var zooKeeperReplica: Int32?

                public var zooKeeperStorage: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.connectCU != nil {
                        map["ConnectCU"] = self.connectCU!
                    }
                    if self.connectReplica != nil {
                        map["ConnectReplica"] = self.connectReplica!
                    }
                    if self.controlCenterCU != nil {
                        map["ControlCenterCU"] = self.controlCenterCU!
                    }
                    if self.controlCenterReplica != nil {
                        map["ControlCenterReplica"] = self.controlCenterReplica!
                    }
                    if self.controlCenterStorage != nil {
                        map["ControlCenterStorage"] = self.controlCenterStorage!
                    }
                    if self.kafkaCU != nil {
                        map["KafkaCU"] = self.kafkaCU!
                    }
                    if self.kafkaReplica != nil {
                        map["KafkaReplica"] = self.kafkaReplica!
                    }
                    if self.kafkaRestProxyCU != nil {
                        map["KafkaRestProxyCU"] = self.kafkaRestProxyCU!
                    }
                    if self.kafkaRestProxyReplica != nil {
                        map["KafkaRestProxyReplica"] = self.kafkaRestProxyReplica!
                    }
                    if self.kafkaStorage != nil {
                        map["KafkaStorage"] = self.kafkaStorage!
                    }
                    if self.ksqlCU != nil {
                        map["KsqlCU"] = self.ksqlCU!
                    }
                    if self.ksqlReplica != nil {
                        map["KsqlReplica"] = self.ksqlReplica!
                    }
                    if self.ksqlStorage != nil {
                        map["KsqlStorage"] = self.ksqlStorage!
                    }
                    if self.schemaRegistryCU != nil {
                        map["SchemaRegistryCU"] = self.schemaRegistryCU!
                    }
                    if self.schemaRegistryReplica != nil {
                        map["SchemaRegistryReplica"] = self.schemaRegistryReplica!
                    }
                    if self.zooKeeperCU != nil {
                        map["ZooKeeperCU"] = self.zooKeeperCU!
                    }
                    if self.zooKeeperReplica != nil {
                        map["ZooKeeperReplica"] = self.zooKeeperReplica!
                    }
                    if self.zooKeeperStorage != nil {
                        map["ZooKeeperStorage"] = self.zooKeeperStorage!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConnectCU"] as? Int32 {
                        self.connectCU = value
                    }
                    if let value = dict["ConnectReplica"] as? Int32 {
                        self.connectReplica = value
                    }
                    if let value = dict["ControlCenterCU"] as? Int32 {
                        self.controlCenterCU = value
                    }
                    if let value = dict["ControlCenterReplica"] as? Int32 {
                        self.controlCenterReplica = value
                    }
                    if let value = dict["ControlCenterStorage"] as? Int32 {
                        self.controlCenterStorage = value
                    }
                    if let value = dict["KafkaCU"] as? Int32 {
                        self.kafkaCU = value
                    }
                    if let value = dict["KafkaReplica"] as? Int32 {
                        self.kafkaReplica = value
                    }
                    if let value = dict["KafkaRestProxyCU"] as? Int32 {
                        self.kafkaRestProxyCU = value
                    }
                    if let value = dict["KafkaRestProxyReplica"] as? Int32 {
                        self.kafkaRestProxyReplica = value
                    }
                    if let value = dict["KafkaStorage"] as? Int32 {
                        self.kafkaStorage = value
                    }
                    if let value = dict["KsqlCU"] as? Int32 {
                        self.ksqlCU = value
                    }
                    if let value = dict["KsqlReplica"] as? Int32 {
                        self.ksqlReplica = value
                    }
                    if let value = dict["KsqlStorage"] as? Int32 {
                        self.ksqlStorage = value
                    }
                    if let value = dict["SchemaRegistryCU"] as? Int32 {
                        self.schemaRegistryCU = value
                    }
                    if let value = dict["SchemaRegistryReplica"] as? Int32 {
                        self.schemaRegistryReplica = value
                    }
                    if let value = dict["ZooKeeperCU"] as? Int32 {
                        self.zooKeeperCU = value
                    }
                    if let value = dict["ZooKeeperReplica"] as? Int32 {
                        self.zooKeeperReplica = value
                    }
                    if let value = dict["ZooKeeperStorage"] as? Int32 {
                        self.zooKeeperStorage = value
                    }
                }
            }
            public class ConfluentInstanceComponents : Tea.TeaModel {
                public class ConfluentInstanceComponentVO : Tea.TeaModel {
                    public var componentType: String?

                    public var deployModule: String?

                    public var pubEndpoint: String?

                    public var vpcEndpoint: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.componentType != nil {
                            map["ComponentType"] = self.componentType!
                        }
                        if self.deployModule != nil {
                            map["DeployModule"] = self.deployModule!
                        }
                        if self.pubEndpoint != nil {
                            map["PubEndpoint"] = self.pubEndpoint!
                        }
                        if self.vpcEndpoint != nil {
                            map["VpcEndpoint"] = self.vpcEndpoint!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ComponentType"] as? String {
                            self.componentType = value
                        }
                        if let value = dict["DeployModule"] as? String {
                            self.deployModule = value
                        }
                        if let value = dict["PubEndpoint"] as? String {
                            self.pubEndpoint = value
                        }
                        if let value = dict["VpcEndpoint"] as? String {
                            self.vpcEndpoint = value
                        }
                    }
                }
                public var confluentInstanceComponentVO: [GetInstanceListResponseBody.InstanceList.InstanceVO.ConfluentInstanceComponents.ConfluentInstanceComponentVO]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confluentInstanceComponentVO != nil {
                        var tmp : [Any] = []
                        for k in self.confluentInstanceComponentVO! {
                            tmp.append(k.toMap())
                        }
                        map["ConfluentInstanceComponentVO"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConfluentInstanceComponentVO"] as? [Any?] {
                        var tmp : [GetInstanceListResponseBody.InstanceList.InstanceVO.ConfluentInstanceComponents.ConfluentInstanceComponentVO] = []
                        for v in value {
                            if v != nil {
                                var model = GetInstanceListResponseBody.InstanceList.InstanceVO.ConfluentInstanceComponents.ConfluentInstanceComponentVO()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.confluentInstanceComponentVO = tmp
                    }
                }
            }
            public class Tags : Tea.TeaModel {
                public class TagVO : Tea.TeaModel {
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
                public var tagVO: [GetInstanceListResponseBody.InstanceList.InstanceVO.Tags.TagVO]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagVO != nil {
                        var tmp : [Any] = []
                        for k in self.tagVO! {
                            tmp.append(k.toMap())
                        }
                        map["TagVO"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TagVO"] as? [Any?] {
                        var tmp : [GetInstanceListResponseBody.InstanceList.InstanceVO.Tags.TagVO] = []
                        for v in value {
                            if v != nil {
                                var model = GetInstanceListResponseBody.InstanceList.InstanceVO.Tags.TagVO()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tagVO = tmp
                    }
                }
            }
            public class UpgradeServiceDetailInfo : Tea.TeaModel {
                public var current2OpenSourceVersion: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.current2OpenSourceVersion != nil {
                        map["Current2OpenSourceVersion"] = self.current2OpenSourceVersion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Current2OpenSourceVersion"] as? String {
                        self.current2OpenSourceVersion = value
                    }
                }
            }
            public class VSwitchIds : Tea.TeaModel {
                public var vSwitchIds: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.vSwitchIds != nil {
                        map["VSwitchIds"] = self.vSwitchIds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["VSwitchIds"] as? [String] {
                        self.vSwitchIds = value
                    }
                }
            }
            public var allConfig: String?

            public var autoCreateGroupEnable: Bool?

            public var autoCreateTopicEnable: Bool?

            public var backupZoneId: String?

            public var confluentConfig: GetInstanceListResponseBody.InstanceList.InstanceVO.ConfluentConfig?

            public var confluentInstanceComponents: GetInstanceListResponseBody.InstanceList.InstanceVO.ConfluentInstanceComponents?

            public var createTime: Int64?

            public var defaultPartitionNum: Int32?

            public var deployType: Int32?

            public var diskSize: Int32?

            public var diskType: Int32?

            public var domainEndpoint: String?

            public var eipMax: Int32?

            public var endPoint: String?

            public var expiredTime: Int64?

            public var instanceId: String?

            public var ioMax: Int32?

            public var ioMaxRead: Int32?

            public var ioMaxSpec: String?

            public var ioMaxWrite: Int32?

            public var kmsKeyId: String?

            public var msgRetain: Int32?

            public var name: String?

            public var paidType: Int32?

            public var recommendedPartitionCount: Int32?

            public var regionId: String?

            public var reservedPublishCapacity: Int32?

            public var reservedSubscribeCapacity: Int32?

            public var resourceGroupId: String?

            public var saslDomainEndpoint: String?

            public var saslEndPoint: String?

            public var securityGroup: String?

            public var series: String?

            public var serviceStatus: Int32?

            public var specType: String?

            public var sslDomainEndpoint: String?

            public var sslEndPoint: String?

            public var standardZoneId: String?

            public var tags: GetInstanceListResponseBody.InstanceList.InstanceVO.Tags?

            public var topicNumLimit: Int32?

            public var upgradeServiceDetailInfo: GetInstanceListResponseBody.InstanceList.InstanceVO.UpgradeServiceDetailInfo?

            public var usedGroupCount: Int32?

            public var usedPartitionCount: Int32?

            public var usedTopicCount: Int32?

            public var vSwitchId: String?

            public var vSwitchIds: GetInstanceListResponseBody.InstanceList.InstanceVO.VSwitchIds?

            public var viewInstanceStatusCode: Int32?

            public var vpcId: String?

            public var vpcSaslDomainEndpoint: String?

            public var vpcSaslEndPoint: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.confluentConfig?.validate()
                try self.confluentInstanceComponents?.validate()
                try self.tags?.validate()
                try self.upgradeServiceDetailInfo?.validate()
                try self.vSwitchIds?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allConfig != nil {
                    map["AllConfig"] = self.allConfig!
                }
                if self.autoCreateGroupEnable != nil {
                    map["AutoCreateGroupEnable"] = self.autoCreateGroupEnable!
                }
                if self.autoCreateTopicEnable != nil {
                    map["AutoCreateTopicEnable"] = self.autoCreateTopicEnable!
                }
                if self.backupZoneId != nil {
                    map["BackupZoneId"] = self.backupZoneId!
                }
                if self.confluentConfig != nil {
                    map["ConfluentConfig"] = self.confluentConfig?.toMap()
                }
                if self.confluentInstanceComponents != nil {
                    map["ConfluentInstanceComponents"] = self.confluentInstanceComponents?.toMap()
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.defaultPartitionNum != nil {
                    map["DefaultPartitionNum"] = self.defaultPartitionNum!
                }
                if self.deployType != nil {
                    map["DeployType"] = self.deployType!
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.domainEndpoint != nil {
                    map["DomainEndpoint"] = self.domainEndpoint!
                }
                if self.eipMax != nil {
                    map["EipMax"] = self.eipMax!
                }
                if self.endPoint != nil {
                    map["EndPoint"] = self.endPoint!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.ioMax != nil {
                    map["IoMax"] = self.ioMax!
                }
                if self.ioMaxRead != nil {
                    map["IoMaxRead"] = self.ioMaxRead!
                }
                if self.ioMaxSpec != nil {
                    map["IoMaxSpec"] = self.ioMaxSpec!
                }
                if self.ioMaxWrite != nil {
                    map["IoMaxWrite"] = self.ioMaxWrite!
                }
                if self.kmsKeyId != nil {
                    map["KmsKeyId"] = self.kmsKeyId!
                }
                if self.msgRetain != nil {
                    map["MsgRetain"] = self.msgRetain!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.paidType != nil {
                    map["PaidType"] = self.paidType!
                }
                if self.recommendedPartitionCount != nil {
                    map["RecommendedPartitionCount"] = self.recommendedPartitionCount!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.reservedPublishCapacity != nil {
                    map["ReservedPublishCapacity"] = self.reservedPublishCapacity!
                }
                if self.reservedSubscribeCapacity != nil {
                    map["ReservedSubscribeCapacity"] = self.reservedSubscribeCapacity!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.saslDomainEndpoint != nil {
                    map["SaslDomainEndpoint"] = self.saslDomainEndpoint!
                }
                if self.saslEndPoint != nil {
                    map["SaslEndPoint"] = self.saslEndPoint!
                }
                if self.securityGroup != nil {
                    map["SecurityGroup"] = self.securityGroup!
                }
                if self.series != nil {
                    map["Series"] = self.series!
                }
                if self.serviceStatus != nil {
                    map["ServiceStatus"] = self.serviceStatus!
                }
                if self.specType != nil {
                    map["SpecType"] = self.specType!
                }
                if self.sslDomainEndpoint != nil {
                    map["SslDomainEndpoint"] = self.sslDomainEndpoint!
                }
                if self.sslEndPoint != nil {
                    map["SslEndPoint"] = self.sslEndPoint!
                }
                if self.standardZoneId != nil {
                    map["StandardZoneId"] = self.standardZoneId!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.topicNumLimit != nil {
                    map["TopicNumLimit"] = self.topicNumLimit!
                }
                if self.upgradeServiceDetailInfo != nil {
                    map["UpgradeServiceDetailInfo"] = self.upgradeServiceDetailInfo?.toMap()
                }
                if self.usedGroupCount != nil {
                    map["UsedGroupCount"] = self.usedGroupCount!
                }
                if self.usedPartitionCount != nil {
                    map["UsedPartitionCount"] = self.usedPartitionCount!
                }
                if self.usedTopicCount != nil {
                    map["UsedTopicCount"] = self.usedTopicCount!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vSwitchIds != nil {
                    map["VSwitchIds"] = self.vSwitchIds?.toMap()
                }
                if self.viewInstanceStatusCode != nil {
                    map["ViewInstanceStatusCode"] = self.viewInstanceStatusCode!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcSaslDomainEndpoint != nil {
                    map["VpcSaslDomainEndpoint"] = self.vpcSaslDomainEndpoint!
                }
                if self.vpcSaslEndPoint != nil {
                    map["VpcSaslEndPoint"] = self.vpcSaslEndPoint!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllConfig"] as? String {
                    self.allConfig = value
                }
                if let value = dict["AutoCreateGroupEnable"] as? Bool {
                    self.autoCreateGroupEnable = value
                }
                if let value = dict["AutoCreateTopicEnable"] as? Bool {
                    self.autoCreateTopicEnable = value
                }
                if let value = dict["BackupZoneId"] as? String {
                    self.backupZoneId = value
                }
                if let value = dict["ConfluentConfig"] as? [String: Any?] {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO.ConfluentConfig()
                    model.fromMap(value)
                    self.confluentConfig = model
                }
                if let value = dict["ConfluentInstanceComponents"] as? [String: Any?] {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO.ConfluentInstanceComponents()
                    model.fromMap(value)
                    self.confluentInstanceComponents = model
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["DefaultPartitionNum"] as? Int32 {
                    self.defaultPartitionNum = value
                }
                if let value = dict["DeployType"] as? Int32 {
                    self.deployType = value
                }
                if let value = dict["DiskSize"] as? Int32 {
                    self.diskSize = value
                }
                if let value = dict["DiskType"] as? Int32 {
                    self.diskType = value
                }
                if let value = dict["DomainEndpoint"] as? String {
                    self.domainEndpoint = value
                }
                if let value = dict["EipMax"] as? Int32 {
                    self.eipMax = value
                }
                if let value = dict["EndPoint"] as? String {
                    self.endPoint = value
                }
                if let value = dict["ExpiredTime"] as? Int64 {
                    self.expiredTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["IoMax"] as? Int32 {
                    self.ioMax = value
                }
                if let value = dict["IoMaxRead"] as? Int32 {
                    self.ioMaxRead = value
                }
                if let value = dict["IoMaxSpec"] as? String {
                    self.ioMaxSpec = value
                }
                if let value = dict["IoMaxWrite"] as? Int32 {
                    self.ioMaxWrite = value
                }
                if let value = dict["KmsKeyId"] as? String {
                    self.kmsKeyId = value
                }
                if let value = dict["MsgRetain"] as? Int32 {
                    self.msgRetain = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PaidType"] as? Int32 {
                    self.paidType = value
                }
                if let value = dict["RecommendedPartitionCount"] as? Int32 {
                    self.recommendedPartitionCount = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ReservedPublishCapacity"] as? Int32 {
                    self.reservedPublishCapacity = value
                }
                if let value = dict["ReservedSubscribeCapacity"] as? Int32 {
                    self.reservedSubscribeCapacity = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["SaslDomainEndpoint"] as? String {
                    self.saslDomainEndpoint = value
                }
                if let value = dict["SaslEndPoint"] as? String {
                    self.saslEndPoint = value
                }
                if let value = dict["SecurityGroup"] as? String {
                    self.securityGroup = value
                }
                if let value = dict["Series"] as? String {
                    self.series = value
                }
                if let value = dict["ServiceStatus"] as? Int32 {
                    self.serviceStatus = value
                }
                if let value = dict["SpecType"] as? String {
                    self.specType = value
                }
                if let value = dict["SslDomainEndpoint"] as? String {
                    self.sslDomainEndpoint = value
                }
                if let value = dict["SslEndPoint"] as? String {
                    self.sslEndPoint = value
                }
                if let value = dict["StandardZoneId"] as? String {
                    self.standardZoneId = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["TopicNumLimit"] as? Int32 {
                    self.topicNumLimit = value
                }
                if let value = dict["UpgradeServiceDetailInfo"] as? [String: Any?] {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO.UpgradeServiceDetailInfo()
                    model.fromMap(value)
                    self.upgradeServiceDetailInfo = model
                }
                if let value = dict["UsedGroupCount"] as? Int32 {
                    self.usedGroupCount = value
                }
                if let value = dict["UsedPartitionCount"] as? Int32 {
                    self.usedPartitionCount = value
                }
                if let value = dict["UsedTopicCount"] as? Int32 {
                    self.usedTopicCount = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VSwitchIds"] as? [String: Any?] {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO.VSwitchIds()
                    model.fromMap(value)
                    self.vSwitchIds = model
                }
                if let value = dict["ViewInstanceStatusCode"] as? Int32 {
                    self.viewInstanceStatusCode = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcSaslDomainEndpoint"] as? String {
                    self.vpcSaslDomainEndpoint = value
                }
                if let value = dict["VpcSaslEndPoint"] as? String {
                    self.vpcSaslEndPoint = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var instanceVO: [GetInstanceListResponseBody.InstanceList.InstanceVO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceVO != nil {
                var tmp : [Any] = []
                for k in self.instanceVO! {
                    tmp.append(k.toMap())
                }
                map["InstanceVO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceVO"] as? [Any?] {
                var tmp : [GetInstanceListResponseBody.InstanceList.InstanceVO] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceListResponseBody.InstanceList.InstanceVO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceVO = tmp
            }
        }
    }
    public var code: Int32?

    public var instanceList: GetInstanceListResponseBody.InstanceList?

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
        try self.instanceList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceList != nil {
            map["InstanceList"] = self.instanceList?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["InstanceList"] as? [String: Any?] {
            var model = GetInstanceListResponseBody.InstanceList()
            model.fromMap(value)
            self.instanceList = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInstanceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKafkaClientIpRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var group: String?

    public var instanceId: String?

    public var regionId: String?

    public var startTime: Int64?

    public var topic: String?

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
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Group"] as? String {
            self.group = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetKafkaClientIpResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public class Data : Tea.TeaModel {
                    public class Data : Tea.TeaModel {
                        public var ip: String?

                        public var num: Int64?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.ip != nil {
                                map["Ip"] = self.ip!
                            }
                            if self.num != nil {
                                map["Num"] = self.num!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Ip"] as? String {
                                self.ip = value
                            }
                            if let value = dict["Num"] as? Int64 {
                                self.num = value
                            }
                        }
                    }
                    public var data: [GetKafkaClientIpResponseBody.Data.Data.Data.Data.Data]?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Data"] as? [Any?] {
                            var tmp : [GetKafkaClientIpResponseBody.Data.Data.Data.Data.Data] = []
                            for v in value {
                                if v != nil {
                                    var model = GetKafkaClientIpResponseBody.Data.Data.Data.Data.Data()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.data = tmp
                        }
                    }
                }
                public var data: GetKafkaClientIpResponseBody.Data.Data.Data.Data?

                public var name: String?

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
                    if self.data != nil {
                        map["Data"] = self.data?.toMap()
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Data"] as? [String: Any?] {
                        var model = GetKafkaClientIpResponseBody.Data.Data.Data.Data()
                        model.fromMap(value)
                        self.data = model
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public var data: [GetKafkaClientIpResponseBody.Data.Data.Data]?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Any?] {
                    var tmp : [GetKafkaClientIpResponseBody.Data.Data.Data] = []
                    for v in value {
                        if v != nil {
                            var model = GetKafkaClientIpResponseBody.Data.Data.Data()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.data = tmp
                }
            }
        }
        public var alert: Bool?

        public var data: GetKafkaClientIpResponseBody.Data.Data?

        public var endDate: Int64?

        public var searchTimeRange: Int32?

        public var startDate: Int64?

        public var timeLimitDay: Int32?

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
            if self.alert != nil {
                map["Alert"] = self.alert!
            }
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.searchTimeRange != nil {
                map["SearchTimeRange"] = self.searchTimeRange!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.timeLimitDay != nil {
                map["TimeLimitDay"] = self.timeLimitDay!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alert"] as? Bool {
                self.alert = value
            }
            if let value = dict["Data"] as? [String: Any?] {
                var model = GetKafkaClientIpResponseBody.Data.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["EndDate"] as? Int64 {
                self.endDate = value
            }
            if let value = dict["SearchTimeRange"] as? Int32 {
                self.searchTimeRange = value
            }
            if let value = dict["StartDate"] as? Int64 {
                self.startDate = value
            }
            if let value = dict["TimeLimitDay"] as? Int32 {
                self.timeLimitDay = value
            }
        }
    }
    public var code: Int64?

    public var data: GetKafkaClientIpResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetKafkaClientIpResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetKafkaClientIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKafkaClientIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetKafkaClientIpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQuotaTipRequest : Tea.TeaModel {
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

public class GetQuotaTipResponseBody : Tea.TeaModel {
    public class QuotaData : Tea.TeaModel {
        public var groupLeft: Int32?

        public var groupUsed: Int32?

        public var isPartitionBuy: Int32?

        public var partitionLeft: Int32?

        public var partitionNumOfBuy: Int32?

        public var partitionQuota: Int32?

        public var partitionUsed: Int32?

        public var topicLeft: Int32?

        public var topicNumOfBuy: Int32?

        public var topicQuota: Int32?

        public var topicUsed: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupLeft != nil {
                map["GroupLeft"] = self.groupLeft!
            }
            if self.groupUsed != nil {
                map["GroupUsed"] = self.groupUsed!
            }
            if self.isPartitionBuy != nil {
                map["IsPartitionBuy"] = self.isPartitionBuy!
            }
            if self.partitionLeft != nil {
                map["PartitionLeft"] = self.partitionLeft!
            }
            if self.partitionNumOfBuy != nil {
                map["PartitionNumOfBuy"] = self.partitionNumOfBuy!
            }
            if self.partitionQuota != nil {
                map["PartitionQuota"] = self.partitionQuota!
            }
            if self.partitionUsed != nil {
                map["PartitionUsed"] = self.partitionUsed!
            }
            if self.topicLeft != nil {
                map["TopicLeft"] = self.topicLeft!
            }
            if self.topicNumOfBuy != nil {
                map["TopicNumOfBuy"] = self.topicNumOfBuy!
            }
            if self.topicQuota != nil {
                map["TopicQuota"] = self.topicQuota!
            }
            if self.topicUsed != nil {
                map["TopicUsed"] = self.topicUsed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupLeft"] as? Int32 {
                self.groupLeft = value
            }
            if let value = dict["GroupUsed"] as? Int32 {
                self.groupUsed = value
            }
            if let value = dict["IsPartitionBuy"] as? Int32 {
                self.isPartitionBuy = value
            }
            if let value = dict["PartitionLeft"] as? Int32 {
                self.partitionLeft = value
            }
            if let value = dict["PartitionNumOfBuy"] as? Int32 {
                self.partitionNumOfBuy = value
            }
            if let value = dict["PartitionQuota"] as? Int32 {
                self.partitionQuota = value
            }
            if let value = dict["PartitionUsed"] as? Int32 {
                self.partitionUsed = value
            }
            if let value = dict["TopicLeft"] as? Int32 {
                self.topicLeft = value
            }
            if let value = dict["TopicNumOfBuy"] as? Int32 {
                self.topicNumOfBuy = value
            }
            if let value = dict["TopicQuota"] as? Int32 {
                self.topicQuota = value
            }
            if let value = dict["TopicUsed"] as? Int32 {
                self.topicUsed = value
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var quotaData: GetQuotaTipResponseBody.QuotaData?

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
        try self.quotaData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.quotaData != nil {
            map["QuotaData"] = self.quotaData?.toMap()
        }
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["QuotaData"] as? [String: Any?] {
            var model = GetQuotaTipResponseBody.QuotaData()
            model.fromMap(value)
            self.quotaData = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetQuotaTipResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaTipResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetQuotaTipResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRiskListRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageSize: Int64?

    public var regionId: String?

    public var startIndex: Int64?

    public override init() {
        super.init()
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
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startIndex != nil {
            map["StartIndex"] = self.startIndex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartIndex"] as? Int64 {
            self.startIndex = value
        }
    }
}

public class GetRiskListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RiskList : Tea.TeaModel {
            public var createTime: Int64?

            public var gradeType: String?

            public var health: Bool?

            public var instanceId: String?

            public var lastAlarmTime: Int64?

            public var levelType: Int64?

            public var modifiedTime: Int64?

            public var name: String?

            public var owner: String?

            public var relationList: [String]?

            public var reportTips: String?

            public var reportType: String?

            public var reportValue: String?

            public var status: Int64?

            public var type: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.gradeType != nil {
                    map["GradeType"] = self.gradeType!
                }
                if self.health != nil {
                    map["Health"] = self.health!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.lastAlarmTime != nil {
                    map["LastAlarmTime"] = self.lastAlarmTime!
                }
                if self.levelType != nil {
                    map["LevelType"] = self.levelType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.relationList != nil {
                    map["RelationList"] = self.relationList!
                }
                if self.reportTips != nil {
                    map["ReportTips"] = self.reportTips!
                }
                if self.reportType != nil {
                    map["ReportType"] = self.reportType!
                }
                if self.reportValue != nil {
                    map["ReportValue"] = self.reportValue!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["GradeType"] as? String {
                    self.gradeType = value
                }
                if let value = dict["Health"] as? Bool {
                    self.health = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["LastAlarmTime"] as? Int64 {
                    self.lastAlarmTime = value
                }
                if let value = dict["LevelType"] as? Int64 {
                    self.levelType = value
                }
                if let value = dict["ModifiedTime"] as? Int64 {
                    self.modifiedTime = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Owner"] as? String {
                    self.owner = value
                }
                if let value = dict["RelationList"] as? [String] {
                    self.relationList = value
                }
                if let value = dict["ReportTips"] as? String {
                    self.reportTips = value
                }
                if let value = dict["ReportType"] as? String {
                    self.reportType = value
                }
                if let value = dict["ReportValue"] as? String {
                    self.reportValue = value
                }
                if let value = dict["Status"] as? Int64 {
                    self.status = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var riskList: [GetRiskListResponseBody.Data.RiskList]?

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
            if self.riskList != nil {
                var tmp : [Any] = []
                for k in self.riskList! {
                    tmp.append(k.toMap())
                }
                map["RiskList"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RiskList"] as? [Any?] {
                var tmp : [GetRiskListResponseBody.Data.RiskList] = []
                for v in value {
                    if v != nil {
                        var model = GetRiskListResponseBody.Data.RiskList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.riskList = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int64?

    public var data: GetRiskListResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetRiskListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetRiskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRiskListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRiskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTopicListRequest : Tea.TeaModel {
    public var currentPage: String?

    public var instanceId: String?

    public var pageSize: String?

    public var regionId: String?

    public var topic: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class GetTopicListResponseBody : Tea.TeaModel {
    public class TopicList : Tea.TeaModel {
        public class TopicVO : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class TagVO : Tea.TeaModel {
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
                public var tagVO: [GetTopicListResponseBody.TopicList.TopicVO.Tags.TagVO]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagVO != nil {
                        var tmp : [Any] = []
                        for k in self.tagVO! {
                            tmp.append(k.toMap())
                        }
                        map["TagVO"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TagVO"] as? [Any?] {
                        var tmp : [GetTopicListResponseBody.TopicList.TopicVO.Tags.TagVO] = []
                        for v in value {
                            if v != nil {
                                var model = GetTopicListResponseBody.TopicList.TopicVO.Tags.TagVO()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tagVO = tmp
                    }
                }
            }
            public var autoCreate: Bool?

            public var compactTopic: Bool?

            public var createTime: Int64?

            public var instanceId: String?

            public var localTopic: Bool?

            public var partitionNum: Int32?

            public var regionId: String?

            public var remark: String?

            public var status: Int32?

            public var statusName: String?

            public var tags: GetTopicListResponseBody.TopicList.TopicVO.Tags?

            public var topic: String?

            public var topicConfig: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoCreate != nil {
                    map["AutoCreate"] = self.autoCreate!
                }
                if self.compactTopic != nil {
                    map["CompactTopic"] = self.compactTopic!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.localTopic != nil {
                    map["LocalTopic"] = self.localTopic!
                }
                if self.partitionNum != nil {
                    map["PartitionNum"] = self.partitionNum!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusName != nil {
                    map["StatusName"] = self.statusName!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.topic != nil {
                    map["Topic"] = self.topic!
                }
                if self.topicConfig != nil {
                    map["TopicConfig"] = self.topicConfig!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoCreate"] as? Bool {
                    self.autoCreate = value
                }
                if let value = dict["CompactTopic"] as? Bool {
                    self.compactTopic = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["LocalTopic"] as? Bool {
                    self.localTopic = value
                }
                if let value = dict["PartitionNum"] as? Int32 {
                    self.partitionNum = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["StatusName"] as? String {
                    self.statusName = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = GetTopicListResponseBody.TopicList.TopicVO.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["Topic"] as? String {
                    self.topic = value
                }
                if let value = dict["TopicConfig"] as? String {
                    self.topicConfig = value
                }
            }
        }
        public var topicVO: [GetTopicListResponseBody.TopicList.TopicVO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.topicVO != nil {
                var tmp : [Any] = []
                for k in self.topicVO! {
                    tmp.append(k.toMap())
                }
                map["TopicVO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TopicVO"] as? [Any?] {
                var tmp : [GetTopicListResponseBody.TopicList.TopicVO] = []
                for v in value {
                    if v != nil {
                        var model = GetTopicListResponseBody.TopicList.TopicVO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.topicVO = tmp
            }
        }
    }
    public var code: Int32?

    public var currentPage: Int32?

    public var message: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var topicList: GetTopicListResponseBody.TopicList?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.topicList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.topicList != nil {
            map["TopicList"] = self.topicList?.toMap()
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicList"] as? [String: Any?] {
            var model = GetTopicListResponseBody.TopicList()
            model.fromMap(value)
            self.topicList = model
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class GetTopicListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTopicListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTopicStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var topic: String?

    public override init() {
        super.init()
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
        if self.topic != nil {
            map["Topic"] = self.topic!
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
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class GetTopicStatusResponseBody : Tea.TeaModel {
    public class TopicStatus : Tea.TeaModel {
        public class OffsetTable : Tea.TeaModel {
            public class OffsetTable : Tea.TeaModel {
                public var lastUpdateTimestamp: Int64?

                public var maxOffset: Int64?

                public var minOffset: Int64?

                public var partition: Int32?

                public var topic: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.lastUpdateTimestamp != nil {
                        map["LastUpdateTimestamp"] = self.lastUpdateTimestamp!
                    }
                    if self.maxOffset != nil {
                        map["MaxOffset"] = self.maxOffset!
                    }
                    if self.minOffset != nil {
                        map["MinOffset"] = self.minOffset!
                    }
                    if self.partition != nil {
                        map["Partition"] = self.partition!
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["LastUpdateTimestamp"] as? Int64 {
                        self.lastUpdateTimestamp = value
                    }
                    if let value = dict["MaxOffset"] as? Int64 {
                        self.maxOffset = value
                    }
                    if let value = dict["MinOffset"] as? Int64 {
                        self.minOffset = value
                    }
                    if let value = dict["Partition"] as? Int32 {
                        self.partition = value
                    }
                    if let value = dict["Topic"] as? String {
                        self.topic = value
                    }
                }
            }
            public var offsetTable: [GetTopicStatusResponseBody.TopicStatus.OffsetTable.OffsetTable]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.offsetTable != nil {
                    var tmp : [Any] = []
                    for k in self.offsetTable! {
                        tmp.append(k.toMap())
                    }
                    map["OffsetTable"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OffsetTable"] as? [Any?] {
                    var tmp : [GetTopicStatusResponseBody.TopicStatus.OffsetTable.OffsetTable] = []
                    for v in value {
                        if v != nil {
                            var model = GetTopicStatusResponseBody.TopicStatus.OffsetTable.OffsetTable()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.offsetTable = tmp
                }
            }
        }
        public var lastTimeStamp: Int64?

        public var offsetTable: GetTopicStatusResponseBody.TopicStatus.OffsetTable?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.offsetTable?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastTimeStamp != nil {
                map["LastTimeStamp"] = self.lastTimeStamp!
            }
            if self.offsetTable != nil {
                map["OffsetTable"] = self.offsetTable?.toMap()
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LastTimeStamp"] as? Int64 {
                self.lastTimeStamp = value
            }
            if let value = dict["OffsetTable"] as? [String: Any?] {
                var model = GetTopicStatusResponseBody.TopicStatus.OffsetTable()
                model.fromMap(value)
                self.offsetTable = model
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var topicStatus: GetTopicStatusResponseBody.TopicStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.topicStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.topicStatus != nil {
            map["TopicStatus"] = self.topicStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicStatus"] as? [String: Any?] {
            var model = GetTopicStatusResponseBody.TopicStatus()
            model.fromMap(value)
            self.topicStatus = model
        }
    }
}

public class GetTopicStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTopicStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTopicSubscribeStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var topic: String?

    public override init() {
        super.init()
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
        if self.topic != nil {
            map["Topic"] = self.topic!
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
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class GetTopicSubscribeStatusResponseBody : Tea.TeaModel {
    public class TopicSubscribeStatus : Tea.TeaModel {
        public var consumerGroups: [String]?

        public var topic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.consumerGroups != nil {
                map["ConsumerGroups"] = self.consumerGroups!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConsumerGroups"] as? [String] {
                self.consumerGroups = value
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var topicSubscribeStatus: GetTopicSubscribeStatusResponseBody.TopicSubscribeStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.topicSubscribeStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.topicSubscribeStatus != nil {
            map["TopicSubscribeStatus"] = self.topicSubscribeStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TopicSubscribeStatus"] as? [String: Any?] {
            var model = GetTopicSubscribeStatusResponseBody.TopicSubscribeStatus()
            model.fromMap(value)
            self.topicSubscribeStatus = model
        }
    }
}

public class GetTopicSubscribeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTopicSubscribeStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTopicSubscribeStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRebalanceInfoRequest : Tea.TeaModel {
    public var consumerId: String?

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
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
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
        if let value = dict["ConsumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListRebalanceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RebalanceInfoList : Tea.TeaModel {
            public var generation: Int64?

            public var groupId: String?

            public var lastRebalanceTimestamp: Int64?

            public var reason: String?

            public var rebalanceSuccess: Bool?

            public var rebalanceTimeConsuming: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.generation != nil {
                    map["Generation"] = self.generation!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.lastRebalanceTimestamp != nil {
                    map["LastRebalanceTimestamp"] = self.lastRebalanceTimestamp!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.rebalanceSuccess != nil {
                    map["RebalanceSuccess"] = self.rebalanceSuccess!
                }
                if self.rebalanceTimeConsuming != nil {
                    map["RebalanceTimeConsuming"] = self.rebalanceTimeConsuming!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Generation"] as? Int64 {
                    self.generation = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["LastRebalanceTimestamp"] as? Int64 {
                    self.lastRebalanceTimestamp = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["RebalanceSuccess"] as? Bool {
                    self.rebalanceSuccess = value
                }
                if let value = dict["RebalanceTimeConsuming"] as? Int64 {
                    self.rebalanceTimeConsuming = value
                }
            }
        }
        public var rebalanceInfoList: [ListRebalanceInfoResponseBody.Data.RebalanceInfoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rebalanceInfoList != nil {
                var tmp : [Any] = []
                for k in self.rebalanceInfoList! {
                    tmp.append(k.toMap())
                }
                map["RebalanceInfoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RebalanceInfoList"] as? [Any?] {
                var tmp : [ListRebalanceInfoResponseBody.Data.RebalanceInfoList] = []
                for v in value {
                    if v != nil {
                        var model = ListRebalanceInfoResponseBody.Data.RebalanceInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rebalanceInfoList = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListRebalanceInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListRebalanceInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListRebalanceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRebalanceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRebalanceInfoResponseBody()
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
        public class TagResource : Tea.TeaModel {
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
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
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
            map["TagResources"] = self.tagResources?.toMap()
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
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
            self.tagResources = model
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

public class ModifyInstanceNameRequest : Tea.TeaModel {
    public var instanceId: String?

    public var instanceName: String?

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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
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
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyInstanceNameResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPartitionNumRequest : Tea.TeaModel {
    public var addPartitionNum: Int32?

    public var instanceId: String?

    public var regionId: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addPartitionNum != nil {
            map["AddPartitionNum"] = self.addPartitionNum!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddPartitionNum"] as? Int32 {
            self.addPartitionNum = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class ModifyPartitionNumResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyPartitionNumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPartitionNumResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPartitionNumResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyScheduledScalingRuleRequest : Tea.TeaModel {
    public var enable: Bool?

    public var instanceId: String?

    public var regionId: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enable != nil {
            map["Enable"] = self.enable!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
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
    }
}

public class ModifyScheduledScalingRuleResponseBody : Tea.TeaModel {
    public var code: Int64?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyScheduledScalingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyScheduledScalingRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyScheduledScalingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyTopicRemarkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var remark: String?

    public var topic: String?

    public override init() {
        super.init()
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
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
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
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class ModifyTopicRemarkResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyTopicRemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTopicRemarkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyTopicRemarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMessageRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var instanceId: String?

    public var offset: String?

    public var partition: String?

    public var queryType: String?

    public var regionId: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.partition != nil {
            map["Partition"] = self.partition!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Offset"] as? String {
            self.offset = value
        }
        if let value = dict["Partition"] as? String {
            self.partition = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class QueryMessageResponseBody : Tea.TeaModel {
    public class MessageList : Tea.TeaModel {
        public var checksum: Int64?

        public var key: String?

        public var keyTruncated: Bool?

        public var offset: Int64?

        public var partition: Int64?

        public var serializedKeySize: Int32?

        public var serializedValueSize: Int32?

        public var timestamp: Int64?

        public var timestampType: String?

        public var topic: String?

        public var truncatedKeySize: Int32?

        public var truncatedValueSize: Int32?

        public var value: String?

        public var valueTruncated: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checksum != nil {
                map["Checksum"] = self.checksum!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.keyTruncated != nil {
                map["KeyTruncated"] = self.keyTruncated!
            }
            if self.offset != nil {
                map["Offset"] = self.offset!
            }
            if self.partition != nil {
                map["Partition"] = self.partition!
            }
            if self.serializedKeySize != nil {
                map["SerializedKeySize"] = self.serializedKeySize!
            }
            if self.serializedValueSize != nil {
                map["SerializedValueSize"] = self.serializedValueSize!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.timestampType != nil {
                map["TimestampType"] = self.timestampType!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            if self.truncatedKeySize != nil {
                map["TruncatedKeySize"] = self.truncatedKeySize!
            }
            if self.truncatedValueSize != nil {
                map["TruncatedValueSize"] = self.truncatedValueSize!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            if self.valueTruncated != nil {
                map["ValueTruncated"] = self.valueTruncated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Checksum"] as? Int64 {
                self.checksum = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["KeyTruncated"] as? Bool {
                self.keyTruncated = value
            }
            if let value = dict["Offset"] as? Int64 {
                self.offset = value
            }
            if let value = dict["Partition"] as? Int64 {
                self.partition = value
            }
            if let value = dict["SerializedKeySize"] as? Int32 {
                self.serializedKeySize = value
            }
            if let value = dict["SerializedValueSize"] as? Int32 {
                self.serializedValueSize = value
            }
            if let value = dict["Timestamp"] as? Int64 {
                self.timestamp = value
            }
            if let value = dict["TimestampType"] as? String {
                self.timestampType = value
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
            }
            if let value = dict["TruncatedKeySize"] as? Int32 {
                self.truncatedKeySize = value
            }
            if let value = dict["TruncatedValueSize"] as? Int32 {
                self.truncatedValueSize = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
            if let value = dict["ValueTruncated"] as? Bool {
                self.valueTruncated = value
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var messageList: [QueryMessageResponseBody.MessageList]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.messageList != nil {
            var tmp : [Any] = []
            for k in self.messageList! {
                tmp.append(k.toMap())
            }
            map["MessageList"] = tmp
        }
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MessageList"] as? [Any?] {
            var tmp : [QueryMessageResponseBody.MessageList] = []
            for v in value {
                if v != nil {
                    var model = QueryMessageResponseBody.MessageList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messageList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseInstanceRequest : Tea.TeaModel {
    public var forceDeleteInstance: Bool?

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
        if self.forceDeleteInstance != nil {
            map["ForceDeleteInstance"] = self.forceDeleteInstance!
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
        if let value = dict["ForceDeleteInstance"] as? Bool {
            self.forceDeleteInstance = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ReleaseInstanceResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ReleaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReopenInstanceRequest : Tea.TeaModel {
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

public class ReopenInstanceResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ReopenInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReopenInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReopenInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartInstanceRequest : Tea.TeaModel {
    public var config: String?

    public var crossZone: Bool?

    public var deployModule: String?

    public var instanceId: String?

    public var isEipInner: Bool?

    public var isForceSelectedZones: Bool?

    public var isSetUserAndPassword: Bool?

    public var KMSKeyId: String?

    public var name: String?

    public var notifier: String?

    public var password: String?

    public var regionId: String?

    public var securityGroup: String?

    public var selectedZones: String?

    public var serviceVersion: String?

    public var userPhoneNum: String?

    public var username: String?

    public var vSwitchId: String?

    public var vSwitchIds: [String]?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.crossZone != nil {
            map["CrossZone"] = self.crossZone!
        }
        if self.deployModule != nil {
            map["DeployModule"] = self.deployModule!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isEipInner != nil {
            map["IsEipInner"] = self.isEipInner!
        }
        if self.isForceSelectedZones != nil {
            map["IsForceSelectedZones"] = self.isForceSelectedZones!
        }
        if self.isSetUserAndPassword != nil {
            map["IsSetUserAndPassword"] = self.isSetUserAndPassword!
        }
        if self.KMSKeyId != nil {
            map["KMSKeyId"] = self.KMSKeyId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.notifier != nil {
            map["Notifier"] = self.notifier!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroup != nil {
            map["SecurityGroup"] = self.securityGroup!
        }
        if self.selectedZones != nil {
            map["SelectedZones"] = self.selectedZones!
        }
        if self.serviceVersion != nil {
            map["ServiceVersion"] = self.serviceVersion!
        }
        if self.userPhoneNum != nil {
            map["UserPhoneNum"] = self.userPhoneNum!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
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
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["CrossZone"] as? Bool {
            self.crossZone = value
        }
        if let value = dict["DeployModule"] as? String {
            self.deployModule = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsEipInner"] as? Bool {
            self.isEipInner = value
        }
        if let value = dict["IsForceSelectedZones"] as? Bool {
            self.isForceSelectedZones = value
        }
        if let value = dict["IsSetUserAndPassword"] as? Bool {
            self.isSetUserAndPassword = value
        }
        if let value = dict["KMSKeyId"] as? String {
            self.KMSKeyId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Notifier"] as? String {
            self.notifier = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroup"] as? String {
            self.securityGroup = value
        }
        if let value = dict["SelectedZones"] as? String {
            self.selectedZones = value
        }
        if let value = dict["ServiceVersion"] as? String {
            self.serviceVersion = value
        }
        if let value = dict["UserPhoneNum"] as? String {
            self.userPhoneNum = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VSwitchIds"] as? [String] {
            self.vSwitchIds = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class StartInstanceResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

public class StopInstanceRequest : Tea.TeaModel {
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

public class StopInstanceResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StopInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopInstanceResponseBody()
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
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
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

public class UpdateAllowedIpRequest : Tea.TeaModel {
    public var allowedListIp: String?

    public var allowedListType: String?

    public var description_: String?

    public var instanceId: String?

    public var portRange: String?

    public var regionId: String?

    public var updateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedListIp != nil {
            map["AllowedListIp"] = self.allowedListIp!
        }
        if self.allowedListType != nil {
            map["AllowedListType"] = self.allowedListType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.portRange != nil {
            map["PortRange"] = self.portRange!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.updateType != nil {
            map["UpdateType"] = self.updateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedListIp"] as? String {
            self.allowedListIp = value
        }
        if let value = dict["AllowedListType"] as? String {
            self.allowedListType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PortRange"] as? String {
            self.portRange = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UpdateType"] as? String {
            self.updateType = value
        }
    }
}

public class UpdateAllowedIpResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateAllowedIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAllowedIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAllowedIpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConsumerOffsetRequest : Tea.TeaModel {
    public class Offsets : Tea.TeaModel {
        public var offset: Int64?

        public var partition: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.offset != nil {
                map["Offset"] = self.offset!
            }
            if self.partition != nil {
                map["Partition"] = self.partition!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Offset"] as? Int64 {
                self.offset = value
            }
            if let value = dict["Partition"] as? Int32 {
                self.partition = value
            }
        }
    }
    public var consumerId: String?

    public var instanceId: String?

    public var offsets: [UpdateConsumerOffsetRequest.Offsets]?

    public var regionId: String?

    public var resetType: String?

    public var time: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.offsets != nil {
            var tmp : [Any] = []
            for k in self.offsets! {
                tmp.append(k.toMap())
            }
            map["Offsets"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resetType != nil {
            map["ResetType"] = self.resetType!
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Offsets"] as? [Any?] {
            var tmp : [UpdateConsumerOffsetRequest.Offsets] = []
            for v in value {
                if v != nil {
                    var model = UpdateConsumerOffsetRequest.Offsets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.offsets = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResetType"] as? String {
            self.resetType = value
        }
        if let value = dict["Time"] as? String {
            self.time = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class UpdateConsumerOffsetShrinkRequest : Tea.TeaModel {
    public var consumerId: String?

    public var instanceId: String?

    public var offsetsShrink: String?

    public var regionId: String?

    public var resetType: String?

    public var time: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.consumerId != nil {
            map["ConsumerId"] = self.consumerId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.offsetsShrink != nil {
            map["Offsets"] = self.offsetsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resetType != nil {
            map["ResetType"] = self.resetType!
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsumerId"] as? String {
            self.consumerId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Offsets"] as? String {
            self.offsetsShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResetType"] as? String {
            self.resetType = value
        }
        if let value = dict["Time"] as? String {
            self.time = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class UpdateConsumerOffsetResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateConsumerOffsetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConsumerOffsetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateConsumerOffsetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceConfigRequest : Tea.TeaModel {
    public var config: String?

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
        if self.config != nil {
            map["Config"] = self.config!
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
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateInstanceConfigResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInstanceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTopicConfigRequest : Tea.TeaModel {
    public var config: String?

    public var instanceId: String?

    public var regionId: String?

    public var topic: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class UpdateTopicConfigResponseBody : Tea.TeaModel {
    public var code: Int64?

    public var data: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateTopicConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTopicConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTopicConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeInstanceVersionRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var targetVersion: String?

    public override init() {
        super.init()
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
        if self.targetVersion != nil {
            map["TargetVersion"] = self.targetVersion!
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
        if let value = dict["TargetVersion"] as? String {
            self.targetVersion = value
        }
    }
}

public class UpgradeInstanceVersionResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpgradeInstanceVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeInstanceVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeInstanceVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradePostPayOrderRequest : Tea.TeaModel {
    public class ServerlessConfig : Tea.TeaModel {
        public var reservedPublishCapacity: Int64?

        public var reservedSubscribeCapacity: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reservedPublishCapacity != nil {
                map["ReservedPublishCapacity"] = self.reservedPublishCapacity!
            }
            if self.reservedSubscribeCapacity != nil {
                map["ReservedSubscribeCapacity"] = self.reservedSubscribeCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ReservedPublishCapacity"] as? Int64 {
                self.reservedPublishCapacity = value
            }
            if let value = dict["ReservedSubscribeCapacity"] as? Int64 {
                self.reservedSubscribeCapacity = value
            }
        }
    }
    public var diskSize: Int32?

    public var eipMax: Int32?

    public var eipModel: Bool?

    public var instanceId: String?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

    public var partitionNum: Int32?

    public var regionId: String?

    public var serverlessConfig: UpgradePostPayOrderRequest.ServerlessConfig?

    public var specType: String?

    public var topicQuota: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serverlessConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.eipModel != nil {
            map["EipModel"] = self.eipModel!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ioMax != nil {
            map["IoMax"] = self.ioMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serverlessConfig != nil {
            map["ServerlessConfig"] = self.serverlessConfig?.toMap()
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        if self.topicQuota != nil {
            map["TopicQuota"] = self.topicQuota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["EipModel"] as? Bool {
            self.eipModel = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IoMax"] as? Int32 {
            self.ioMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServerlessConfig"] as? [String: Any?] {
            var model = UpgradePostPayOrderRequest.ServerlessConfig()
            model.fromMap(value)
            self.serverlessConfig = model
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["TopicQuota"] as? Int32 {
            self.topicQuota = value
        }
    }
}

public class UpgradePostPayOrderShrinkRequest : Tea.TeaModel {
    public var diskSize: Int32?

    public var eipMax: Int32?

    public var eipModel: Bool?

    public var instanceId: String?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

    public var partitionNum: Int32?

    public var regionId: String?

    public var serverlessConfigShrink: String?

    public var specType: String?

    public var topicQuota: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.eipModel != nil {
            map["EipModel"] = self.eipModel!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ioMax != nil {
            map["IoMax"] = self.ioMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serverlessConfigShrink != nil {
            map["ServerlessConfig"] = self.serverlessConfigShrink!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        if self.topicQuota != nil {
            map["TopicQuota"] = self.topicQuota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["EipModel"] as? Bool {
            self.eipModel = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IoMax"] as? Int32 {
            self.ioMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServerlessConfig"] as? String {
            self.serverlessConfigShrink = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["TopicQuota"] as? Int32 {
            self.topicQuota = value
        }
    }
}

public class UpgradePostPayOrderResponseBody : Tea.TeaModel {
    public var code: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpgradePostPayOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradePostPayOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradePostPayOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradePrePayOrderRequest : Tea.TeaModel {
    public class ConfluentConfig : Tea.TeaModel {
        public var connectCU: Int32?

        public var connectReplica: Int32?

        public var controlCenterCU: Int32?

        public var controlCenterReplica: Int32?

        public var controlCenterStorage: Int32?

        public var kafkaCU: Int32?

        public var kafkaReplica: Int32?

        public var kafkaRestProxyCU: Int32?

        public var kafkaRestProxyReplica: Int32?

        public var kafkaStorage: Int32?

        public var ksqlCU: Int32?

        public var ksqlReplica: Int32?

        public var ksqlStorage: Int32?

        public var schemaRegistryCU: Int32?

        public var schemaRegistryReplica: Int32?

        public var zooKeeperCU: Int32?

        public var zooKeeperReplica: Int32?

        public var zooKeeperStorage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectCU != nil {
                map["ConnectCU"] = self.connectCU!
            }
            if self.connectReplica != nil {
                map["ConnectReplica"] = self.connectReplica!
            }
            if self.controlCenterCU != nil {
                map["ControlCenterCU"] = self.controlCenterCU!
            }
            if self.controlCenterReplica != nil {
                map["ControlCenterReplica"] = self.controlCenterReplica!
            }
            if self.controlCenterStorage != nil {
                map["ControlCenterStorage"] = self.controlCenterStorage!
            }
            if self.kafkaCU != nil {
                map["KafkaCU"] = self.kafkaCU!
            }
            if self.kafkaReplica != nil {
                map["KafkaReplica"] = self.kafkaReplica!
            }
            if self.kafkaRestProxyCU != nil {
                map["KafkaRestProxyCU"] = self.kafkaRestProxyCU!
            }
            if self.kafkaRestProxyReplica != nil {
                map["KafkaRestProxyReplica"] = self.kafkaRestProxyReplica!
            }
            if self.kafkaStorage != nil {
                map["KafkaStorage"] = self.kafkaStorage!
            }
            if self.ksqlCU != nil {
                map["KsqlCU"] = self.ksqlCU!
            }
            if self.ksqlReplica != nil {
                map["KsqlReplica"] = self.ksqlReplica!
            }
            if self.ksqlStorage != nil {
                map["KsqlStorage"] = self.ksqlStorage!
            }
            if self.schemaRegistryCU != nil {
                map["SchemaRegistryCU"] = self.schemaRegistryCU!
            }
            if self.schemaRegistryReplica != nil {
                map["SchemaRegistryReplica"] = self.schemaRegistryReplica!
            }
            if self.zooKeeperCU != nil {
                map["ZooKeeperCU"] = self.zooKeeperCU!
            }
            if self.zooKeeperReplica != nil {
                map["ZooKeeperReplica"] = self.zooKeeperReplica!
            }
            if self.zooKeeperStorage != nil {
                map["ZooKeeperStorage"] = self.zooKeeperStorage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectCU"] as? Int32 {
                self.connectCU = value
            }
            if let value = dict["ConnectReplica"] as? Int32 {
                self.connectReplica = value
            }
            if let value = dict["ControlCenterCU"] as? Int32 {
                self.controlCenterCU = value
            }
            if let value = dict["ControlCenterReplica"] as? Int32 {
                self.controlCenterReplica = value
            }
            if let value = dict["ControlCenterStorage"] as? Int32 {
                self.controlCenterStorage = value
            }
            if let value = dict["KafkaCU"] as? Int32 {
                self.kafkaCU = value
            }
            if let value = dict["KafkaReplica"] as? Int32 {
                self.kafkaReplica = value
            }
            if let value = dict["KafkaRestProxyCU"] as? Int32 {
                self.kafkaRestProxyCU = value
            }
            if let value = dict["KafkaRestProxyReplica"] as? Int32 {
                self.kafkaRestProxyReplica = value
            }
            if let value = dict["KafkaStorage"] as? Int32 {
                self.kafkaStorage = value
            }
            if let value = dict["KsqlCU"] as? Int32 {
                self.ksqlCU = value
            }
            if let value = dict["KsqlReplica"] as? Int32 {
                self.ksqlReplica = value
            }
            if let value = dict["KsqlStorage"] as? Int32 {
                self.ksqlStorage = value
            }
            if let value = dict["SchemaRegistryCU"] as? Int32 {
                self.schemaRegistryCU = value
            }
            if let value = dict["SchemaRegistryReplica"] as? Int32 {
                self.schemaRegistryReplica = value
            }
            if let value = dict["ZooKeeperCU"] as? Int32 {
                self.zooKeeperCU = value
            }
            if let value = dict["ZooKeeperReplica"] as? Int32 {
                self.zooKeeperReplica = value
            }
            if let value = dict["ZooKeeperStorage"] as? Int32 {
                self.zooKeeperStorage = value
            }
        }
    }
    public var confluentConfig: UpgradePrePayOrderRequest.ConfluentConfig?

    public var diskSize: Int32?

    public var eipMax: Int32?

    public var eipModel: Bool?

    public var instanceId: String?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var specType: String?

    public var topicQuota: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.confluentConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.confluentConfig != nil {
            map["ConfluentConfig"] = self.confluentConfig?.toMap()
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.eipModel != nil {
            map["EipModel"] = self.eipModel!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ioMax != nil {
            map["IoMax"] = self.ioMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        if self.topicQuota != nil {
            map["TopicQuota"] = self.topicQuota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfluentConfig"] as? [String: Any?] {
            var model = UpgradePrePayOrderRequest.ConfluentConfig()
            model.fromMap(value)
            self.confluentConfig = model
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["EipModel"] as? Bool {
            self.eipModel = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IoMax"] as? Int32 {
            self.ioMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["TopicQuota"] as? Int32 {
            self.topicQuota = value
        }
    }
}

public class UpgradePrePayOrderShrinkRequest : Tea.TeaModel {
    public var confluentConfigShrink: String?

    public var diskSize: Int32?

    public var eipMax: Int32?

    public var eipModel: Bool?

    public var instanceId: String?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

    public var paidType: Int32?

    public var partitionNum: Int32?

    public var regionId: String?

    public var specType: String?

    public var topicQuota: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.confluentConfigShrink != nil {
            map["ConfluentConfig"] = self.confluentConfigShrink!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
        }
        if self.eipModel != nil {
            map["EipModel"] = self.eipModel!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ioMax != nil {
            map["IoMax"] = self.ioMax!
        }
        if self.ioMaxSpec != nil {
            map["IoMaxSpec"] = self.ioMaxSpec!
        }
        if self.paidType != nil {
            map["PaidType"] = self.paidType!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        if self.topicQuota != nil {
            map["TopicQuota"] = self.topicQuota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfluentConfig"] as? String {
            self.confluentConfigShrink = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["EipMax"] as? Int32 {
            self.eipMax = value
        }
        if let value = dict["EipModel"] as? Bool {
            self.eipModel = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IoMax"] as? Int32 {
            self.ioMax = value
        }
        if let value = dict["IoMaxSpec"] as? String {
            self.ioMaxSpec = value
        }
        if let value = dict["PaidType"] as? Int32 {
            self.paidType = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SpecType"] as? String {
            self.specType = value
        }
        if let value = dict["TopicQuota"] as? Int32 {
            self.topicQuota = value
        }
    }
}

public class UpgradePrePayOrderResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

    public var orderId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpgradePrePayOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradePrePayOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradePrePayOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
