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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Int64
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

public class ConvertPostPayOrderRequest : Tea.TeaModel {
    public var duration: Int32?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ConvertPostPayOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAclRequest : Tea.TeaModel {
    public var aclOperationType: String?

    public var aclResourceName: String?

    public var aclResourcePatternType: String?

    public var aclResourceType: String?

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
        if self.aclResourceName != nil {
            map["AclResourceName"] = self.aclResourceName!
        }
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
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclOperationType") && dict["AclOperationType"] != nil {
            self.aclOperationType = dict["AclOperationType"] as! String
        }
        if dict.keys.contains("AclResourceName") && dict["AclResourceName"] != nil {
            self.aclResourceName = dict["AclResourceName"] as! String
        }
        if dict.keys.contains("AclResourcePatternType") && dict["AclResourcePatternType"] != nil {
            self.aclResourcePatternType = dict["AclResourcePatternType"] as! String
        }
        if dict.keys.contains("AclResourceType") && dict["AclResourceType"] != nil {
            self.aclResourceType = dict["AclResourceType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerId") && dict["ConsumerId"] != nil {
            self.consumerId = dict["ConsumerId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateConsumerGroupRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateConsumerGroupRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateConsumerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePostPayOrderRequest : Tea.TeaModel {
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
    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var eipMax: Int32?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

    public var partitionNum: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
            self.deployType = dict["DeployType"] as! Int32
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("EipMax") && dict["EipMax"] != nil {
            self.eipMax = dict["EipMax"] as! Int32
        }
        if dict.keys.contains("IoMax") && dict["IoMax"] != nil {
            self.ioMax = dict["IoMax"] as! Int32
        }
        if dict.keys.contains("IoMaxSpec") && dict["IoMaxSpec"] != nil {
            self.ioMaxSpec = dict["IoMaxSpec"] as! String
        }
        if dict.keys.contains("PartitionNum") && dict["PartitionNum"] != nil {
            self.partitionNum = dict["PartitionNum"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SpecType") && dict["SpecType"] != nil {
            self.specType = dict["SpecType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreatePostPayOrderRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreatePostPayOrderRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TopicQuota") && dict["TopicQuota"] != nil {
            self.topicQuota = dict["TopicQuota"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreatePostPayOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectCU") && dict["ConnectCU"] != nil {
                self.connectCU = dict["ConnectCU"] as! Int32
            }
            if dict.keys.contains("ConnectReplica") && dict["ConnectReplica"] != nil {
                self.connectReplica = dict["ConnectReplica"] as! Int32
            }
            if dict.keys.contains("ControlCenterCU") && dict["ControlCenterCU"] != nil {
                self.controlCenterCU = dict["ControlCenterCU"] as! Int32
            }
            if dict.keys.contains("ControlCenterReplica") && dict["ControlCenterReplica"] != nil {
                self.controlCenterReplica = dict["ControlCenterReplica"] as! Int32
            }
            if dict.keys.contains("ControlCenterStorage") && dict["ControlCenterStorage"] != nil {
                self.controlCenterStorage = dict["ControlCenterStorage"] as! Int32
            }
            if dict.keys.contains("KafkaCU") && dict["KafkaCU"] != nil {
                self.kafkaCU = dict["KafkaCU"] as! Int32
            }
            if dict.keys.contains("KafkaReplica") && dict["KafkaReplica"] != nil {
                self.kafkaReplica = dict["KafkaReplica"] as! Int32
            }
            if dict.keys.contains("KafkaRestProxyCU") && dict["KafkaRestProxyCU"] != nil {
                self.kafkaRestProxyCU = dict["KafkaRestProxyCU"] as! Int32
            }
            if dict.keys.contains("KafkaRestProxyReplica") && dict["KafkaRestProxyReplica"] != nil {
                self.kafkaRestProxyReplica = dict["KafkaRestProxyReplica"] as! Int32
            }
            if dict.keys.contains("KafkaStorage") && dict["KafkaStorage"] != nil {
                self.kafkaStorage = dict["KafkaStorage"] as! Int32
            }
            if dict.keys.contains("KsqlCU") && dict["KsqlCU"] != nil {
                self.ksqlCU = dict["KsqlCU"] as! Int32
            }
            if dict.keys.contains("KsqlReplica") && dict["KsqlReplica"] != nil {
                self.ksqlReplica = dict["KsqlReplica"] as! Int32
            }
            if dict.keys.contains("KsqlStorage") && dict["KsqlStorage"] != nil {
                self.ksqlStorage = dict["KsqlStorage"] as! Int32
            }
            if dict.keys.contains("SchemaRegistryCU") && dict["SchemaRegistryCU"] != nil {
                self.schemaRegistryCU = dict["SchemaRegistryCU"] as! Int32
            }
            if dict.keys.contains("SchemaRegistryReplica") && dict["SchemaRegistryReplica"] != nil {
                self.schemaRegistryReplica = dict["SchemaRegistryReplica"] as! Int32
            }
            if dict.keys.contains("ZooKeeperCU") && dict["ZooKeeperCU"] != nil {
                self.zooKeeperCU = dict["ZooKeeperCU"] as! Int32
            }
            if dict.keys.contains("ZooKeeperReplica") && dict["ZooKeeperReplica"] != nil {
                self.zooKeeperReplica = dict["ZooKeeperReplica"] as! Int32
            }
            if dict.keys.contains("ZooKeeperStorage") && dict["ZooKeeperStorage"] != nil {
                self.zooKeeperStorage = dict["ZooKeeperStorage"] as! Int32
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
    public var confluentConfig: CreatePrePayOrderRequest.ConfluentConfig?

    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var eipMax: Int32?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

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
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfluentConfig") && dict["ConfluentConfig"] != nil {
            var model = CreatePrePayOrderRequest.ConfluentConfig()
            model.fromMap(dict["ConfluentConfig"] as! [String: Any])
            self.confluentConfig = model
        }
        if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
            self.deployType = dict["DeployType"] as! Int32
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("EipMax") && dict["EipMax"] != nil {
            self.eipMax = dict["EipMax"] as! Int32
        }
        if dict.keys.contains("IoMax") && dict["IoMax"] != nil {
            self.ioMax = dict["IoMax"] as! Int32
        }
        if dict.keys.contains("IoMaxSpec") && dict["IoMaxSpec"] != nil {
            self.ioMaxSpec = dict["IoMaxSpec"] as! String
        }
        if dict.keys.contains("PartitionNum") && dict["PartitionNum"] != nil {
            self.partitionNum = dict["PartitionNum"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SpecType") && dict["SpecType"] != nil {
            self.specType = dict["SpecType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreatePrePayOrderRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreatePrePayOrderRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TopicQuota") && dict["TopicQuota"] != nil {
            self.topicQuota = dict["TopicQuota"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var confluentConfigShrink: String?

    public var deployType: Int32?

    public var diskSize: Int32?

    public var diskType: String?

    public var eipMax: Int32?

    public var ioMax: Int32?

    public var ioMaxSpec: String?

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
        if self.eipMax != nil {
            map["EipMax"] = self.eipMax!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfluentConfig") && dict["ConfluentConfig"] != nil {
            self.confluentConfigShrink = dict["ConfluentConfig"] as! String
        }
        if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
            self.deployType = dict["DeployType"] as! Int32
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("EipMax") && dict["EipMax"] != nil {
            self.eipMax = dict["EipMax"] as! Int32
        }
        if dict.keys.contains("IoMax") && dict["IoMax"] != nil {
            self.ioMax = dict["IoMax"] as! Int32
        }
        if dict.keys.contains("IoMaxSpec") && dict["IoMaxSpec"] != nil {
            self.ioMaxSpec = dict["IoMaxSpec"] as! String
        }
        if dict.keys.contains("PartitionNum") && dict["PartitionNum"] != nil {
            self.partitionNum = dict["PartitionNum"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SpecType") && dict["SpecType"] != nil {
            self.specType = dict["SpecType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreatePrePayOrderShrinkRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreatePrePayOrderShrinkRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TopicQuota") && dict["TopicQuota"] != nil {
            self.topicQuota = dict["TopicQuota"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreatePrePayOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSaslUserRequest : Tea.TeaModel {
    public var instanceId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateSaslUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompactTopic") && dict["CompactTopic"] != nil {
            self.compactTopic = dict["CompactTopic"] as! Bool
        }
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LocalTopic") && dict["LocalTopic"] != nil {
            self.localTopic = dict["LocalTopic"] as! Bool
        }
        if dict.keys.contains("MinInsyncReplicas") && dict["MinInsyncReplicas"] != nil {
            self.minInsyncReplicas = dict["MinInsyncReplicas"] as! Int64
        }
        if dict.keys.contains("PartitionNum") && dict["PartitionNum"] != nil {
            self.partitionNum = dict["PartitionNum"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("ReplicationFactor") && dict["ReplicationFactor"] != nil {
            self.replicationFactor = dict["ReplicationFactor"] as! Int64
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateTopicRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateTopicRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAclRequest : Tea.TeaModel {
    public var aclOperationType: String?

    public var aclResourceName: String?

    public var aclResourcePatternType: String?

    public var aclResourceType: String?

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
        if self.aclResourceName != nil {
            map["AclResourceName"] = self.aclResourceName!
        }
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
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclOperationType") && dict["AclOperationType"] != nil {
            self.aclOperationType = dict["AclOperationType"] as! String
        }
        if dict.keys.contains("AclResourceName") && dict["AclResourceName"] != nil {
            self.aclResourceName = dict["AclResourceName"] as! String
        }
        if dict.keys.contains("AclResourcePatternType") && dict["AclResourcePatternType"] != nil {
            self.aclResourcePatternType = dict["AclResourcePatternType"] as! String
        }
        if dict.keys.contains("AclResourceType") && dict["AclResourceType"] != nil {
            self.aclResourceType = dict["AclResourceType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerId") && dict["ConsumerId"] != nil {
            self.consumerId = dict["ConsumerId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteConsumerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSaslUserRequest : Tea.TeaModel {
    public var instanceId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteSaslUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTopicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAclsRequest : Tea.TeaModel {
    public var aclResourceName: String?

    public var aclResourcePatternType: String?

    public var aclResourceType: String?

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
        if self.aclResourceName != nil {
            map["AclResourceName"] = self.aclResourceName!
        }
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
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclResourceName") && dict["AclResourceName"] != nil {
            self.aclResourceName = dict["AclResourceName"] as! String
        }
        if dict.keys.contains("AclResourcePatternType") && dict["AclResourcePatternType"] != nil {
            self.aclResourcePatternType = dict["AclResourcePatternType"] as! String
        }
        if dict.keys.contains("AclResourceType") && dict["AclResourceType"] != nil {
            self.aclResourceType = dict["AclResourceType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class DescribeAclsResponseBody : Tea.TeaModel {
    public class KafkaAclList : Tea.TeaModel {
        public class KafkaAclVO : Tea.TeaModel {
            public var aclOperationType: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AclOperationType") && dict["AclOperationType"] != nil {
                    self.aclOperationType = dict["AclOperationType"] as! String
                }
                if dict.keys.contains("AclResourceName") && dict["AclResourceName"] != nil {
                    self.aclResourceName = dict["AclResourceName"] as! String
                }
                if dict.keys.contains("AclResourcePatternType") && dict["AclResourcePatternType"] != nil {
                    self.aclResourcePatternType = dict["AclResourcePatternType"] as! String
                }
                if dict.keys.contains("AclResourceType") && dict["AclResourceType"] != nil {
                    self.aclResourceType = dict["AclResourceType"] as! String
                }
                if dict.keys.contains("Host") && dict["Host"] != nil {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("Username") && dict["Username"] != nil {
                    self.username = dict["Username"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("KafkaAclVO") && dict["KafkaAclVO"] != nil {
                var tmp : [DescribeAclsResponseBody.KafkaAclList.KafkaAclVO] = []
                for v in dict["KafkaAclVO"] as! [Any] {
                    var model = DescribeAclsResponseBody.KafkaAclList.KafkaAclVO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("KafkaAclList") && dict["KafkaAclList"] != nil {
            var model = DescribeAclsResponseBody.KafkaAclList()
            model.fromMap(dict["KafkaAclList"] as! [String: Any])
            self.kafkaAclList = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAclsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeSaslUsersResponseBody : Tea.TeaModel {
    public class SaslUserList : Tea.TeaModel {
        public class SaslUserVO : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Password") && dict["Password"] != nil {
                    self.password = dict["Password"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Username") && dict["Username"] != nil {
                    self.username = dict["Username"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SaslUserVO") && dict["SaslUserVO"] != nil {
                var tmp : [DescribeSaslUsersResponseBody.SaslUserList.SaslUserVO] = []
                for v in dict["SaslUserVO"] as! [Any] {
                    var model = DescribeSaslUsersResponseBody.SaslUserList.SaslUserVO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SaslUserList") && dict["SaslUserList"] != nil {
            var model = DescribeSaslUsersResponseBody.SaslUserList()
            model.fromMap(dict["SaslUserList"] as! [String: Any])
            self.saslUserList = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSaslUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAllInstanceIdListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetAllowedIpListResponseBody : Tea.TeaModel {
    public class AllowedList : Tea.TeaModel {
        public class InternetList : Tea.TeaModel {
            public var allowedIpGroup: [String: String]?

            public var allowedIpList: [String]?

            public var portRange: String?

            public override init() {
                super.init()
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
                if self.portRange != nil {
                    map["PortRange"] = self.portRange!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowedIpGroup") && dict["AllowedIpGroup"] != nil {
                    self.allowedIpGroup = dict["AllowedIpGroup"] as! [String: String]
                }
                if dict.keys.contains("AllowedIpList") && dict["AllowedIpList"] != nil {
                    self.allowedIpList = dict["AllowedIpList"] as! [String]
                }
                if dict.keys.contains("PortRange") && dict["PortRange"] != nil {
                    self.portRange = dict["PortRange"] as! String
                }
            }
        }
        public class VpcList : Tea.TeaModel {
            public var allowedIpGroup: [String: String]?

            public var allowedIpList: [String]?

            public var portRange: String?

            public override init() {
                super.init()
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
                if self.portRange != nil {
                    map["PortRange"] = self.portRange!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowedIpGroup") && dict["AllowedIpGroup"] != nil {
                    self.allowedIpGroup = dict["AllowedIpGroup"] as! [String: String]
                }
                if dict.keys.contains("AllowedIpList") && dict["AllowedIpList"] != nil {
                    self.allowedIpList = dict["AllowedIpList"] as! [String]
                }
                if dict.keys.contains("PortRange") && dict["PortRange"] != nil {
                    self.portRange = dict["PortRange"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                self.deployType = dict["DeployType"] as! Int32
            }
            if dict.keys.contains("InternetList") && dict["InternetList"] != nil {
                var tmp : [GetAllowedIpListResponseBody.AllowedList.InternetList] = []
                for v in dict["InternetList"] as! [Any] {
                    var model = GetAllowedIpListResponseBody.AllowedList.InternetList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.internetList = tmp
            }
            if dict.keys.contains("VpcList") && dict["VpcList"] != nil {
                var tmp : [GetAllowedIpListResponseBody.AllowedList.VpcList] = []
                for v in dict["VpcList"] as! [Any] {
                    var model = GetAllowedIpListResponseBody.AllowedList.VpcList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowedList") && dict["AllowedList"] != nil {
            var model = GetAllowedIpListResponseBody.AllowedList()
            model.fromMap(dict["AllowedList"] as! [String: Any])
            self.allowedList = model
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAllowedIpListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConsumerListRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerId") && dict["ConsumerId"] != nil {
            self.consumerId = dict["ConsumerId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagVO") && dict["TagVO"] != nil {
                        var tmp : [GetConsumerListResponseBody.ConsumerList.ConsumerVO.Tags.TagVO] = []
                        for v in dict["TagVO"] as! [Any] {
                            var model = GetConsumerListResponseBody.ConsumerList.ConsumerVO.Tags.TagVO()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tagVO = tmp
                    }
                }
            }
            public var automaticallyCreatedGroup: Bool?

            public var consumerId: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutomaticallyCreatedGroup") && dict["AutomaticallyCreatedGroup"] != nil {
                    self.automaticallyCreatedGroup = dict["AutomaticallyCreatedGroup"] as! Bool
                }
                if dict.keys.contains("ConsumerId") && dict["ConsumerId"] != nil {
                    self.consumerId = dict["ConsumerId"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = GetConsumerListResponseBody.ConsumerList.ConsumerVO.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsumerVO") && dict["ConsumerVO"] != nil {
                var tmp : [GetConsumerListResponseBody.ConsumerList.ConsumerVO] = []
                for v in dict["ConsumerVO"] as! [Any] {
                    var model = GetConsumerListResponseBody.ConsumerList.ConsumerVO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.consumerVO = tmp
            }
        }
    }
    public var code: Int32?

    public var consumerList: GetConsumerListResponseBody.ConsumerList?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("ConsumerList") && dict["ConsumerList"] != nil {
            var model = GetConsumerListResponseBody.ConsumerList()
            model.fromMap(dict["ConsumerList"] as! [String: Any])
            self.consumerList = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetConsumerListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConsumerProgressRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerId") && dict["ConsumerId"] != nil {
            self.consumerId = dict["ConsumerId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetConsumerProgressResponseBody : Tea.TeaModel {
    public class ConsumerProgress : Tea.TeaModel {
        public class TopicList : Tea.TeaModel {
            public class TopicList : Tea.TeaModel {
                public class OffsetList : Tea.TeaModel {
                    public class OffsetList : Tea.TeaModel {
                        public var brokerOffset: Int64?

                        public var consumerOffset: Int64?

                        public var lastTimestamp: Int64?

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
                            if self.brokerOffset != nil {
                                map["BrokerOffset"] = self.brokerOffset!
                            }
                            if self.consumerOffset != nil {
                                map["ConsumerOffset"] = self.consumerOffset!
                            }
                            if self.lastTimestamp != nil {
                                map["LastTimestamp"] = self.lastTimestamp!
                            }
                            if self.partition != nil {
                                map["Partition"] = self.partition!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("BrokerOffset") && dict["BrokerOffset"] != nil {
                                self.brokerOffset = dict["BrokerOffset"] as! Int64
                            }
                            if dict.keys.contains("ConsumerOffset") && dict["ConsumerOffset"] != nil {
                                self.consumerOffset = dict["ConsumerOffset"] as! Int64
                            }
                            if dict.keys.contains("LastTimestamp") && dict["LastTimestamp"] != nil {
                                self.lastTimestamp = dict["LastTimestamp"] as! Int64
                            }
                            if dict.keys.contains("Partition") && dict["Partition"] != nil {
                                self.partition = dict["Partition"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("OffsetList") && dict["OffsetList"] != nil {
                            var tmp : [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList.OffsetList] = []
                            for v in dict["OffsetList"] as! [Any] {
                                var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList.OffsetList()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LastTimestamp") && dict["LastTimestamp"] != nil {
                        self.lastTimestamp = dict["LastTimestamp"] as! Int64
                    }
                    if dict.keys.contains("OffsetList") && dict["OffsetList"] != nil {
                        var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList.OffsetList()
                        model.fromMap(dict["OffsetList"] as! [String: Any])
                        self.offsetList = model
                    }
                    if dict.keys.contains("Topic") && dict["Topic"] != nil {
                        self.topic = dict["Topic"] as! String
                    }
                    if dict.keys.contains("TotalDiff") && dict["TotalDiff"] != nil {
                        self.totalDiff = dict["TotalDiff"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TopicList") && dict["TopicList"] != nil {
                    var tmp : [GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList] = []
                    for v in dict["TopicList"] as! [Any] {
                        var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList.TopicList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.topicList = tmp
                }
            }
        }
        public var lastTimestamp: Int64?

        public var topicList: GetConsumerProgressResponseBody.ConsumerProgress.TopicList?

        public var totalDiff: Int64?

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
            if self.lastTimestamp != nil {
                map["LastTimestamp"] = self.lastTimestamp!
            }
            if self.topicList != nil {
                map["TopicList"] = self.topicList?.toMap()
            }
            if self.totalDiff != nil {
                map["TotalDiff"] = self.totalDiff!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LastTimestamp") && dict["LastTimestamp"] != nil {
                self.lastTimestamp = dict["LastTimestamp"] as! Int64
            }
            if dict.keys.contains("TopicList") && dict["TopicList"] != nil {
                var model = GetConsumerProgressResponseBody.ConsumerProgress.TopicList()
                model.fromMap(dict["TopicList"] as! [String: Any])
                self.topicList = model
            }
            if dict.keys.contains("TotalDiff") && dict["TotalDiff"] != nil {
                self.totalDiff = dict["TotalDiff"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("ConsumerProgress") && dict["ConsumerProgress"] != nil {
            var model = GetConsumerProgressResponseBody.ConsumerProgress()
            model.fromMap(dict["ConsumerProgress"] as! [String: Any])
            self.consumerProgress = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetConsumerProgressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var instanceId: [String]?

    public var orderId: String?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [GetInstanceListRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = GetInstanceListRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnectCU") && dict["ConnectCU"] != nil {
                        self.connectCU = dict["ConnectCU"] as! Int32
                    }
                    if dict.keys.contains("ConnectReplica") && dict["ConnectReplica"] != nil {
                        self.connectReplica = dict["ConnectReplica"] as! Int32
                    }
                    if dict.keys.contains("ControlCenterCU") && dict["ControlCenterCU"] != nil {
                        self.controlCenterCU = dict["ControlCenterCU"] as! Int32
                    }
                    if dict.keys.contains("ControlCenterReplica") && dict["ControlCenterReplica"] != nil {
                        self.controlCenterReplica = dict["ControlCenterReplica"] as! Int32
                    }
                    if dict.keys.contains("ControlCenterStorage") && dict["ControlCenterStorage"] != nil {
                        self.controlCenterStorage = dict["ControlCenterStorage"] as! Int32
                    }
                    if dict.keys.contains("KafkaCU") && dict["KafkaCU"] != nil {
                        self.kafkaCU = dict["KafkaCU"] as! Int32
                    }
                    if dict.keys.contains("KafkaReplica") && dict["KafkaReplica"] != nil {
                        self.kafkaReplica = dict["KafkaReplica"] as! Int32
                    }
                    if dict.keys.contains("KafkaRestProxyCU") && dict["KafkaRestProxyCU"] != nil {
                        self.kafkaRestProxyCU = dict["KafkaRestProxyCU"] as! Int32
                    }
                    if dict.keys.contains("KafkaRestProxyReplica") && dict["KafkaRestProxyReplica"] != nil {
                        self.kafkaRestProxyReplica = dict["KafkaRestProxyReplica"] as! Int32
                    }
                    if dict.keys.contains("KafkaStorage") && dict["KafkaStorage"] != nil {
                        self.kafkaStorage = dict["KafkaStorage"] as! Int32
                    }
                    if dict.keys.contains("KsqlCU") && dict["KsqlCU"] != nil {
                        self.ksqlCU = dict["KsqlCU"] as! Int32
                    }
                    if dict.keys.contains("KsqlReplica") && dict["KsqlReplica"] != nil {
                        self.ksqlReplica = dict["KsqlReplica"] as! Int32
                    }
                    if dict.keys.contains("KsqlStorage") && dict["KsqlStorage"] != nil {
                        self.ksqlStorage = dict["KsqlStorage"] as! Int32
                    }
                    if dict.keys.contains("SchemaRegistryCU") && dict["SchemaRegistryCU"] != nil {
                        self.schemaRegistryCU = dict["SchemaRegistryCU"] as! Int32
                    }
                    if dict.keys.contains("SchemaRegistryReplica") && dict["SchemaRegistryReplica"] != nil {
                        self.schemaRegistryReplica = dict["SchemaRegistryReplica"] as! Int32
                    }
                    if dict.keys.contains("ZooKeeperCU") && dict["ZooKeeperCU"] != nil {
                        self.zooKeeperCU = dict["ZooKeeperCU"] as! Int32
                    }
                    if dict.keys.contains("ZooKeeperReplica") && dict["ZooKeeperReplica"] != nil {
                        self.zooKeeperReplica = dict["ZooKeeperReplica"] as! Int32
                    }
                    if dict.keys.contains("ZooKeeperStorage") && dict["ZooKeeperStorage"] != nil {
                        self.zooKeeperStorage = dict["ZooKeeperStorage"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagVO") && dict["TagVO"] != nil {
                        var tmp : [GetInstanceListResponseBody.InstanceList.InstanceVO.Tags.TagVO] = []
                        for v in dict["TagVO"] as! [Any] {
                            var model = GetInstanceListResponseBody.InstanceList.InstanceVO.Tags.TagVO()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Current2OpenSourceVersion") && dict["Current2OpenSourceVersion"] != nil {
                        self.current2OpenSourceVersion = dict["Current2OpenSourceVersion"] as! String
                    }
                }
            }
            public var allConfig: String?

            public var confluentConfig: GetInstanceListResponseBody.InstanceList.InstanceVO.ConfluentConfig?

            public var createTime: Int64?

            public var deployType: Int32?

            public var diskSize: Int32?

            public var diskType: Int32?

            public var domainEndpoint: String?

            public var eipMax: Int32?

            public var endPoint: String?

            public var expiredTime: Int64?

            public var instanceId: String?

            public var ioMax: Int32?

            public var ioMaxSpec: String?

            public var kmsKeyId: String?

            public var msgRetain: Int32?

            public var name: String?

            public var paidType: Int32?

            public var regionId: String?

            public var resourceGroupId: String?

            public var saslDomainEndpoint: String?

            public var securityGroup: String?

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
                try self.confluentConfig?.validate()
                try self.tags?.validate()
                try self.upgradeServiceDetailInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allConfig != nil {
                    map["AllConfig"] = self.allConfig!
                }
                if self.confluentConfig != nil {
                    map["ConfluentConfig"] = self.confluentConfig?.toMap()
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
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
                if self.ioMaxSpec != nil {
                    map["IoMaxSpec"] = self.ioMaxSpec!
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
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.saslDomainEndpoint != nil {
                    map["SaslDomainEndpoint"] = self.saslDomainEndpoint!
                }
                if self.securityGroup != nil {
                    map["SecurityGroup"] = self.securityGroup!
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
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllConfig") && dict["AllConfig"] != nil {
                    self.allConfig = dict["AllConfig"] as! String
                }
                if dict.keys.contains("ConfluentConfig") && dict["ConfluentConfig"] != nil {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO.ConfluentConfig()
                    model.fromMap(dict["ConfluentConfig"] as! [String: Any])
                    self.confluentConfig = model
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                    self.deployType = dict["DeployType"] as! Int32
                }
                if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
                    self.diskSize = dict["DiskSize"] as! Int32
                }
                if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
                    self.diskType = dict["DiskType"] as! Int32
                }
                if dict.keys.contains("DomainEndpoint") && dict["DomainEndpoint"] != nil {
                    self.domainEndpoint = dict["DomainEndpoint"] as! String
                }
                if dict.keys.contains("EipMax") && dict["EipMax"] != nil {
                    self.eipMax = dict["EipMax"] as! Int32
                }
                if dict.keys.contains("EndPoint") && dict["EndPoint"] != nil {
                    self.endPoint = dict["EndPoint"] as! String
                }
                if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                    self.expiredTime = dict["ExpiredTime"] as! Int64
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("IoMax") && dict["IoMax"] != nil {
                    self.ioMax = dict["IoMax"] as! Int32
                }
                if dict.keys.contains("IoMaxSpec") && dict["IoMaxSpec"] != nil {
                    self.ioMaxSpec = dict["IoMaxSpec"] as! String
                }
                if dict.keys.contains("KmsKeyId") && dict["KmsKeyId"] != nil {
                    self.kmsKeyId = dict["KmsKeyId"] as! String
                }
                if dict.keys.contains("MsgRetain") && dict["MsgRetain"] != nil {
                    self.msgRetain = dict["MsgRetain"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PaidType") && dict["PaidType"] != nil {
                    self.paidType = dict["PaidType"] as! Int32
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("SaslDomainEndpoint") && dict["SaslDomainEndpoint"] != nil {
                    self.saslDomainEndpoint = dict["SaslDomainEndpoint"] as! String
                }
                if dict.keys.contains("SecurityGroup") && dict["SecurityGroup"] != nil {
                    self.securityGroup = dict["SecurityGroup"] as! String
                }
                if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
                    self.serviceStatus = dict["ServiceStatus"] as! Int32
                }
                if dict.keys.contains("SpecType") && dict["SpecType"] != nil {
                    self.specType = dict["SpecType"] as! String
                }
                if dict.keys.contains("SslDomainEndpoint") && dict["SslDomainEndpoint"] != nil {
                    self.sslDomainEndpoint = dict["SslDomainEndpoint"] as! String
                }
                if dict.keys.contains("SslEndPoint") && dict["SslEndPoint"] != nil {
                    self.sslEndPoint = dict["SslEndPoint"] as! String
                }
                if dict.keys.contains("StandardZoneId") && dict["StandardZoneId"] != nil {
                    self.standardZoneId = dict["StandardZoneId"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("TopicNumLimit") && dict["TopicNumLimit"] != nil {
                    self.topicNumLimit = dict["TopicNumLimit"] as! Int32
                }
                if dict.keys.contains("UpgradeServiceDetailInfo") && dict["UpgradeServiceDetailInfo"] != nil {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO.UpgradeServiceDetailInfo()
                    model.fromMap(dict["UpgradeServiceDetailInfo"] as! [String: Any])
                    self.upgradeServiceDetailInfo = model
                }
                if dict.keys.contains("UsedGroupCount") && dict["UsedGroupCount"] != nil {
                    self.usedGroupCount = dict["UsedGroupCount"] as! Int32
                }
                if dict.keys.contains("UsedPartitionCount") && dict["UsedPartitionCount"] != nil {
                    self.usedPartitionCount = dict["UsedPartitionCount"] as! Int32
                }
                if dict.keys.contains("UsedTopicCount") && dict["UsedTopicCount"] != nil {
                    self.usedTopicCount = dict["UsedTopicCount"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceVO") && dict["InstanceVO"] != nil {
                var tmp : [GetInstanceListResponseBody.InstanceList.InstanceVO] = []
                for v in dict["InstanceVO"] as! [Any] {
                    var model = GetInstanceListResponseBody.InstanceList.InstanceVO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("InstanceList") && dict["InstanceList"] != nil {
            var model = GetInstanceListResponseBody.InstanceList()
            model.fromMap(dict["InstanceList"] as! [String: Any])
            self.instanceList = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetInstanceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupLeft") && dict["GroupLeft"] != nil {
                self.groupLeft = dict["GroupLeft"] as! Int32
            }
            if dict.keys.contains("GroupUsed") && dict["GroupUsed"] != nil {
                self.groupUsed = dict["GroupUsed"] as! Int32
            }
            if dict.keys.contains("IsPartitionBuy") && dict["IsPartitionBuy"] != nil {
                self.isPartitionBuy = dict["IsPartitionBuy"] as! Int32
            }
            if dict.keys.contains("PartitionLeft") && dict["PartitionLeft"] != nil {
                self.partitionLeft = dict["PartitionLeft"] as! Int32
            }
            if dict.keys.contains("PartitionNumOfBuy") && dict["PartitionNumOfBuy"] != nil {
                self.partitionNumOfBuy = dict["PartitionNumOfBuy"] as! Int32
            }
            if dict.keys.contains("PartitionQuota") && dict["PartitionQuota"] != nil {
                self.partitionQuota = dict["PartitionQuota"] as! Int32
            }
            if dict.keys.contains("PartitionUsed") && dict["PartitionUsed"] != nil {
                self.partitionUsed = dict["PartitionUsed"] as! Int32
            }
            if dict.keys.contains("TopicLeft") && dict["TopicLeft"] != nil {
                self.topicLeft = dict["TopicLeft"] as! Int32
            }
            if dict.keys.contains("TopicNumOfBuy") && dict["TopicNumOfBuy"] != nil {
                self.topicNumOfBuy = dict["TopicNumOfBuy"] as! Int32
            }
            if dict.keys.contains("TopicQuota") && dict["TopicQuota"] != nil {
                self.topicQuota = dict["TopicQuota"] as! Int32
            }
            if dict.keys.contains("TopicUsed") && dict["TopicUsed"] != nil {
                self.topicUsed = dict["TopicUsed"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("QuotaData") && dict["QuotaData"] != nil {
            var model = GetQuotaTipResponseBody.QuotaData()
            model.fromMap(dict["QuotaData"] as! [String: Any])
            self.quotaData = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetQuotaTipResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagVO") && dict["TagVO"] != nil {
                        var tmp : [GetTopicListResponseBody.TopicList.TopicVO.Tags.TagVO] = []
                        for v in dict["TagVO"] as! [Any] {
                            var model = GetTopicListResponseBody.TopicList.TopicVO.Tags.TagVO()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoCreate") && dict["AutoCreate"] != nil {
                    self.autoCreate = dict["AutoCreate"] as! Bool
                }
                if dict.keys.contains("CompactTopic") && dict["CompactTopic"] != nil {
                    self.compactTopic = dict["CompactTopic"] as! Bool
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("LocalTopic") && dict["LocalTopic"] != nil {
                    self.localTopic = dict["LocalTopic"] as! Bool
                }
                if dict.keys.contains("PartitionNum") && dict["PartitionNum"] != nil {
                    self.partitionNum = dict["PartitionNum"] as! Int32
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Remark") && dict["Remark"] != nil {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("StatusName") && dict["StatusName"] != nil {
                    self.statusName = dict["StatusName"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = GetTopicListResponseBody.TopicList.TopicVO.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("Topic") && dict["Topic"] != nil {
                    self.topic = dict["Topic"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TopicVO") && dict["TopicVO"] != nil {
                var tmp : [GetTopicListResponseBody.TopicList.TopicVO] = []
                for v in dict["TopicVO"] as! [Any] {
                    var model = GetTopicListResponseBody.TopicList.TopicVO()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TopicList") && dict["TopicList"] != nil {
            var model = GetTopicListResponseBody.TopicList()
            model.fromMap(dict["TopicList"] as! [String: Any])
            self.topicList = model
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTopicListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LastUpdateTimestamp") && dict["LastUpdateTimestamp"] != nil {
                        self.lastUpdateTimestamp = dict["LastUpdateTimestamp"] as! Int64
                    }
                    if dict.keys.contains("MaxOffset") && dict["MaxOffset"] != nil {
                        self.maxOffset = dict["MaxOffset"] as! Int64
                    }
                    if dict.keys.contains("MinOffset") && dict["MinOffset"] != nil {
                        self.minOffset = dict["MinOffset"] as! Int64
                    }
                    if dict.keys.contains("Partition") && dict["Partition"] != nil {
                        self.partition = dict["Partition"] as! Int32
                    }
                    if dict.keys.contains("Topic") && dict["Topic"] != nil {
                        self.topic = dict["Topic"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OffsetTable") && dict["OffsetTable"] != nil {
                    var tmp : [GetTopicStatusResponseBody.TopicStatus.OffsetTable.OffsetTable] = []
                    for v in dict["OffsetTable"] as! [Any] {
                        var model = GetTopicStatusResponseBody.TopicStatus.OffsetTable.OffsetTable()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LastTimeStamp") && dict["LastTimeStamp"] != nil {
                self.lastTimeStamp = dict["LastTimeStamp"] as! Int64
            }
            if dict.keys.contains("OffsetTable") && dict["OffsetTable"] != nil {
                var model = GetTopicStatusResponseBody.TopicStatus.OffsetTable()
                model.fromMap(dict["OffsetTable"] as! [String: Any])
                self.offsetTable = model
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TopicStatus") && dict["TopicStatus"] != nil {
            var model = GetTopicStatusResponseBody.TopicStatus()
            model.fromMap(dict["TopicStatus"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTopicStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsumerGroups") && dict["ConsumerGroups"] != nil {
                self.consumerGroups = dict["ConsumerGroups"] as! [String]
            }
            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                self.topic = dict["Topic"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TopicSubscribeStatus") && dict["TopicSubscribeStatus"] != nil {
            var model = GetTopicSubscribeStatusResponseBody.TopicSubscribeStatus()
            model.fromMap(dict["TopicSubscribeStatus"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTopicSubscribeStatusResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") && dict["TagResource"] != nil {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["TagResource"] as! [Any] {
                    var model = ListTagResourcesResponseBody.TagResources.TagResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyInstanceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddPartitionNum") && dict["AddPartitionNum"] != nil {
            self.addPartitionNum = dict["AddPartitionNum"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyPartitionNumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Remark") && dict["Remark"] != nil {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTopicRemarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Offset") && dict["Offset"] != nil {
            self.offset = dict["Offset"] as! String
        }
        if dict.keys.contains("Partition") && dict["Partition"] != nil {
            self.partition = dict["Partition"] as! String
        }
        if dict.keys.contains("QueryType") && dict["QueryType"] != nil {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Checksum") && dict["Checksum"] != nil {
                self.checksum = dict["Checksum"] as! Int64
            }
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("KeyTruncated") && dict["KeyTruncated"] != nil {
                self.keyTruncated = dict["KeyTruncated"] as! Bool
            }
            if dict.keys.contains("Offset") && dict["Offset"] != nil {
                self.offset = dict["Offset"] as! Int64
            }
            if dict.keys.contains("Partition") && dict["Partition"] != nil {
                self.partition = dict["Partition"] as! Int64
            }
            if dict.keys.contains("SerializedKeySize") && dict["SerializedKeySize"] != nil {
                self.serializedKeySize = dict["SerializedKeySize"] as! Int32
            }
            if dict.keys.contains("SerializedValueSize") && dict["SerializedValueSize"] != nil {
                self.serializedValueSize = dict["SerializedValueSize"] as! Int32
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
            if dict.keys.contains("TimestampType") && dict["TimestampType"] != nil {
                self.timestampType = dict["TimestampType"] as! String
            }
            if dict.keys.contains("Topic") && dict["Topic"] != nil {
                self.topic = dict["Topic"] as! String
            }
            if dict.keys.contains("TruncatedKeySize") && dict["TruncatedKeySize"] != nil {
                self.truncatedKeySize = dict["TruncatedKeySize"] as! Int32
            }
            if dict.keys.contains("TruncatedValueSize") && dict["TruncatedValueSize"] != nil {
                self.truncatedValueSize = dict["TruncatedValueSize"] as! Int32
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
            if dict.keys.contains("ValueTruncated") && dict["ValueTruncated"] != nil {
                self.valueTruncated = dict["ValueTruncated"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageList") && dict["MessageList"] != nil {
            var tmp : [QueryMessageResponseBody.MessageList] = []
            for v in dict["MessageList"] as! [Any] {
                var model = QueryMessageResponseBody.MessageList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messageList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForceDeleteInstance") && dict["ForceDeleteInstance"] != nil {
            self.forceDeleteInstance = dict["ForceDeleteInstance"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ReleaseInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("CrossZone") && dict["CrossZone"] != nil {
            self.crossZone = dict["CrossZone"] as! Bool
        }
        if dict.keys.contains("DeployModule") && dict["DeployModule"] != nil {
            self.deployModule = dict["DeployModule"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsEipInner") && dict["IsEipInner"] != nil {
            self.isEipInner = dict["IsEipInner"] as! Bool
        }
        if dict.keys.contains("IsForceSelectedZones") && dict["IsForceSelectedZones"] != nil {
            self.isForceSelectedZones = dict["IsForceSelectedZones"] as! Bool
        }
        if dict.keys.contains("IsSetUserAndPassword") && dict["IsSetUserAndPassword"] != nil {
            self.isSetUserAndPassword = dict["IsSetUserAndPassword"] as! Bool
        }
        if dict.keys.contains("KMSKeyId") && dict["KMSKeyId"] != nil {
            self.KMSKeyId = dict["KMSKeyId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Notifier") && dict["Notifier"] != nil {
            self.notifier = dict["Notifier"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityGroup") && dict["SecurityGroup"] != nil {
            self.securityGroup = dict["SecurityGroup"] as! String
        }
        if dict.keys.contains("SelectedZones") && dict["SelectedZones"] != nil {
            self.selectedZones = dict["SelectedZones"] as! String
        }
        if dict.keys.contains("ServiceVersion") && dict["ServiceVersion"] != nil {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("UserPhoneNum") && dict["UserPhoneNum"] != nil {
            self.userPhoneNum = dict["UserPhoneNum"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VSwitchIds") && dict["VSwitchIds"] != nil {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StartInstanceResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowedListIp") && dict["AllowedListIp"] != nil {
            self.allowedListIp = dict["AllowedListIp"] as! String
        }
        if dict.keys.contains("AllowedListType") && dict["AllowedListType"] != nil {
            self.allowedListType = dict["AllowedListType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PortRange") && dict["PortRange"] != nil {
            self.portRange = dict["PortRange"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UpdateType") && dict["UpdateType"] != nil {
            self.updateType = dict["UpdateType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateAllowedIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Offset") && dict["Offset"] != nil {
                self.offset = dict["Offset"] as! Int64
            }
            if dict.keys.contains("Partition") && dict["Partition"] != nil {
                self.partition = dict["Partition"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerId") && dict["ConsumerId"] != nil {
            self.consumerId = dict["ConsumerId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Offsets") && dict["Offsets"] != nil {
            var tmp : [UpdateConsumerOffsetRequest.Offsets] = []
            for v in dict["Offsets"] as! [Any] {
                var model = UpdateConsumerOffsetRequest.Offsets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.offsets = tmp
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResetType") && dict["ResetType"] != nil {
            self.resetType = dict["ResetType"] as! String
        }
        if dict.keys.contains("Time") && dict["Time"] != nil {
            self.time = dict["Time"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsumerId") && dict["ConsumerId"] != nil {
            self.consumerId = dict["ConsumerId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Offsets") && dict["Offsets"] != nil {
            self.offsetsShrink = dict["Offsets"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResetType") && dict["ResetType"] != nil {
            self.resetType = dict["ResetType"] as! String
        }
        if dict.keys.contains("Time") && dict["Time"] != nil {
            self.time = dict["Time"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateConsumerOffsetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateInstanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTopicConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TargetVersion") && dict["TargetVersion"] != nil {
            self.targetVersion = dict["TargetVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradeInstanceVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReservedPublishCapacity") && dict["ReservedPublishCapacity"] != nil {
                self.reservedPublishCapacity = dict["ReservedPublishCapacity"] as! Int64
            }
            if dict.keys.contains("ReservedSubscribeCapacity") && dict["ReservedSubscribeCapacity"] != nil {
                self.reservedSubscribeCapacity = dict["ReservedSubscribeCapacity"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("EipMax") && dict["EipMax"] != nil {
            self.eipMax = dict["EipMax"] as! Int32
        }
        if dict.keys.contains("EipModel") && dict["EipModel"] != nil {
            self.eipModel = dict["EipModel"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IoMax") && dict["IoMax"] != nil {
            self.ioMax = dict["IoMax"] as! Int32
        }
        if dict.keys.contains("IoMaxSpec") && dict["IoMaxSpec"] != nil {
            self.ioMaxSpec = dict["IoMaxSpec"] as! String
        }
        if dict.keys.contains("PartitionNum") && dict["PartitionNum"] != nil {
            self.partitionNum = dict["PartitionNum"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServerlessConfig") && dict["ServerlessConfig"] != nil {
            var model = UpgradePostPayOrderRequest.ServerlessConfig()
            model.fromMap(dict["ServerlessConfig"] as! [String: Any])
            self.serverlessConfig = model
        }
        if dict.keys.contains("SpecType") && dict["SpecType"] != nil {
            self.specType = dict["SpecType"] as! String
        }
        if dict.keys.contains("TopicQuota") && dict["TopicQuota"] != nil {
            self.topicQuota = dict["TopicQuota"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("EipMax") && dict["EipMax"] != nil {
            self.eipMax = dict["EipMax"] as! Int32
        }
        if dict.keys.contains("EipModel") && dict["EipModel"] != nil {
            self.eipModel = dict["EipModel"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IoMax") && dict["IoMax"] != nil {
            self.ioMax = dict["IoMax"] as! Int32
        }
        if dict.keys.contains("IoMaxSpec") && dict["IoMaxSpec"] != nil {
            self.ioMaxSpec = dict["IoMaxSpec"] as! String
        }
        if dict.keys.contains("PartitionNum") && dict["PartitionNum"] != nil {
            self.partitionNum = dict["PartitionNum"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServerlessConfig") && dict["ServerlessConfig"] != nil {
            self.serverlessConfigShrink = dict["ServerlessConfig"] as! String
        }
        if dict.keys.contains("SpecType") && dict["SpecType"] != nil {
            self.specType = dict["SpecType"] as! String
        }
        if dict.keys.contains("TopicQuota") && dict["TopicQuota"] != nil {
            self.topicQuota = dict["TopicQuota"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradePostPayOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectCU") && dict["ConnectCU"] != nil {
                self.connectCU = dict["ConnectCU"] as! Int32
            }
            if dict.keys.contains("ConnectReplica") && dict["ConnectReplica"] != nil {
                self.connectReplica = dict["ConnectReplica"] as! Int32
            }
            if dict.keys.contains("ControlCenterCU") && dict["ControlCenterCU"] != nil {
                self.controlCenterCU = dict["ControlCenterCU"] as! Int32
            }
            if dict.keys.contains("ControlCenterReplica") && dict["ControlCenterReplica"] != nil {
                self.controlCenterReplica = dict["ControlCenterReplica"] as! Int32
            }
            if dict.keys.contains("ControlCenterStorage") && dict["ControlCenterStorage"] != nil {
                self.controlCenterStorage = dict["ControlCenterStorage"] as! Int32
            }
            if dict.keys.contains("KafkaCU") && dict["KafkaCU"] != nil {
                self.kafkaCU = dict["KafkaCU"] as! Int32
            }
            if dict.keys.contains("KafkaReplica") && dict["KafkaReplica"] != nil {
                self.kafkaReplica = dict["KafkaReplica"] as! Int32
            }
            if dict.keys.contains("KafkaRestProxyCU") && dict["KafkaRestProxyCU"] != nil {
                self.kafkaRestProxyCU = dict["KafkaRestProxyCU"] as! Int32
            }
            if dict.keys.contains("KafkaRestProxyReplica") && dict["KafkaRestProxyReplica"] != nil {
                self.kafkaRestProxyReplica = dict["KafkaRestProxyReplica"] as! Int32
            }
            if dict.keys.contains("KafkaStorage") && dict["KafkaStorage"] != nil {
                self.kafkaStorage = dict["KafkaStorage"] as! Int32
            }
            if dict.keys.contains("KsqlCU") && dict["KsqlCU"] != nil {
                self.ksqlCU = dict["KsqlCU"] as! Int32
            }
            if dict.keys.contains("KsqlReplica") && dict["KsqlReplica"] != nil {
                self.ksqlReplica = dict["KsqlReplica"] as! Int32
            }
            if dict.keys.contains("KsqlStorage") && dict["KsqlStorage"] != nil {
                self.ksqlStorage = dict["KsqlStorage"] as! Int32
            }
            if dict.keys.contains("SchemaRegistryCU") && dict["SchemaRegistryCU"] != nil {
                self.schemaRegistryCU = dict["SchemaRegistryCU"] as! Int32
            }
            if dict.keys.contains("SchemaRegistryReplica") && dict["SchemaRegistryReplica"] != nil {
                self.schemaRegistryReplica = dict["SchemaRegistryReplica"] as! Int32
            }
            if dict.keys.contains("ZooKeeperCU") && dict["ZooKeeperCU"] != nil {
                self.zooKeeperCU = dict["ZooKeeperCU"] as! Int32
            }
            if dict.keys.contains("ZooKeeperReplica") && dict["ZooKeeperReplica"] != nil {
                self.zooKeeperReplica = dict["ZooKeeperReplica"] as! Int32
            }
            if dict.keys.contains("ZooKeeperStorage") && dict["ZooKeeperStorage"] != nil {
                self.zooKeeperStorage = dict["ZooKeeperStorage"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfluentConfig") && dict["ConfluentConfig"] != nil {
            var model = UpgradePrePayOrderRequest.ConfluentConfig()
            model.fromMap(dict["ConfluentConfig"] as! [String: Any])
            self.confluentConfig = model
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("EipMax") && dict["EipMax"] != nil {
            self.eipMax = dict["EipMax"] as! Int32
        }
        if dict.keys.contains("EipModel") && dict["EipModel"] != nil {
            self.eipModel = dict["EipModel"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IoMax") && dict["IoMax"] != nil {
            self.ioMax = dict["IoMax"] as! Int32
        }
        if dict.keys.contains("IoMaxSpec") && dict["IoMaxSpec"] != nil {
            self.ioMaxSpec = dict["IoMaxSpec"] as! String
        }
        if dict.keys.contains("PaidType") && dict["PaidType"] != nil {
            self.paidType = dict["PaidType"] as! Int32
        }
        if dict.keys.contains("PartitionNum") && dict["PartitionNum"] != nil {
            self.partitionNum = dict["PartitionNum"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SpecType") && dict["SpecType"] != nil {
            self.specType = dict["SpecType"] as! String
        }
        if dict.keys.contains("TopicQuota") && dict["TopicQuota"] != nil {
            self.topicQuota = dict["TopicQuota"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfluentConfig") && dict["ConfluentConfig"] != nil {
            self.confluentConfigShrink = dict["ConfluentConfig"] as! String
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("EipMax") && dict["EipMax"] != nil {
            self.eipMax = dict["EipMax"] as! Int32
        }
        if dict.keys.contains("EipModel") && dict["EipModel"] != nil {
            self.eipModel = dict["EipModel"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IoMax") && dict["IoMax"] != nil {
            self.ioMax = dict["IoMax"] as! Int32
        }
        if dict.keys.contains("IoMaxSpec") && dict["IoMaxSpec"] != nil {
            self.ioMaxSpec = dict["IoMaxSpec"] as! String
        }
        if dict.keys.contains("PaidType") && dict["PaidType"] != nil {
            self.paidType = dict["PaidType"] as! Int32
        }
        if dict.keys.contains("PartitionNum") && dict["PartitionNum"] != nil {
            self.partitionNum = dict["PartitionNum"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SpecType") && dict["SpecType"] != nil {
            self.specType = dict["SpecType"] as! String
        }
        if dict.keys.contains("TopicQuota") && dict["TopicQuota"] != nil {
            self.topicQuota = dict["TopicQuota"] as! Int32
        }
    }
}

public class UpgradePrePayOrderResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradePrePayOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
