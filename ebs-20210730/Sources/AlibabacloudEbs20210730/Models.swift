import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
    }
}

public class AddDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class AddDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDiskReplicaPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyLensServiceResponseBody : Tea.TeaModel {
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

public class ApplyLensServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyLensServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ApplyLensServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var diskTargets: [String]?

    public var policyId: String?

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
        if self.diskTargets != nil {
            map["DiskTargets"] = self.diskTargets!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
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
        if dict.keys.contains("DiskTargets") && dict["DiskTargets"] != nil {
            self.diskTargets = dict["DiskTargets"] as! [String]
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BindEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class BindEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindEnterpriseSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BindEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelLensServiceResponseBody : Tea.TeaModel {
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

public class CancelLensServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelLensServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CancelLensServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var newResourceGroupId: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
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

public class ClearPairDrillRequest : Tea.TeaModel {
    public var drillId: String?

    public var pairId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.pairId != nil {
            map["PairId"] = self.pairId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrillId") && dict["DrillId"] != nil {
            self.drillId = dict["DrillId"] as! String
        }
        if dict.keys.contains("PairId") && dict["PairId"] != nil {
            self.pairId = dict["PairId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ClearPairDrillResponseBody : Tea.TeaModel {
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

public class ClearPairDrillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearPairDrillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ClearPairDrillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ClearReplicaGroupDrillRequest : Tea.TeaModel {
    public var drillId: String?

    public var groupId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrillId") && dict["DrillId"] != nil {
            self.drillId = dict["DrillId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ClearReplicaGroupDrillResponseBody : Tea.TeaModel {
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

public class ClearReplicaGroupDrillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearReplicaGroupDrillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ClearReplicaGroupDrillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDedicatedBlockStorageClusterRequest : Tea.TeaModel {
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
    public var azone: String?

    public var capacity: Int64?

    public var dbscId: String?

    public var dbscName: String?

    public var period: Int32?

    public var periodUnit: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [CreateDedicatedBlockStorageClusterRequest.Tag]?

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
        if self.azone != nil {
            map["Azone"] = self.azone!
        }
        if self.capacity != nil {
            map["Capacity"] = self.capacity!
        }
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.dbscName != nil {
            map["DbscName"] = self.dbscName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Azone") && dict["Azone"] != nil {
            self.azone = dict["Azone"] as! String
        }
        if dict.keys.contains("Capacity") && dict["Capacity"] != nil {
            self.capacity = dict["Capacity"] as! Int64
        }
        if dict.keys.contains("DbscId") && dict["DbscId"] != nil {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("DbscName") && dict["DbscName"] != nil {
            self.dbscName = dict["DbscName"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateDedicatedBlockStorageClusterRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateDedicatedBlockStorageClusterRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateDedicatedBlockStorageClusterResponseBody : Tea.TeaModel {
    public var dbscId: String?

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
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbscId") && dict["DbscId"] != nil {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDedicatedBlockStorageClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDedicatedBlockStorageClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDedicatedBlockStorageClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDiskReplicaGroupRequest : Tea.TeaModel {
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
    public var bandwidth: Int64?

    public var clientToken: String?

    public var description_: String?

    public var destinationRegionId: String?

    public var destinationZoneId: String?

    public var groupName: String?

    public var RPO: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceZoneId: String?

    public var tag: [CreateDiskReplicaGroupRequest.Tag]?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationRegionId != nil {
            map["DestinationRegionId"] = self.destinationRegionId!
        }
        if self.destinationZoneId != nil {
            map["DestinationZoneId"] = self.destinationZoneId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.RPO != nil {
            map["RPO"] = self.RPO!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceZoneId != nil {
            map["SourceZoneId"] = self.sourceZoneId!
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
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationRegionId") && dict["DestinationRegionId"] != nil {
            self.destinationRegionId = dict["DestinationRegionId"] as! String
        }
        if dict.keys.contains("DestinationZoneId") && dict["DestinationZoneId"] != nil {
            self.destinationZoneId = dict["DestinationZoneId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RPO") && dict["RPO"] != nil {
            self.RPO = dict["RPO"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceZoneId") && dict["SourceZoneId"] != nil {
            self.sourceZoneId = dict["SourceZoneId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateDiskReplicaGroupRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateDiskReplicaGroupRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class CreateDiskReplicaGroupResponseBody : Tea.TeaModel {
    public var replicaGroupId: String?

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
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDiskReplicaGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDiskReplicaGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDiskReplicaPairRequest : Tea.TeaModel {
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
    public var bandwidth: Int64?

    public var chargeType: String?

    public var clientToken: String?

    public var description_: String?

    public var destinationDiskId: String?

    public var destinationRegionId: String?

    public var destinationZoneId: String?

    public var diskId: String?

    public var pairName: String?

    public var period: Int64?

    public var periodUnit: String?

    public var RPO: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceZoneId: String?

    public var tag: [CreateDiskReplicaPairRequest.Tag]?

    public override init() {
        super.init()
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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.destinationDiskId != nil {
            map["DestinationDiskId"] = self.destinationDiskId!
        }
        if self.destinationRegionId != nil {
            map["DestinationRegionId"] = self.destinationRegionId!
        }
        if self.destinationZoneId != nil {
            map["DestinationZoneId"] = self.destinationZoneId!
        }
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.pairName != nil {
            map["PairName"] = self.pairName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.RPO != nil {
            map["RPO"] = self.RPO!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceZoneId != nil {
            map["SourceZoneId"] = self.sourceZoneId!
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
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationDiskId") && dict["DestinationDiskId"] != nil {
            self.destinationDiskId = dict["DestinationDiskId"] as! String
        }
        if dict.keys.contains("DestinationRegionId") && dict["DestinationRegionId"] != nil {
            self.destinationRegionId = dict["DestinationRegionId"] as! String
        }
        if dict.keys.contains("DestinationZoneId") && dict["DestinationZoneId"] != nil {
            self.destinationZoneId = dict["DestinationZoneId"] as! String
        }
        if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("PairName") && dict["PairName"] != nil {
            self.pairName = dict["PairName"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RPO") && dict["RPO"] != nil {
            self.RPO = dict["RPO"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceZoneId") && dict["SourceZoneId"] != nil {
            self.sourceZoneId = dict["SourceZoneId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateDiskReplicaPairRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateDiskReplicaPairRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class CreateDiskReplicaPairResponseBody : Tea.TeaModel {
    public var orderId: String?

    public var replicaPairId: String?

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
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
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
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDiskReplicaPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public class CrossRegionCopyInfo : Tea.TeaModel {
        public class Regions : Tea.TeaModel {
            public var regionId: String?

            public var retainDays: Int32?

            public override init() {
                super.init()
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
                if self.retainDays != nil {
                    map["RetainDays"] = self.retainDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RetainDays") && dict["RetainDays"] != nil {
                    self.retainDays = dict["RetainDays"] as! Int32
                }
            }
        }
        public var enabled: Bool?

        public var regions: [CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.regions != nil {
                var tmp : [Any] = []
                for k in self.regions! {
                    tmp.append(k.toMap())
                }
                map["Regions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("Regions") && dict["Regions"] != nil {
                var tmp : [CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions] = []
                for v in dict["Regions"] as! [Any] {
                    var model = CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.regions = tmp
            }
        }
    }
    public class RetainRule : Tea.TeaModel {
        public var number: Int32?

        public var timeInterval: Int32?

        public var timeUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.timeInterval != nil {
                map["TimeInterval"] = self.timeInterval!
            }
            if self.timeUnit != nil {
                map["TimeUnit"] = self.timeUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Number") && dict["Number"] != nil {
                self.number = dict["Number"] as! Int32
            }
            if dict.keys.contains("TimeInterval") && dict["TimeInterval"] != nil {
                self.timeInterval = dict["TimeInterval"] as! Int32
            }
            if dict.keys.contains("TimeUnit") && dict["TimeUnit"] != nil {
                self.timeUnit = dict["TimeUnit"] as! String
            }
        }
    }
    public class Schedule : Tea.TeaModel {
        public var cronExpression: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cronExpression != nil {
                map["CronExpression"] = self.cronExpression!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CronExpression") && dict["CronExpression"] != nil {
                self.cronExpression = dict["CronExpression"] as! String
            }
        }
    }
    public class SpecialRetainRules : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var specialPeriodUnit: String?

            public var timeInterval: Int32?

            public var timeUnit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.specialPeriodUnit != nil {
                    map["SpecialPeriodUnit"] = self.specialPeriodUnit!
                }
                if self.timeInterval != nil {
                    map["TimeInterval"] = self.timeInterval!
                }
                if self.timeUnit != nil {
                    map["TimeUnit"] = self.timeUnit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SpecialPeriodUnit") && dict["SpecialPeriodUnit"] != nil {
                    self.specialPeriodUnit = dict["SpecialPeriodUnit"] as! String
                }
                if dict.keys.contains("TimeInterval") && dict["TimeInterval"] != nil {
                    self.timeInterval = dict["TimeInterval"] as! Int32
                }
                if dict.keys.contains("TimeUnit") && dict["TimeUnit"] != nil {
                    self.timeUnit = dict["TimeUnit"] as! String
                }
            }
        }
        public var enabled: Bool?

        public var rules: [CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
        }
    }
    public class StorageRule : Tea.TeaModel {
        public var enableImmediateAccess: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableImmediateAccess != nil {
                map["EnableImmediateAccess"] = self.enableImmediateAccess!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableImmediateAccess") && dict["EnableImmediateAccess"] != nil {
                self.enableImmediateAccess = dict["EnableImmediateAccess"] as! Bool
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
    public var clientToken: String?

    public var crossRegionCopyInfo: CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo?

    public var desc: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var retainRule: CreateEnterpriseSnapshotPolicyRequest.RetainRule?

    public var schedule: CreateEnterpriseSnapshotPolicyRequest.Schedule?

    public var specialRetainRules: CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules?

    public var state: String?

    public var storageRule: CreateEnterpriseSnapshotPolicyRequest.StorageRule?

    public var tag: [CreateEnterpriseSnapshotPolicyRequest.Tag]?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.crossRegionCopyInfo?.validate()
        try self.retainRule?.validate()
        try self.schedule?.validate()
        try self.specialRetainRules?.validate()
        try self.storageRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.crossRegionCopyInfo != nil {
            map["CrossRegionCopyInfo"] = self.crossRegionCopyInfo?.toMap()
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.retainRule != nil {
            map["RetainRule"] = self.retainRule?.toMap()
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule?.toMap()
        }
        if self.specialRetainRules != nil {
            map["SpecialRetainRules"] = self.specialRetainRules?.toMap()
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.storageRule != nil {
            map["StorageRule"] = self.storageRule?.toMap()
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CrossRegionCopyInfo") && dict["CrossRegionCopyInfo"] != nil {
            var model = CreateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo()
            model.fromMap(dict["CrossRegionCopyInfo"] as! [String: Any])
            self.crossRegionCopyInfo = model
        }
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("RetainRule") && dict["RetainRule"] != nil {
            var model = CreateEnterpriseSnapshotPolicyRequest.RetainRule()
            model.fromMap(dict["RetainRule"] as! [String: Any])
            self.retainRule = model
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            var model = CreateEnterpriseSnapshotPolicyRequest.Schedule()
            model.fromMap(dict["Schedule"] as! [String: Any])
            self.schedule = model
        }
        if dict.keys.contains("SpecialRetainRules") && dict["SpecialRetainRules"] != nil {
            var model = CreateEnterpriseSnapshotPolicyRequest.SpecialRetainRules()
            model.fromMap(dict["SpecialRetainRules"] as! [String: Any])
            self.specialRetainRules = model
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("StorageRule") && dict["StorageRule"] != nil {
            var model = CreateEnterpriseSnapshotPolicyRequest.StorageRule()
            model.fromMap(dict["StorageRule"] as! [String: Any])
            self.storageRule = model
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateEnterpriseSnapshotPolicyRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateEnterpriseSnapshotPolicyRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class CreateEnterpriseSnapshotPolicyShrinkRequest : Tea.TeaModel {
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

    public var crossRegionCopyInfoShrink: String?

    public var desc: String?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var retainRuleShrink: String?

    public var scheduleShrink: String?

    public var specialRetainRulesShrink: String?

    public var state: String?

    public var storageRuleShrink: String?

    public var tag: [CreateEnterpriseSnapshotPolicyShrinkRequest.Tag]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.crossRegionCopyInfoShrink != nil {
            map["CrossRegionCopyInfo"] = self.crossRegionCopyInfoShrink!
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.retainRuleShrink != nil {
            map["RetainRule"] = self.retainRuleShrink!
        }
        if self.scheduleShrink != nil {
            map["Schedule"] = self.scheduleShrink!
        }
        if self.specialRetainRulesShrink != nil {
            map["SpecialRetainRules"] = self.specialRetainRulesShrink!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.storageRuleShrink != nil {
            map["StorageRule"] = self.storageRuleShrink!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CrossRegionCopyInfo") && dict["CrossRegionCopyInfo"] != nil {
            self.crossRegionCopyInfoShrink = dict["CrossRegionCopyInfo"] as! String
        }
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("RetainRule") && dict["RetainRule"] != nil {
            self.retainRuleShrink = dict["RetainRule"] as! String
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.scheduleShrink = dict["Schedule"] as! String
        }
        if dict.keys.contains("SpecialRetainRules") && dict["SpecialRetainRules"] != nil {
            self.specialRetainRulesShrink = dict["SpecialRetainRules"] as! String
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("StorageRule") && dict["StorageRule"] != nil {
            self.storageRuleShrink = dict["StorageRule"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateEnterpriseSnapshotPolicyShrinkRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateEnterpriseSnapshotPolicyShrinkRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class CreateEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class CreateEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEnterpriseSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDiskRequest : Tea.TeaModel {
    public var diskId: String?

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
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDiskResponseBody : Tea.TeaModel {
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

public class DeleteDiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDiskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
    }
}

public class DeleteDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class DeleteDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDiskReplicaGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDiskReplicaGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
    }
}

public class DeleteDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class DeleteDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDiskReplicaPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var policyId: String?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
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
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class DeleteEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEnterpriseSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDedicatedBlockStorageClusterDisksRequest : Tea.TeaModel {
    public var dbscId: String?

    public var maxResults: Int64?

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
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
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
        if dict.keys.contains("DbscId") && dict["DbscId"] != nil {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDedicatedBlockStorageClusterDisksResponseBody : Tea.TeaModel {
    public class Disks : Tea.TeaModel {
        public class Disk : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                        self.tagKey = dict["TagKey"] as! String
                    }
                    if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                        self.tagValue = dict["TagValue"] as! String
                    }
                }
            }
            public var attachedTime: String?

            public var bdfId: String?

            public var burstingEnabled: Bool?

            public var category: String?

            public var deleteAutoSnapshot: Bool?

            public var deleteWithInstance: Bool?

            public var description_: String?

            public var detachedTime: String?

            public var device: String?

            public var diskChargeType: String?

            public var diskId: String?

            public var diskName: String?

            public var enableAutoSnapshot: Bool?

            public var encrypted: Bool?

            public var IOPS: Int64?

            public var imageId: String?

            public var instanceId: String?

            public var KMSKeyId: String?

            public var mountInstanceNum: Int32?

            public var multiAttach: String?

            public var performanceLevel: String?

            public var portable: Bool?

            public var provisionedIops: Int64?

            public var regionId: String?

            public var size: Int32?

            public var sourceSnapshotId: String?

            public var status: String?

            public var storageClusterId: String?

            public var storageSetId: String?

            public var storageSetPartitionNumber: Int32?

            public var tags: [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk.Tags]?

            public var throughput: Int64?

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
                if self.attachedTime != nil {
                    map["AttachedTime"] = self.attachedTime!
                }
                if self.bdfId != nil {
                    map["BdfId"] = self.bdfId!
                }
                if self.burstingEnabled != nil {
                    map["BurstingEnabled"] = self.burstingEnabled!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.deleteAutoSnapshot != nil {
                    map["DeleteAutoSnapshot"] = self.deleteAutoSnapshot!
                }
                if self.deleteWithInstance != nil {
                    map["DeleteWithInstance"] = self.deleteWithInstance!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.detachedTime != nil {
                    map["DetachedTime"] = self.detachedTime!
                }
                if self.device != nil {
                    map["Device"] = self.device!
                }
                if self.diskChargeType != nil {
                    map["DiskChargeType"] = self.diskChargeType!
                }
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.diskName != nil {
                    map["DiskName"] = self.diskName!
                }
                if self.enableAutoSnapshot != nil {
                    map["EnableAutoSnapshot"] = self.enableAutoSnapshot!
                }
                if self.encrypted != nil {
                    map["Encrypted"] = self.encrypted!
                }
                if self.IOPS != nil {
                    map["IOPS"] = self.IOPS!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.KMSKeyId != nil {
                    map["KMSKeyId"] = self.KMSKeyId!
                }
                if self.mountInstanceNum != nil {
                    map["MountInstanceNum"] = self.mountInstanceNum!
                }
                if self.multiAttach != nil {
                    map["MultiAttach"] = self.multiAttach!
                }
                if self.performanceLevel != nil {
                    map["PerformanceLevel"] = self.performanceLevel!
                }
                if self.portable != nil {
                    map["Portable"] = self.portable!
                }
                if self.provisionedIops != nil {
                    map["ProvisionedIops"] = self.provisionedIops!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.sourceSnapshotId != nil {
                    map["SourceSnapshotId"] = self.sourceSnapshotId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.storageClusterId != nil {
                    map["StorageClusterId"] = self.storageClusterId!
                }
                if self.storageSetId != nil {
                    map["StorageSetId"] = self.storageSetId!
                }
                if self.storageSetPartitionNumber != nil {
                    map["StorageSetPartitionNumber"] = self.storageSetPartitionNumber!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.throughput != nil {
                    map["Throughput"] = self.throughput!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachedTime") && dict["AttachedTime"] != nil {
                    self.attachedTime = dict["AttachedTime"] as! String
                }
                if dict.keys.contains("BdfId") && dict["BdfId"] != nil {
                    self.bdfId = dict["BdfId"] as! String
                }
                if dict.keys.contains("BurstingEnabled") && dict["BurstingEnabled"] != nil {
                    self.burstingEnabled = dict["BurstingEnabled"] as! Bool
                }
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("DeleteAutoSnapshot") && dict["DeleteAutoSnapshot"] != nil {
                    self.deleteAutoSnapshot = dict["DeleteAutoSnapshot"] as! Bool
                }
                if dict.keys.contains("DeleteWithInstance") && dict["DeleteWithInstance"] != nil {
                    self.deleteWithInstance = dict["DeleteWithInstance"] as! Bool
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DetachedTime") && dict["DetachedTime"] != nil {
                    self.detachedTime = dict["DetachedTime"] as! String
                }
                if dict.keys.contains("Device") && dict["Device"] != nil {
                    self.device = dict["Device"] as! String
                }
                if dict.keys.contains("DiskChargeType") && dict["DiskChargeType"] != nil {
                    self.diskChargeType = dict["DiskChargeType"] as! String
                }
                if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                    self.diskId = dict["DiskId"] as! String
                }
                if dict.keys.contains("DiskName") && dict["DiskName"] != nil {
                    self.diskName = dict["DiskName"] as! String
                }
                if dict.keys.contains("EnableAutoSnapshot") && dict["EnableAutoSnapshot"] != nil {
                    self.enableAutoSnapshot = dict["EnableAutoSnapshot"] as! Bool
                }
                if dict.keys.contains("Encrypted") && dict["Encrypted"] != nil {
                    self.encrypted = dict["Encrypted"] as! Bool
                }
                if dict.keys.contains("IOPS") && dict["IOPS"] != nil {
                    self.IOPS = dict["IOPS"] as! Int64
                }
                if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("KMSKeyId") && dict["KMSKeyId"] != nil {
                    self.KMSKeyId = dict["KMSKeyId"] as! String
                }
                if dict.keys.contains("MountInstanceNum") && dict["MountInstanceNum"] != nil {
                    self.mountInstanceNum = dict["MountInstanceNum"] as! Int32
                }
                if dict.keys.contains("MultiAttach") && dict["MultiAttach"] != nil {
                    self.multiAttach = dict["MultiAttach"] as! String
                }
                if dict.keys.contains("PerformanceLevel") && dict["PerformanceLevel"] != nil {
                    self.performanceLevel = dict["PerformanceLevel"] as! String
                }
                if dict.keys.contains("Portable") && dict["Portable"] != nil {
                    self.portable = dict["Portable"] as! Bool
                }
                if dict.keys.contains("ProvisionedIops") && dict["ProvisionedIops"] != nil {
                    self.provisionedIops = dict["ProvisionedIops"] as! Int64
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Size") && dict["Size"] != nil {
                    self.size = dict["Size"] as! Int32
                }
                if dict.keys.contains("SourceSnapshotId") && dict["SourceSnapshotId"] != nil {
                    self.sourceSnapshotId = dict["SourceSnapshotId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StorageClusterId") && dict["StorageClusterId"] != nil {
                    self.storageClusterId = dict["StorageClusterId"] as! String
                }
                if dict.keys.contains("StorageSetId") && dict["StorageSetId"] != nil {
                    self.storageSetId = dict["StorageSetId"] as! String
                }
                if dict.keys.contains("StorageSetPartitionNumber") && dict["StorageSetPartitionNumber"] != nil {
                    self.storageSetPartitionNumber = dict["StorageSetPartitionNumber"] as! Int32
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var tmp : [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("Throughput") && dict["Throughput"] != nil {
                    self.throughput = dict["Throughput"] as! Int64
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var disk: [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.disk != nil {
                var tmp : [Any] = []
                for k in self.disk! {
                    tmp.append(k.toMap())
                }
                map["Disk"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Disk") && dict["Disk"] != nil {
                var tmp : [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk] = []
                for v in dict["Disk"] as! [Any] {
                    var model = DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.disk = tmp
            }
        }
    }
    public var disks: DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.disks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disks != nil {
            map["Disks"] = self.disks?.toMap()
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Disks") && dict["Disks"] != nil {
            var model = DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks()
            model.fromMap(dict["Disks"] as! [String: Any])
            self.disks = model
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDedicatedBlockStorageClusterDisksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDedicatedBlockStorageClusterDisksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDedicatedBlockStorageClusterDisksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDedicatedBlockStorageClustersRequest : Tea.TeaModel {
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
    public var azoneId: String?

    public var category: String?

    public var clientToken: String?

    public var dedicatedBlockStorageClusterId: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: [String]?

    public var tag: [DescribeDedicatedBlockStorageClustersRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.azoneId != nil {
            map["AzoneId"] = self.azoneId!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedicatedBlockStorageClusterId != nil {
            map["DedicatedBlockStorageClusterId"] = self.dedicatedBlockStorageClusterId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AzoneId") && dict["AzoneId"] != nil {
            self.azoneId = dict["AzoneId"] as! String
        }
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedicatedBlockStorageClusterId") && dict["DedicatedBlockStorageClusterId"] != nil {
            self.dedicatedBlockStorageClusterId = dict["DedicatedBlockStorageClusterId"] as! [String]
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! [String]
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeDedicatedBlockStorageClustersRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeDedicatedBlockStorageClustersRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeDedicatedBlockStorageClustersResponseBody : Tea.TeaModel {
    public class DedicatedBlockStorageClusters : Tea.TeaModel {
        public class DedicatedBlockStorageClusterCapacity : Tea.TeaModel {
            public var availableCapacity: Int64?

            public var availableDeviceCapacity: Int64?

            public var availableSpaceCapacity: Double?

            public var clusterAvailableCapacity: Int64?

            public var clusterDeliveryCapacity: Int64?

            public var deliveryCapacity: Int64?

            public var totalCapacity: Int64?

            public var totalDeviceCapacity: Int64?

            public var totalSpaceCapacity: Int64?

            public var usedCapacity: Int64?

            public var usedDeviceCapacity: Int64?

            public var usedSpaceCapacity: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableCapacity != nil {
                    map["AvailableCapacity"] = self.availableCapacity!
                }
                if self.availableDeviceCapacity != nil {
                    map["AvailableDeviceCapacity"] = self.availableDeviceCapacity!
                }
                if self.availableSpaceCapacity != nil {
                    map["AvailableSpaceCapacity"] = self.availableSpaceCapacity!
                }
                if self.clusterAvailableCapacity != nil {
                    map["ClusterAvailableCapacity"] = self.clusterAvailableCapacity!
                }
                if self.clusterDeliveryCapacity != nil {
                    map["ClusterDeliveryCapacity"] = self.clusterDeliveryCapacity!
                }
                if self.deliveryCapacity != nil {
                    map["DeliveryCapacity"] = self.deliveryCapacity!
                }
                if self.totalCapacity != nil {
                    map["TotalCapacity"] = self.totalCapacity!
                }
                if self.totalDeviceCapacity != nil {
                    map["TotalDeviceCapacity"] = self.totalDeviceCapacity!
                }
                if self.totalSpaceCapacity != nil {
                    map["TotalSpaceCapacity"] = self.totalSpaceCapacity!
                }
                if self.usedCapacity != nil {
                    map["UsedCapacity"] = self.usedCapacity!
                }
                if self.usedDeviceCapacity != nil {
                    map["UsedDeviceCapacity"] = self.usedDeviceCapacity!
                }
                if self.usedSpaceCapacity != nil {
                    map["UsedSpaceCapacity"] = self.usedSpaceCapacity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvailableCapacity") && dict["AvailableCapacity"] != nil {
                    self.availableCapacity = dict["AvailableCapacity"] as! Int64
                }
                if dict.keys.contains("AvailableDeviceCapacity") && dict["AvailableDeviceCapacity"] != nil {
                    self.availableDeviceCapacity = dict["AvailableDeviceCapacity"] as! Int64
                }
                if dict.keys.contains("AvailableSpaceCapacity") && dict["AvailableSpaceCapacity"] != nil {
                    self.availableSpaceCapacity = dict["AvailableSpaceCapacity"] as! Double
                }
                if dict.keys.contains("ClusterAvailableCapacity") && dict["ClusterAvailableCapacity"] != nil {
                    self.clusterAvailableCapacity = dict["ClusterAvailableCapacity"] as! Int64
                }
                if dict.keys.contains("ClusterDeliveryCapacity") && dict["ClusterDeliveryCapacity"] != nil {
                    self.clusterDeliveryCapacity = dict["ClusterDeliveryCapacity"] as! Int64
                }
                if dict.keys.contains("DeliveryCapacity") && dict["DeliveryCapacity"] != nil {
                    self.deliveryCapacity = dict["DeliveryCapacity"] as! Int64
                }
                if dict.keys.contains("TotalCapacity") && dict["TotalCapacity"] != nil {
                    self.totalCapacity = dict["TotalCapacity"] as! Int64
                }
                if dict.keys.contains("TotalDeviceCapacity") && dict["TotalDeviceCapacity"] != nil {
                    self.totalDeviceCapacity = dict["TotalDeviceCapacity"] as! Int64
                }
                if dict.keys.contains("TotalSpaceCapacity") && dict["TotalSpaceCapacity"] != nil {
                    self.totalSpaceCapacity = dict["TotalSpaceCapacity"] as! Int64
                }
                if dict.keys.contains("UsedCapacity") && dict["UsedCapacity"] != nil {
                    self.usedCapacity = dict["UsedCapacity"] as! Int64
                }
                if dict.keys.contains("UsedDeviceCapacity") && dict["UsedDeviceCapacity"] != nil {
                    self.usedDeviceCapacity = dict["UsedDeviceCapacity"] as! Int64
                }
                if dict.keys.contains("UsedSpaceCapacity") && dict["UsedSpaceCapacity"] != nil {
                    self.usedSpaceCapacity = dict["UsedSpaceCapacity"] as! Double
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var aliUid: String?

        public var category: String?

        public var createTime: String?

        public var dedicatedBlockStorageClusterCapacity: DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.DedicatedBlockStorageClusterCapacity?

        public var dedicatedBlockStorageClusterId: String?

        public var dedicatedBlockStorageClusterName: String?

        public var description_: String?

        public var enableThinProvision: Bool?

        public var expiredTime: String?

        public var performanceLevel: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var sizeOverSoldRatio: Double?

        public var status: String?

        public var storageDomain: String?

        public var supportedCategory: String?

        public var tags: [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.Tags]?

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
            try self.dedicatedBlockStorageClusterCapacity?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dedicatedBlockStorageClusterCapacity != nil {
                map["DedicatedBlockStorageClusterCapacity"] = self.dedicatedBlockStorageClusterCapacity?.toMap()
            }
            if self.dedicatedBlockStorageClusterId != nil {
                map["DedicatedBlockStorageClusterId"] = self.dedicatedBlockStorageClusterId!
            }
            if self.dedicatedBlockStorageClusterName != nil {
                map["DedicatedBlockStorageClusterName"] = self.dedicatedBlockStorageClusterName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enableThinProvision != nil {
                map["EnableThinProvision"] = self.enableThinProvision!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sizeOverSoldRatio != nil {
                map["SizeOverSoldRatio"] = self.sizeOverSoldRatio!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageDomain != nil {
                map["StorageDomain"] = self.storageDomain!
            }
            if self.supportedCategory != nil {
                map["SupportedCategory"] = self.supportedCategory!
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
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DedicatedBlockStorageClusterCapacity") && dict["DedicatedBlockStorageClusterCapacity"] != nil {
                var model = DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.DedicatedBlockStorageClusterCapacity()
                model.fromMap(dict["DedicatedBlockStorageClusterCapacity"] as! [String: Any])
                self.dedicatedBlockStorageClusterCapacity = model
            }
            if dict.keys.contains("DedicatedBlockStorageClusterId") && dict["DedicatedBlockStorageClusterId"] != nil {
                self.dedicatedBlockStorageClusterId = dict["DedicatedBlockStorageClusterId"] as! String
            }
            if dict.keys.contains("DedicatedBlockStorageClusterName") && dict["DedicatedBlockStorageClusterName"] != nil {
                self.dedicatedBlockStorageClusterName = dict["DedicatedBlockStorageClusterName"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EnableThinProvision") && dict["EnableThinProvision"] != nil {
                self.enableThinProvision = dict["EnableThinProvision"] as! Bool
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("PerformanceLevel") && dict["PerformanceLevel"] != nil {
                self.performanceLevel = dict["PerformanceLevel"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SizeOverSoldRatio") && dict["SizeOverSoldRatio"] != nil {
                self.sizeOverSoldRatio = dict["SizeOverSoldRatio"] as! Double
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StorageDomain") && dict["StorageDomain"] != nil {
                self.storageDomain = dict["StorageDomain"] as! String
            }
            if dict.keys.contains("SupportedCategory") && dict["SupportedCategory"] != nil {
                self.supportedCategory = dict["SupportedCategory"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var dedicatedBlockStorageClusters: [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters]?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.dedicatedBlockStorageClusters != nil {
            var tmp : [Any] = []
            for k in self.dedicatedBlockStorageClusters! {
                tmp.append(k.toMap())
            }
            map["DedicatedBlockStorageClusters"] = tmp
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedBlockStorageClusters") && dict["DedicatedBlockStorageClusters"] != nil {
            var tmp : [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters] = []
            for v in dict["DedicatedBlockStorageClusters"] as! [Any] {
                var model = DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dedicatedBlockStorageClusters = tmp
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDedicatedBlockStorageClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDedicatedBlockStorageClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDedicatedBlockStorageClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiskEventsRequest : Tea.TeaModel {
    public var diskCategory: String?

    public var diskId: String?

    public var endTime: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var regionId: String?

    public var startTime: String?

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
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
        }
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskCategory") && dict["DiskCategory"] != nil {
            self.diskCategory = dict["DiskCategory"] as! String
        }
        if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeDiskEventsResponseBody : Tea.TeaModel {
    public class DiskEvents : Tea.TeaModel {
        public var description_: String?

        public var diskId: String?

        public var recommendAction: String?

        public var regionId: String?

        public var status: String?

        public var timestamp: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.recommendAction != nil {
                map["RecommendAction"] = self.recommendAction!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("RecommendAction") && dict["RecommendAction"] != nil {
                self.recommendAction = dict["RecommendAction"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var diskEvents: [DescribeDiskEventsResponseBody.DiskEvents]?

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
        if self.diskEvents != nil {
            var tmp : [Any] = []
            for k in self.diskEvents! {
                tmp.append(k.toMap())
            }
            map["DiskEvents"] = tmp
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
        if dict.keys.contains("DiskEvents") && dict["DiskEvents"] != nil {
            var tmp : [DescribeDiskEventsResponseBody.DiskEvents] = []
            for v in dict["DiskEvents"] as! [Any] {
                var model = DescribeDiskEventsResponseBody.DiskEvents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.diskEvents = tmp
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDiskEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDiskEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiskMonitorDataRequest : Tea.TeaModel {
    public var diskId: String?

    public var endTime: String?

    public var period: Int64?

    public var regionId: String?

    public var startTime: String?

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
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeDiskMonitorDataResponseBody : Tea.TeaModel {
    public class MonitorData : Tea.TeaModel {
        public var BPSPercent: Int64?

        public var burstIOCount: Int64?

        public var diskId: String?

        public var IOPSPercent: Int64?

        public var readBPS: Int64?

        public var readBlockSize: Int64?

        public var readIOPS: Int64?

        public var readLatency: Int64?

        public var timestamp: String?

        public var writeBPS: Int64?

        public var writeBlockSize: Int64?

        public var writeIOPS: Int64?

        public var writeLatency: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.BPSPercent != nil {
                map["BPSPercent"] = self.BPSPercent!
            }
            if self.burstIOCount != nil {
                map["BurstIOCount"] = self.burstIOCount!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.IOPSPercent != nil {
                map["IOPSPercent"] = self.IOPSPercent!
            }
            if self.readBPS != nil {
                map["ReadBPS"] = self.readBPS!
            }
            if self.readBlockSize != nil {
                map["ReadBlockSize"] = self.readBlockSize!
            }
            if self.readIOPS != nil {
                map["ReadIOPS"] = self.readIOPS!
            }
            if self.readLatency != nil {
                map["ReadLatency"] = self.readLatency!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.writeBPS != nil {
                map["WriteBPS"] = self.writeBPS!
            }
            if self.writeBlockSize != nil {
                map["WriteBlockSize"] = self.writeBlockSize!
            }
            if self.writeIOPS != nil {
                map["WriteIOPS"] = self.writeIOPS!
            }
            if self.writeLatency != nil {
                map["WriteLatency"] = self.writeLatency!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BPSPercent") && dict["BPSPercent"] != nil {
                self.BPSPercent = dict["BPSPercent"] as! Int64
            }
            if dict.keys.contains("BurstIOCount") && dict["BurstIOCount"] != nil {
                self.burstIOCount = dict["BurstIOCount"] as! Int64
            }
            if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("IOPSPercent") && dict["IOPSPercent"] != nil {
                self.IOPSPercent = dict["IOPSPercent"] as! Int64
            }
            if dict.keys.contains("ReadBPS") && dict["ReadBPS"] != nil {
                self.readBPS = dict["ReadBPS"] as! Int64
            }
            if dict.keys.contains("ReadBlockSize") && dict["ReadBlockSize"] != nil {
                self.readBlockSize = dict["ReadBlockSize"] as! Int64
            }
            if dict.keys.contains("ReadIOPS") && dict["ReadIOPS"] != nil {
                self.readIOPS = dict["ReadIOPS"] as! Int64
            }
            if dict.keys.contains("ReadLatency") && dict["ReadLatency"] != nil {
                self.readLatency = dict["ReadLatency"] as! Int64
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! String
            }
            if dict.keys.contains("WriteBPS") && dict["WriteBPS"] != nil {
                self.writeBPS = dict["WriteBPS"] as! Int64
            }
            if dict.keys.contains("WriteBlockSize") && dict["WriteBlockSize"] != nil {
                self.writeBlockSize = dict["WriteBlockSize"] as! Int64
            }
            if dict.keys.contains("WriteIOPS") && dict["WriteIOPS"] != nil {
                self.writeIOPS = dict["WriteIOPS"] as! Int64
            }
            if dict.keys.contains("WriteLatency") && dict["WriteLatency"] != nil {
                self.writeLatency = dict["WriteLatency"] as! Int64
            }
        }
    }
    public var monitorData: [DescribeDiskMonitorDataResponseBody.MonitorData]?

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
        if self.monitorData != nil {
            var tmp : [Any] = []
            for k in self.monitorData! {
                tmp.append(k.toMap())
            }
            map["MonitorData"] = tmp
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
        if dict.keys.contains("MonitorData") && dict["MonitorData"] != nil {
            var tmp : [DescribeDiskMonitorDataResponseBody.MonitorData] = []
            for v in dict["MonitorData"] as! [Any] {
                var model = DescribeDiskMonitorDataResponseBody.MonitorData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.monitorData = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDiskMonitorDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskMonitorDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDiskMonitorDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiskMonitorDataListRequest : Tea.TeaModel {
    public var diskIds: String?

    public var endTime: String?

    public var maxResults: String?

    public var nextToken: String?

    public var regionId: String?

    public var startTime: String?

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
        if self.diskIds != nil {
            map["DiskIds"] = self.diskIds!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskIds") && dict["DiskIds"] != nil {
            self.diskIds = dict["DiskIds"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeDiskMonitorDataListResponseBody : Tea.TeaModel {
    public class MonitorData : Tea.TeaModel {
        public var burstIOCount: Int64?

        public var diskId: String?

        public var timestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.burstIOCount != nil {
                map["BurstIOCount"] = self.burstIOCount!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BurstIOCount") && dict["BurstIOCount"] != nil {
                self.burstIOCount = dict["BurstIOCount"] as! Int64
            }
            if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! String
            }
        }
    }
    public var monitorData: [DescribeDiskMonitorDataListResponseBody.MonitorData]?

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
        if self.monitorData != nil {
            var tmp : [Any] = []
            for k in self.monitorData! {
                tmp.append(k.toMap())
            }
            map["MonitorData"] = tmp
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
        if dict.keys.contains("MonitorData") && dict["MonitorData"] != nil {
            var tmp : [DescribeDiskMonitorDataListResponseBody.MonitorData] = []
            for v in dict["MonitorData"] as! [Any] {
                var model = DescribeDiskMonitorDataListResponseBody.MonitorData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.monitorData = tmp
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDiskMonitorDataListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskMonitorDataListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDiskMonitorDataListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiskReplicaGroupsRequest : Tea.TeaModel {
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
    public var groupIds: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var site: String?

    public var tag: [DescribeDiskReplicaGroupsRequest.Tag]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.site != nil {
            map["Site"] = self.site!
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
        if dict.keys.contains("GroupIds") && dict["GroupIds"] != nil {
            self.groupIds = dict["GroupIds"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Site") && dict["Site"] != nil {
            self.site = dict["Site"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeDiskReplicaGroupsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeDiskReplicaGroupsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeDiskReplicaGroupsResponseBody : Tea.TeaModel {
    public class ReplicaGroups : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var bandwidth: Int64?

        public var description_: String?

        public var destinationRegionId: String?

        public var destinationZoneId: String?

        public var groupName: String?

        public var lastRecoverPoint: Int64?

        public var pairIds: [[UInt8]]?

        public var pairNumber: Int64?

        public var primaryRegion: String?

        public var primaryZone: String?

        public var RPO: Int64?

        public var replicaGroupId: String?

        public var resourceGroupId: String?

        public var site: String?

        public var sourceRegionId: String?

        public var sourceZoneId: String?

        public var standbyRegion: String?

        public var standbyZone: String?

        public var status: String?

        public var tags: [DescribeDiskReplicaGroupsResponseBody.ReplicaGroups.Tags]?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationRegionId != nil {
                map["DestinationRegionId"] = self.destinationRegionId!
            }
            if self.destinationZoneId != nil {
                map["DestinationZoneId"] = self.destinationZoneId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.lastRecoverPoint != nil {
                map["LastRecoverPoint"] = self.lastRecoverPoint!
            }
            if self.pairIds != nil {
                map["PairIds"] = self.pairIds!
            }
            if self.pairNumber != nil {
                map["PairNumber"] = self.pairNumber!
            }
            if self.primaryRegion != nil {
                map["PrimaryRegion"] = self.primaryRegion!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.RPO != nil {
                map["RPO"] = self.RPO!
            }
            if self.replicaGroupId != nil {
                map["ReplicaGroupId"] = self.replicaGroupId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            if self.sourceRegionId != nil {
                map["SourceRegionId"] = self.sourceRegionId!
            }
            if self.sourceZoneId != nil {
                map["SourceZoneId"] = self.sourceZoneId!
            }
            if self.standbyRegion != nil {
                map["StandbyRegion"] = self.standbyRegion!
            }
            if self.standbyZone != nil {
                map["StandbyZone"] = self.standbyZone!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
                self.bandwidth = dict["Bandwidth"] as! Int64
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationRegionId") && dict["DestinationRegionId"] != nil {
                self.destinationRegionId = dict["DestinationRegionId"] as! String
            }
            if dict.keys.contains("DestinationZoneId") && dict["DestinationZoneId"] != nil {
                self.destinationZoneId = dict["DestinationZoneId"] as! String
            }
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("LastRecoverPoint") && dict["LastRecoverPoint"] != nil {
                self.lastRecoverPoint = dict["LastRecoverPoint"] as! Int64
            }
            if dict.keys.contains("PairIds") && dict["PairIds"] != nil {
                self.pairIds = dict["PairIds"] as! [[UInt8]]
            }
            if dict.keys.contains("PairNumber") && dict["PairNumber"] != nil {
                self.pairNumber = dict["PairNumber"] as! Int64
            }
            if dict.keys.contains("PrimaryRegion") && dict["PrimaryRegion"] != nil {
                self.primaryRegion = dict["PrimaryRegion"] as! String
            }
            if dict.keys.contains("PrimaryZone") && dict["PrimaryZone"] != nil {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("RPO") && dict["RPO"] != nil {
                self.RPO = dict["RPO"] as! Int64
            }
            if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
                self.replicaGroupId = dict["ReplicaGroupId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Site") && dict["Site"] != nil {
                self.site = dict["Site"] as! String
            }
            if dict.keys.contains("SourceRegionId") && dict["SourceRegionId"] != nil {
                self.sourceRegionId = dict["SourceRegionId"] as! String
            }
            if dict.keys.contains("SourceZoneId") && dict["SourceZoneId"] != nil {
                self.sourceZoneId = dict["SourceZoneId"] as! String
            }
            if dict.keys.contains("StandbyRegion") && dict["StandbyRegion"] != nil {
                self.standbyRegion = dict["StandbyRegion"] as! String
            }
            if dict.keys.contains("StandbyZone") && dict["StandbyZone"] != nil {
                self.standbyZone = dict["StandbyZone"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [DescribeDiskReplicaGroupsResponseBody.ReplicaGroups.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeDiskReplicaGroupsResponseBody.ReplicaGroups.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var replicaGroups: [DescribeDiskReplicaGroupsResponseBody.ReplicaGroups]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.replicaGroups != nil {
            var tmp : [Any] = []
            for k in self.replicaGroups! {
                tmp.append(k.toMap())
            }
            map["ReplicaGroups"] = tmp
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
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReplicaGroups") && dict["ReplicaGroups"] != nil {
            var tmp : [DescribeDiskReplicaGroupsResponseBody.ReplicaGroups] = []
            for v in dict["ReplicaGroups"] as! [Any] {
                var model = DescribeDiskReplicaGroupsResponseBody.ReplicaGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.replicaGroups = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDiskReplicaGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskReplicaGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDiskReplicaGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiskReplicaPairProgressRequest : Tea.TeaModel {
    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
    }
}

public class DescribeDiskReplicaPairProgressResponseBody : Tea.TeaModel {
    public var progress: Int32?

    public var recoverPoint: Int64?

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
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.recoverPoint != nil {
            map["RecoverPoint"] = self.recoverPoint!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Progress") && dict["Progress"] != nil {
            self.progress = dict["Progress"] as! Int32
        }
        if dict.keys.contains("RecoverPoint") && dict["RecoverPoint"] != nil {
            self.recoverPoint = dict["RecoverPoint"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDiskReplicaPairProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskReplicaPairProgressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDiskReplicaPairProgressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiskReplicaPairsRequest : Tea.TeaModel {
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
    public var maxResults: Int64?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pairIds: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public var resourceGroupId: String?

    public var site: String?

    public var tag: [DescribeDiskReplicaPairsRequest.Tag]?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pairIds != nil {
            map["PairIds"] = self.pairIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.site != nil {
            map["Site"] = self.site!
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
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PairIds") && dict["PairIds"] != nil {
            self.pairIds = dict["PairIds"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Site") && dict["Site"] != nil {
            self.site = dict["Site"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeDiskReplicaPairsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeDiskReplicaPairsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeDiskReplicaPairsResponseBody : Tea.TeaModel {
    public class ReplicaPairs : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var bandwidth: Int64?

        public var chargeType: String?

        public var createTime: Int64?

        public var description_: String?

        public var destinationDiskId: String?

        public var destinationRegion: String?

        public var destinationZoneId: String?

        public var expiredTime: Int64?

        public var lastRecoverPoint: Int64?

        public var pairName: String?

        public var primaryRegion: String?

        public var primaryZone: String?

        public var RPO: Int64?

        public var replicaGroupId: String?

        public var replicaGroupName: String?

        public var replicaPairId: String?

        public var resourceGroupId: String?

        public var site: String?

        public var sourceDiskId: String?

        public var sourceRegion: String?

        public var sourceZoneId: String?

        public var standbyRegion: String?

        public var standbyZone: String?

        public var status: String?

        public var statusMessage: String?

        public var tags: [DescribeDiskReplicaPairsResponseBody.ReplicaPairs.Tags]?

        public override init() {
            super.init()
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
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.destinationDiskId != nil {
                map["DestinationDiskId"] = self.destinationDiskId!
            }
            if self.destinationRegion != nil {
                map["DestinationRegion"] = self.destinationRegion!
            }
            if self.destinationZoneId != nil {
                map["DestinationZoneId"] = self.destinationZoneId!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.lastRecoverPoint != nil {
                map["LastRecoverPoint"] = self.lastRecoverPoint!
            }
            if self.pairName != nil {
                map["PairName"] = self.pairName!
            }
            if self.primaryRegion != nil {
                map["PrimaryRegion"] = self.primaryRegion!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.RPO != nil {
                map["RPO"] = self.RPO!
            }
            if self.replicaGroupId != nil {
                map["ReplicaGroupId"] = self.replicaGroupId!
            }
            if self.replicaGroupName != nil {
                map["ReplicaGroupName"] = self.replicaGroupName!
            }
            if self.replicaPairId != nil {
                map["ReplicaPairId"] = self.replicaPairId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            if self.sourceDiskId != nil {
                map["SourceDiskId"] = self.sourceDiskId!
            }
            if self.sourceRegion != nil {
                map["SourceRegion"] = self.sourceRegion!
            }
            if self.sourceZoneId != nil {
                map["SourceZoneId"] = self.sourceZoneId!
            }
            if self.standbyRegion != nil {
                map["StandbyRegion"] = self.standbyRegion!
            }
            if self.standbyZone != nil {
                map["StandbyZone"] = self.standbyZone!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
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
            if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
                self.bandwidth = dict["Bandwidth"] as! Int64
            }
            if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationDiskId") && dict["DestinationDiskId"] != nil {
                self.destinationDiskId = dict["DestinationDiskId"] as! String
            }
            if dict.keys.contains("DestinationRegion") && dict["DestinationRegion"] != nil {
                self.destinationRegion = dict["DestinationRegion"] as! String
            }
            if dict.keys.contains("DestinationZoneId") && dict["DestinationZoneId"] != nil {
                self.destinationZoneId = dict["DestinationZoneId"] as! String
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("LastRecoverPoint") && dict["LastRecoverPoint"] != nil {
                self.lastRecoverPoint = dict["LastRecoverPoint"] as! Int64
            }
            if dict.keys.contains("PairName") && dict["PairName"] != nil {
                self.pairName = dict["PairName"] as! String
            }
            if dict.keys.contains("PrimaryRegion") && dict["PrimaryRegion"] != nil {
                self.primaryRegion = dict["PrimaryRegion"] as! String
            }
            if dict.keys.contains("PrimaryZone") && dict["PrimaryZone"] != nil {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("RPO") && dict["RPO"] != nil {
                self.RPO = dict["RPO"] as! Int64
            }
            if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
                self.replicaGroupId = dict["ReplicaGroupId"] as! String
            }
            if dict.keys.contains("ReplicaGroupName") && dict["ReplicaGroupName"] != nil {
                self.replicaGroupName = dict["ReplicaGroupName"] as! String
            }
            if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
                self.replicaPairId = dict["ReplicaPairId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Site") && dict["Site"] != nil {
                self.site = dict["Site"] as! String
            }
            if dict.keys.contains("SourceDiskId") && dict["SourceDiskId"] != nil {
                self.sourceDiskId = dict["SourceDiskId"] as! String
            }
            if dict.keys.contains("SourceRegion") && dict["SourceRegion"] != nil {
                self.sourceRegion = dict["SourceRegion"] as! String
            }
            if dict.keys.contains("SourceZoneId") && dict["SourceZoneId"] != nil {
                self.sourceZoneId = dict["SourceZoneId"] as! String
            }
            if dict.keys.contains("StandbyRegion") && dict["StandbyRegion"] != nil {
                self.standbyRegion = dict["StandbyRegion"] as! String
            }
            if dict.keys.contains("StandbyZone") && dict["StandbyZone"] != nil {
                self.standbyZone = dict["StandbyZone"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [DescribeDiskReplicaPairsResponseBody.ReplicaPairs.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeDiskReplicaPairsResponseBody.ReplicaPairs.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var replicaPairs: [DescribeDiskReplicaPairsResponseBody.ReplicaPairs]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.replicaPairs != nil {
            var tmp : [Any] = []
            for k in self.replicaPairs! {
                tmp.append(k.toMap())
            }
            map["ReplicaPairs"] = tmp
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
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReplicaPairs") && dict["ReplicaPairs"] != nil {
            var tmp : [DescribeDiskReplicaPairsResponseBody.ReplicaPairs] = []
            for v in dict["ReplicaPairs"] as! [Any] {
                var model = DescribeDiskReplicaPairsResponseBody.ReplicaPairs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.replicaPairs = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDiskReplicaPairsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskReplicaPairsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDiskReplicaPairsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDisksRequest : Tea.TeaModel {
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
    public var category: String?

    public var diskIds: String?

    public var diskName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tag: [DescribeDisksRequest.Tag]?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.diskIds != nil {
            map["DiskIds"] = self.diskIds!
        }
        if self.diskName != nil {
            map["DiskName"] = self.diskName!
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
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("DiskIds") && dict["DiskIds"] != nil {
            self.diskIds = dict["DiskIds"] as! String
        }
        if dict.keys.contains("DiskName") && dict["DiskName"] != nil {
            self.diskName = dict["DiskName"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeDisksRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeDisksRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeDisksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AccessAuthorization : Tea.TeaModel {
            public class Ecs : Tea.TeaModel {
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
                    if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                }
            }
            public class Pod : Tea.TeaModel {
                public var clusterId: String?

                public var podId: String?

                public override init() {
                    super.init()
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
                    if self.podId != nil {
                        map["PodId"] = self.podId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                        self.clusterId = dict["ClusterId"] as! String
                    }
                    if dict.keys.contains("PodId") && dict["PodId"] != nil {
                        self.podId = dict["PodId"] as! String
                    }
                }
            }
            public var accessToken: String?

            public var ecs: DescribeDisksResponseBody.Data.AccessAuthorization.Ecs?

            public var pod: DescribeDisksResponseBody.Data.AccessAuthorization.Pod?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ecs?.validate()
                try self.pod?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessToken != nil {
                    map["AccessToken"] = self.accessToken!
                }
                if self.ecs != nil {
                    map["Ecs"] = self.ecs?.toMap()
                }
                if self.pod != nil {
                    map["Pod"] = self.pod?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessToken") && dict["AccessToken"] != nil {
                    self.accessToken = dict["AccessToken"] as! String
                }
                if dict.keys.contains("Ecs") && dict["Ecs"] != nil {
                    var model = DescribeDisksResponseBody.Data.AccessAuthorization.Ecs()
                    model.fromMap(dict["Ecs"] as! [String: Any])
                    self.ecs = model
                }
                if dict.keys.contains("Pod") && dict["Pod"] != nil {
                    var model = DescribeDisksResponseBody.Data.AccessAuthorization.Pod()
                    model.fromMap(dict["Pod"] as! [String: Any])
                    self.pod = model
                }
            }
        }
        public class Attachments : Tea.TeaModel {
            public var attachedTime: String?

            public var instanceId: String?

            public var namespaceId: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachedTime != nil {
                    map["AttachedTime"] = self.attachedTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.namespaceId != nil {
                    map["NamespaceId"] = self.namespaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachedTime") && dict["AttachedTime"] != nil {
                    self.attachedTime = dict["AttachedTime"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("NamespaceId") && dict["NamespaceId"] != nil {
                    self.namespaceId = dict["NamespaceId"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var accessAuthorization: [DescribeDisksResponseBody.Data.AccessAuthorization]?

        public var attachedTime: String?

        public var attachments: [DescribeDisksResponseBody.Data.Attachments]?

        public var burstingEnabled: Bool?

        public var category: String?

        public var creationTime: String?

        public var description_: String?

        public var detachedTime: String?

        public var deviceNguid: String?

        public var diskId: String?

        public var diskName: String?

        public var encrypted: Bool?

        public var iops: Int64?

        public var iopsRead: Int64?

        public var iopsWrite: Int64?

        public var kmsKeyId: String?

        public var modifyAt: String?

        public var performanceLevel: String?

        public var provisionedIops: Int64?

        public var regionId: String?

        public var resourceGroupId: String?

        public var size: Int64?

        public var status: String?

        public var tags: [DescribeDisksResponseBody.Data.Tags]?

        public var throughput: Int64?

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
            if self.accessAuthorization != nil {
                var tmp : [Any] = []
                for k in self.accessAuthorization! {
                    tmp.append(k.toMap())
                }
                map["AccessAuthorization"] = tmp
            }
            if self.attachedTime != nil {
                map["AttachedTime"] = self.attachedTime!
            }
            if self.attachments != nil {
                var tmp : [Any] = []
                for k in self.attachments! {
                    tmp.append(k.toMap())
                }
                map["Attachments"] = tmp
            }
            if self.burstingEnabled != nil {
                map["BurstingEnabled"] = self.burstingEnabled!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.detachedTime != nil {
                map["DetachedTime"] = self.detachedTime!
            }
            if self.deviceNguid != nil {
                map["DeviceNguid"] = self.deviceNguid!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.diskName != nil {
                map["DiskName"] = self.diskName!
            }
            if self.encrypted != nil {
                map["Encrypted"] = self.encrypted!
            }
            if self.iops != nil {
                map["Iops"] = self.iops!
            }
            if self.iopsRead != nil {
                map["IopsRead"] = self.iopsRead!
            }
            if self.iopsWrite != nil {
                map["IopsWrite"] = self.iopsWrite!
            }
            if self.kmsKeyId != nil {
                map["KmsKeyId"] = self.kmsKeyId!
            }
            if self.modifyAt != nil {
                map["ModifyAt"] = self.modifyAt!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.provisionedIops != nil {
                map["ProvisionedIops"] = self.provisionedIops!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.size != nil {
                map["Size"] = self.size!
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
            if self.throughput != nil {
                map["Throughput"] = self.throughput!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessAuthorization") && dict["AccessAuthorization"] != nil {
                var tmp : [DescribeDisksResponseBody.Data.AccessAuthorization] = []
                for v in dict["AccessAuthorization"] as! [Any] {
                    var model = DescribeDisksResponseBody.Data.AccessAuthorization()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.accessAuthorization = tmp
            }
            if dict.keys.contains("AttachedTime") && dict["AttachedTime"] != nil {
                self.attachedTime = dict["AttachedTime"] as! String
            }
            if dict.keys.contains("Attachments") && dict["Attachments"] != nil {
                var tmp : [DescribeDisksResponseBody.Data.Attachments] = []
                for v in dict["Attachments"] as! [Any] {
                    var model = DescribeDisksResponseBody.Data.Attachments()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.attachments = tmp
            }
            if dict.keys.contains("BurstingEnabled") && dict["BurstingEnabled"] != nil {
                self.burstingEnabled = dict["BurstingEnabled"] as! Bool
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DetachedTime") && dict["DetachedTime"] != nil {
                self.detachedTime = dict["DetachedTime"] as! String
            }
            if dict.keys.contains("DeviceNguid") && dict["DeviceNguid"] != nil {
                self.deviceNguid = dict["DeviceNguid"] as! String
            }
            if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("DiskName") && dict["DiskName"] != nil {
                self.diskName = dict["DiskName"] as! String
            }
            if dict.keys.contains("Encrypted") && dict["Encrypted"] != nil {
                self.encrypted = dict["Encrypted"] as! Bool
            }
            if dict.keys.contains("Iops") && dict["Iops"] != nil {
                self.iops = dict["Iops"] as! Int64
            }
            if dict.keys.contains("IopsRead") && dict["IopsRead"] != nil {
                self.iopsRead = dict["IopsRead"] as! Int64
            }
            if dict.keys.contains("IopsWrite") && dict["IopsWrite"] != nil {
                self.iopsWrite = dict["IopsWrite"] as! Int64
            }
            if dict.keys.contains("KmsKeyId") && dict["KmsKeyId"] != nil {
                self.kmsKeyId = dict["KmsKeyId"] as! String
            }
            if dict.keys.contains("ModifyAt") && dict["ModifyAt"] != nil {
                self.modifyAt = dict["ModifyAt"] as! String
            }
            if dict.keys.contains("PerformanceLevel") && dict["PerformanceLevel"] != nil {
                self.performanceLevel = dict["PerformanceLevel"] as! String
            }
            if dict.keys.contains("ProvisionedIops") && dict["ProvisionedIops"] != nil {
                self.provisionedIops = dict["ProvisionedIops"] as! Int64
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [DescribeDisksResponseBody.Data.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeDisksResponseBody.Data.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Throughput") && dict["Throughput"] != nil {
                self.throughput = dict["Throughput"] as! Int64
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var data: [DescribeDisksResponseBody.Data]?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeDisksResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeDisksResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDisksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDisksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDisksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
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

    public var diskIds: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyIds: [String]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeEnterpriseSnapshotPolicyRequest.Tag]?

    public override init() {
        super.init()
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
        if self.diskIds != nil {
            map["DiskIds"] = self.diskIds!
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
        if self.policyIds != nil {
            map["PolicyIds"] = self.policyIds!
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DiskIds") && dict["DiskIds"] != nil {
            self.diskIds = dict["DiskIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyIds") && dict["PolicyIds"] != nil {
            self.policyIds = dict["PolicyIds"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeEnterpriseSnapshotPolicyRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeEnterpriseSnapshotPolicyRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class CrossRegionCopyInfo : Tea.TeaModel {
            public class Regions : Tea.TeaModel {
                public var regionId: String?

                public var retainDays: Int32?

                public override init() {
                    super.init()
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
                    if self.retainDays != nil {
                        map["RetainDays"] = self.retainDays!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("RetainDays") && dict["RetainDays"] != nil {
                        self.retainDays = dict["RetainDays"] as! Int32
                    }
                }
            }
            public var enabled: Bool?

            public var regions: [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo.Regions]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.regions != nil {
                    var tmp : [Any] = []
                    for k in self.regions! {
                        tmp.append(k.toMap())
                    }
                    map["Regions"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("Regions") && dict["Regions"] != nil {
                    var tmp : [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo.Regions] = []
                    for v in dict["Regions"] as! [Any] {
                        var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo.Regions()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.regions = tmp
                }
            }
        }
        public class RetainRule : Tea.TeaModel {
            public var number: Int32?

            public var timeInterval: Int32?

            public var timeUnit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.timeInterval != nil {
                    map["TimeInterval"] = self.timeInterval!
                }
                if self.timeUnit != nil {
                    map["TimeUnit"] = self.timeUnit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Number") && dict["Number"] != nil {
                    self.number = dict["Number"] as! Int32
                }
                if dict.keys.contains("TimeInterval") && dict["TimeInterval"] != nil {
                    self.timeInterval = dict["TimeInterval"] as! Int32
                }
                if dict.keys.contains("TimeUnit") && dict["TimeUnit"] != nil {
                    self.timeUnit = dict["TimeUnit"] as! String
                }
            }
        }
        public class Schedule : Tea.TeaModel {
            public var cronExpression: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cronExpression != nil {
                    map["CronExpression"] = self.cronExpression!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CronExpression") && dict["CronExpression"] != nil {
                    self.cronExpression = dict["CronExpression"] as! String
                }
            }
        }
        public class SpecialRetainRules : Tea.TeaModel {
            public class Rules : Tea.TeaModel {
                public var specialPeriodUnit: String?

                public var timeInterval: Int32?

                public var timeUnit: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.specialPeriodUnit != nil {
                        map["SpecialPeriodUnit"] = self.specialPeriodUnit!
                    }
                    if self.timeInterval != nil {
                        map["TimeInterval"] = self.timeInterval!
                    }
                    if self.timeUnit != nil {
                        map["TimeUnit"] = self.timeUnit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SpecialPeriodUnit") && dict["SpecialPeriodUnit"] != nil {
                        self.specialPeriodUnit = dict["SpecialPeriodUnit"] as! String
                    }
                    if dict.keys.contains("TimeInterval") && dict["TimeInterval"] != nil {
                        self.timeInterval = dict["TimeInterval"] as! Int32
                    }
                    if dict.keys.contains("TimeUnit") && dict["TimeUnit"] != nil {
                        self.timeUnit = dict["TimeUnit"] as! String
                    }
                }
            }
            public var enabled: Bool?

            public var rules: [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules.Rules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.rules != nil {
                    var tmp : [Any] = []
                    for k in self.rules! {
                        tmp.append(k.toMap())
                    }
                    map["Rules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("Rules") && dict["Rules"] != nil {
                    var tmp : [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules.Rules] = []
                    for v in dict["Rules"] as! [Any] {
                        var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules.Rules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.rules = tmp
                }
            }
        }
        public class StorageRule : Tea.TeaModel {
            public var enableImmediateAccess: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableImmediateAccess != nil {
                    map["EnableImmediateAccess"] = self.enableImmediateAccess!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableImmediateAccess") && dict["EnableImmediateAccess"] != nil {
                    self.enableImmediateAccess = dict["EnableImmediateAccess"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var createTime: String?

        public var crossRegionCopyInfo: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo?

        public var desc: String?

        public var diskIds: [String]?

        public var managedForEcs: Bool?

        public var name: String?

        public var policyId: String?

        public var resourceGroupId: String?

        public var retainRule: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.RetainRule?

        public var schedule: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Schedule?

        public var specialRetainRules: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules?

        public var state: String?

        public var storageRule: DescribeEnterpriseSnapshotPolicyResponseBody.Policies.StorageRule?

        public var tags: [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Tags]?

        public var targetCount: Int32?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.crossRegionCopyInfo?.validate()
            try self.retainRule?.validate()
            try self.schedule?.validate()
            try self.specialRetainRules?.validate()
            try self.storageRule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.crossRegionCopyInfo != nil {
                map["CrossRegionCopyInfo"] = self.crossRegionCopyInfo?.toMap()
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.diskIds != nil {
                map["DiskIds"] = self.diskIds!
            }
            if self.managedForEcs != nil {
                map["ManagedForEcs"] = self.managedForEcs!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.retainRule != nil {
                map["RetainRule"] = self.retainRule?.toMap()
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule?.toMap()
            }
            if self.specialRetainRules != nil {
                map["SpecialRetainRules"] = self.specialRetainRules?.toMap()
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.storageRule != nil {
                map["StorageRule"] = self.storageRule?.toMap()
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.targetCount != nil {
                map["TargetCount"] = self.targetCount!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CrossRegionCopyInfo") && dict["CrossRegionCopyInfo"] != nil {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.CrossRegionCopyInfo()
                model.fromMap(dict["CrossRegionCopyInfo"] as! [String: Any])
                self.crossRegionCopyInfo = model
            }
            if dict.keys.contains("Desc") && dict["Desc"] != nil {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("DiskIds") && dict["DiskIds"] != nil {
                self.diskIds = dict["DiskIds"] as! [String]
            }
            if dict.keys.contains("ManagedForEcs") && dict["ManagedForEcs"] != nil {
                self.managedForEcs = dict["ManagedForEcs"] as! Bool
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("RetainRule") && dict["RetainRule"] != nil {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.RetainRule()
                model.fromMap(dict["RetainRule"] as! [String: Any])
                self.retainRule = model
            }
            if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Schedule()
                model.fromMap(dict["Schedule"] as! [String: Any])
                self.schedule = model
            }
            if dict.keys.contains("SpecialRetainRules") && dict["SpecialRetainRules"] != nil {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.SpecialRetainRules()
                model.fromMap(dict["SpecialRetainRules"] as! [String: Any])
                self.specialRetainRules = model
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("StorageRule") && dict["StorageRule"] != nil {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.StorageRule()
                model.fromMap(dict["StorageRule"] as! [String: Any])
                self.storageRule = model
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TargetCount") && dict["TargetCount"] != nil {
                self.targetCount = dict["TargetCount"] as! Int32
            }
            if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                self.targetType = dict["TargetType"] as! String
            }
        }
    }
    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policies: [DescribeEnterpriseSnapshotPolicyResponseBody.Policies]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Policies") && dict["Policies"] != nil {
            var tmp : [DescribeEnterpriseSnapshotPolicyResponseBody.Policies] = []
            for v in dict["Policies"] as! [Any] {
                var model = DescribeEnterpriseSnapshotPolicyResponseBody.Policies()
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEnterpriseSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLensServiceStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeLensServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLensServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeLensServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMetricDataRequest : Tea.TeaModel {
    public var dimensions: String?

    public var endTime: String?

    public var metricName: String?

    public var period: Int32?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dimensions != nil {
            map["Dimensions"] = self.dimensions!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimensions") && dict["Dimensions"] != nil {
            self.dimensions = dict["Dimensions"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MetricName") && dict["MetricName"] != nil {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeMetricDataResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var datapoints: Any?

        public var labels: Any?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.datapoints != nil {
                map["Datapoints"] = self.datapoints!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Datapoints") && dict["Datapoints"] != nil {
                self.datapoints = dict["Datapoints"] as! Any
            }
            if dict.keys.contains("Labels") && dict["Labels"] != nil {
                self.labels = dict["Labels"] as! Any
            }
        }
    }
    public var dataList: [DescribeMetricDataResponseBody.DataList]?

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
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
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
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [DescribeMetricDataResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = DescribeMetricDataResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeMetricDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMetricDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeMetricDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePairDrillsRequest : Tea.TeaModel {
    public var drillId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pairId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
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
        if self.pairId != nil {
            map["PairId"] = self.pairId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrillId") && dict["DrillId"] != nil {
            self.drillId = dict["DrillId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PairId") && dict["PairId"] != nil {
            self.pairId = dict["PairId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribePairDrillsResponseBody : Tea.TeaModel {
    public class Drills : Tea.TeaModel {
        public var drillDiskId: String?

        public var drillDiskStatus: String?

        public var drillId: String?

        public var recoverPoint: Int64?

        public var startAt: Int64?

        public var status: String?

        public var statusMessage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.drillDiskId != nil {
                map["DrillDiskId"] = self.drillDiskId!
            }
            if self.drillDiskStatus != nil {
                map["DrillDiskStatus"] = self.drillDiskStatus!
            }
            if self.drillId != nil {
                map["DrillId"] = self.drillId!
            }
            if self.recoverPoint != nil {
                map["RecoverPoint"] = self.recoverPoint!
            }
            if self.startAt != nil {
                map["StartAt"] = self.startAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DrillDiskId") && dict["DrillDiskId"] != nil {
                self.drillDiskId = dict["DrillDiskId"] as! String
            }
            if dict.keys.contains("DrillDiskStatus") && dict["DrillDiskStatus"] != nil {
                self.drillDiskStatus = dict["DrillDiskStatus"] as! String
            }
            if dict.keys.contains("DrillId") && dict["DrillId"] != nil {
                self.drillId = dict["DrillId"] as! String
            }
            if dict.keys.contains("RecoverPoint") && dict["RecoverPoint"] != nil {
                self.recoverPoint = dict["RecoverPoint"] as! Int64
            }
            if dict.keys.contains("StartAt") && dict["StartAt"] != nil {
                self.startAt = dict["StartAt"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
        }
    }
    public var drills: [DescribePairDrillsResponseBody.Drills]?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.drills != nil {
            var tmp : [Any] = []
            for k in self.drills! {
                tmp.append(k.toMap())
            }
            map["Drills"] = tmp
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Drills") && dict["Drills"] != nil {
            var tmp : [DescribePairDrillsResponseBody.Drills] = []
            for v in dict["Drills"] as! [Any] {
                var model = DescribePairDrillsResponseBody.Drills()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.drills = tmp
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribePairDrillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePairDrillsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribePairDrillsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var regionId: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Zones : Tea.TeaModel {
            public var localName: String?

            public var resourceTypes: [String]?

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
                if self.resourceTypes != nil {
                    map["ResourceTypes"] = self.resourceTypes!
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
                if dict.keys.contains("ResourceTypes") && dict["ResourceTypes"] != nil {
                    self.resourceTypes = dict["ResourceTypes"] as! [String]
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var localName: String?

        public var regionEndpoint: String?

        public var regionId: String?

        public var zones: [DescribeRegionsResponseBody.Regions.Zones]?

        public override init() {
            super.init()
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
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Zones") && dict["Zones"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Zones] = []
                for v in dict["Zones"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Zones()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zones = tmp
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = DescribeRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
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

public class DescribeReplicaGroupDrillsRequest : Tea.TeaModel {
    public var drillId: String?

    public var groupId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrillId") && dict["DrillId"] != nil {
            self.drillId = dict["DrillId"] as! String
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeReplicaGroupDrillsResponseBody : Tea.TeaModel {
    public class Drills : Tea.TeaModel {
        public class PairsInfo : Tea.TeaModel {
            public var drillDiskId: String?

            public var drillDiskStatus: String?

            public var pairId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.drillDiskId != nil {
                    map["DrillDiskId"] = self.drillDiskId!
                }
                if self.drillDiskStatus != nil {
                    map["DrillDiskStatus"] = self.drillDiskStatus!
                }
                if self.pairId != nil {
                    map["PairId"] = self.pairId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DrillDiskId") && dict["DrillDiskId"] != nil {
                    self.drillDiskId = dict["DrillDiskId"] as! String
                }
                if dict.keys.contains("DrillDiskStatus") && dict["DrillDiskStatus"] != nil {
                    self.drillDiskStatus = dict["DrillDiskStatus"] as! String
                }
                if dict.keys.contains("PairId") && dict["PairId"] != nil {
                    self.pairId = dict["PairId"] as! String
                }
            }
        }
        public var drillId: String?

        public var groupId: String?

        public var pairsInfo: [DescribeReplicaGroupDrillsResponseBody.Drills.PairsInfo]?

        public var recoverPoint: Int64?

        public var startAt: Int64?

        public var status: String?

        public var statusMessage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.drillId != nil {
                map["DrillId"] = self.drillId!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.pairsInfo != nil {
                var tmp : [Any] = []
                for k in self.pairsInfo! {
                    tmp.append(k.toMap())
                }
                map["PairsInfo"] = tmp
            }
            if self.recoverPoint != nil {
                map["RecoverPoint"] = self.recoverPoint!
            }
            if self.startAt != nil {
                map["StartAt"] = self.startAt!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DrillId") && dict["DrillId"] != nil {
                self.drillId = dict["DrillId"] as! String
            }
            if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("PairsInfo") && dict["PairsInfo"] != nil {
                var tmp : [DescribeReplicaGroupDrillsResponseBody.Drills.PairsInfo] = []
                for v in dict["PairsInfo"] as! [Any] {
                    var model = DescribeReplicaGroupDrillsResponseBody.Drills.PairsInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pairsInfo = tmp
            }
            if dict.keys.contains("RecoverPoint") && dict["RecoverPoint"] != nil {
                self.recoverPoint = dict["RecoverPoint"] as! Int64
            }
            if dict.keys.contains("StartAt") && dict["StartAt"] != nil {
                self.startAt = dict["StartAt"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") && dict["StatusMessage"] != nil {
                self.statusMessage = dict["StatusMessage"] as! String
            }
        }
    }
    public var drills: [DescribeReplicaGroupDrillsResponseBody.Drills]?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.drills != nil {
            var tmp : [Any] = []
            for k in self.drills! {
                tmp.append(k.toMap())
            }
            map["Drills"] = tmp
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Drills") && dict["Drills"] != nil {
            var tmp : [DescribeReplicaGroupDrillsResponseBody.Drills] = []
            for v in dict["Drills"] as! [Any] {
                var model = DescribeReplicaGroupDrillsResponseBody.Drills()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.drills = tmp
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeReplicaGroupDrillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeReplicaGroupDrillsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeReplicaGroupDrillsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSolutionInstanceConfigurationRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var parameterKey: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parameterKey != nil {
                map["ParameterKey"] = self.parameterKey!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") && dict["ParameterKey"] != nil {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") && dict["ParameterValue"] != nil {
                self.parameterValue = dict["ParameterValue"] as! String
            }
        }
    }
    public var clientToken: String?

    public var parameters: [DescribeSolutionInstanceConfigurationRequest.Parameters]?

    public var regionId: String?

    public var solutionId: String?

    public override init() {
        super.init()
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
        if self.parameters != nil {
            var tmp : [Any] = []
            for k in self.parameters! {
                tmp.append(k.toMap())
            }
            map["Parameters"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var tmp : [DescribeSolutionInstanceConfigurationRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = DescribeSolutionInstanceConfigurationRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SolutionId") && dict["SolutionId"] != nil {
            self.solutionId = dict["SolutionId"] as! String
        }
    }
}

public class DescribeSolutionInstanceConfigurationResponseBody : Tea.TeaModel {
    public var data: [[String: Any]]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSolutionInstanceConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSolutionInstanceConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeSolutionInstanceConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FailoverDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
    }
}

public class FailoverDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class FailoverDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FailoverDiskReplicaGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = FailoverDiskReplicaGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FailoverDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
    }
}

public class FailoverDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class FailoverDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FailoverDiskReplicaPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = FailoverDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDiskRequest : Tea.TeaModel {
    public var diskId: String?

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
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetDiskResponseBody : Tea.TeaModel {
    public class Disk : Tea.TeaModel {
        public class AccessAuthorization : Tea.TeaModel {
            public class Ecs : Tea.TeaModel {
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
                    if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                }
            }
            public class Pod : Tea.TeaModel {
                public var clusterId: String?

                public var podId: String?

                public override init() {
                    super.init()
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
                    if self.podId != nil {
                        map["PodId"] = self.podId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                        self.clusterId = dict["ClusterId"] as! String
                    }
                    if dict.keys.contains("PodId") && dict["PodId"] != nil {
                        self.podId = dict["PodId"] as! String
                    }
                }
            }
            public var accessToken: String?

            public var ecs: GetDiskResponseBody.Disk.AccessAuthorization.Ecs?

            public var pod: GetDiskResponseBody.Disk.AccessAuthorization.Pod?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ecs?.validate()
                try self.pod?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessToken != nil {
                    map["AccessToken"] = self.accessToken!
                }
                if self.ecs != nil {
                    map["Ecs"] = self.ecs?.toMap()
                }
                if self.pod != nil {
                    map["Pod"] = self.pod?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessToken") && dict["AccessToken"] != nil {
                    self.accessToken = dict["AccessToken"] as! String
                }
                if dict.keys.contains("Ecs") && dict["Ecs"] != nil {
                    var model = GetDiskResponseBody.Disk.AccessAuthorization.Ecs()
                    model.fromMap(dict["Ecs"] as! [String: Any])
                    self.ecs = model
                }
                if dict.keys.contains("Pod") && dict["Pod"] != nil {
                    var model = GetDiskResponseBody.Disk.AccessAuthorization.Pod()
                    model.fromMap(dict["Pod"] as! [String: Any])
                    self.pod = model
                }
            }
        }
        public class Attachments : Tea.TeaModel {
            public var attachedTime: String?

            public var instanceId: String?

            public var namespaceId: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachedTime != nil {
                    map["AttachedTime"] = self.attachedTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.namespaceId != nil {
                    map["NamespaceId"] = self.namespaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachedTime") && dict["AttachedTime"] != nil {
                    self.attachedTime = dict["AttachedTime"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("NamespaceId") && dict["NamespaceId"] != nil {
                    self.namespaceId = dict["NamespaceId"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var accessAuthorization: [GetDiskResponseBody.Disk.AccessAuthorization]?

        public var attachedTime: String?

        public var attachments: [GetDiskResponseBody.Disk.Attachments]?

        public var burstingEnabled: Bool?

        public var category: String?

        public var creationTime: String?

        public var description_: String?

        public var detachedTime: String?

        public var deviceNguid: String?

        public var diskId: String?

        public var diskName: String?

        public var encrypted: Bool?

        public var iops: Int64?

        public var iopsRead: Int64?

        public var iopsWrite: Int64?

        public var kmsKeyId: String?

        public var modifyAt: String?

        public var performanceLevel: String?

        public var provisionedIops: Int64?

        public var regionId: String?

        public var resourceGroupId: String?

        public var size: Int64?

        public var status: String?

        public var tags: [GetDiskResponseBody.Disk.Tags]?

        public var throughput: Int64?

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
            if self.accessAuthorization != nil {
                var tmp : [Any] = []
                for k in self.accessAuthorization! {
                    tmp.append(k.toMap())
                }
                map["AccessAuthorization"] = tmp
            }
            if self.attachedTime != nil {
                map["AttachedTime"] = self.attachedTime!
            }
            if self.attachments != nil {
                var tmp : [Any] = []
                for k in self.attachments! {
                    tmp.append(k.toMap())
                }
                map["Attachments"] = tmp
            }
            if self.burstingEnabled != nil {
                map["BurstingEnabled"] = self.burstingEnabled!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.detachedTime != nil {
                map["DetachedTime"] = self.detachedTime!
            }
            if self.deviceNguid != nil {
                map["DeviceNguid"] = self.deviceNguid!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.diskName != nil {
                map["DiskName"] = self.diskName!
            }
            if self.encrypted != nil {
                map["Encrypted"] = self.encrypted!
            }
            if self.iops != nil {
                map["Iops"] = self.iops!
            }
            if self.iopsRead != nil {
                map["IopsRead"] = self.iopsRead!
            }
            if self.iopsWrite != nil {
                map["IopsWrite"] = self.iopsWrite!
            }
            if self.kmsKeyId != nil {
                map["KmsKeyId"] = self.kmsKeyId!
            }
            if self.modifyAt != nil {
                map["ModifyAt"] = self.modifyAt!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.provisionedIops != nil {
                map["ProvisionedIops"] = self.provisionedIops!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.size != nil {
                map["Size"] = self.size!
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
            if self.throughput != nil {
                map["Throughput"] = self.throughput!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessAuthorization") && dict["AccessAuthorization"] != nil {
                var tmp : [GetDiskResponseBody.Disk.AccessAuthorization] = []
                for v in dict["AccessAuthorization"] as! [Any] {
                    var model = GetDiskResponseBody.Disk.AccessAuthorization()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.accessAuthorization = tmp
            }
            if dict.keys.contains("AttachedTime") && dict["AttachedTime"] != nil {
                self.attachedTime = dict["AttachedTime"] as! String
            }
            if dict.keys.contains("Attachments") && dict["Attachments"] != nil {
                var tmp : [GetDiskResponseBody.Disk.Attachments] = []
                for v in dict["Attachments"] as! [Any] {
                    var model = GetDiskResponseBody.Disk.Attachments()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.attachments = tmp
            }
            if dict.keys.contains("BurstingEnabled") && dict["BurstingEnabled"] != nil {
                self.burstingEnabled = dict["BurstingEnabled"] as! Bool
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DetachedTime") && dict["DetachedTime"] != nil {
                self.detachedTime = dict["DetachedTime"] as! String
            }
            if dict.keys.contains("DeviceNguid") && dict["DeviceNguid"] != nil {
                self.deviceNguid = dict["DeviceNguid"] as! String
            }
            if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("DiskName") && dict["DiskName"] != nil {
                self.diskName = dict["DiskName"] as! String
            }
            if dict.keys.contains("Encrypted") && dict["Encrypted"] != nil {
                self.encrypted = dict["Encrypted"] as! Bool
            }
            if dict.keys.contains("Iops") && dict["Iops"] != nil {
                self.iops = dict["Iops"] as! Int64
            }
            if dict.keys.contains("IopsRead") && dict["IopsRead"] != nil {
                self.iopsRead = dict["IopsRead"] as! Int64
            }
            if dict.keys.contains("IopsWrite") && dict["IopsWrite"] != nil {
                self.iopsWrite = dict["IopsWrite"] as! Int64
            }
            if dict.keys.contains("KmsKeyId") && dict["KmsKeyId"] != nil {
                self.kmsKeyId = dict["KmsKeyId"] as! String
            }
            if dict.keys.contains("ModifyAt") && dict["ModifyAt"] != nil {
                self.modifyAt = dict["ModifyAt"] as! String
            }
            if dict.keys.contains("PerformanceLevel") && dict["PerformanceLevel"] != nil {
                self.performanceLevel = dict["PerformanceLevel"] as! String
            }
            if dict.keys.contains("ProvisionedIops") && dict["ProvisionedIops"] != nil {
                self.provisionedIops = dict["ProvisionedIops"] as! Int64
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [GetDiskResponseBody.Disk.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetDiskResponseBody.Disk.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Throughput") && dict["Throughput"] != nil {
                self.throughput = dict["Throughput"] as! Int64
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var disk: GetDiskResponseBody.Disk?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.disk?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disk != nil {
            map["Disk"] = self.disk?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Disk") && dict["Disk"] != nil {
            var model = GetDiskResponseBody.Disk()
            model.fromMap(dict["Disk"] as! [String: Any])
            self.disk = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDiskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDiskResponseBody()
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

public class ModifyDedicatedBlockStorageClusterAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dbscId: String?

    public var dbscName: String?

    public var description_: String?

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
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.dbscName != nil {
            map["DbscName"] = self.dbscName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if dict.keys.contains("DbscId") && dict["DbscId"] != nil {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("DbscName") && dict["DbscName"] != nil {
            self.dbscName = dict["DbscName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyDedicatedBlockStorageClusterAttributeResponseBody : Tea.TeaModel {
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

public class ModifyDedicatedBlockStorageClusterAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDedicatedBlockStorageClusterAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDedicatedBlockStorageClusterAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDiskReplicaGroupRequest : Tea.TeaModel {
    public var bandwidth: Int64?

    public var clientToken: String?

    public var description_: String?

    public var groupName: String?

    public var RPO: Int64?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.RPO != nil {
            map["RPO"] = self.RPO!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RPO") && dict["RPO"] != nil {
            self.RPO = dict["RPO"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
    }
}

public class ModifyDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class ModifyDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskReplicaGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDiskReplicaGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDiskReplicaPairRequest : Tea.TeaModel {
    public var bandwidth: Int64?

    public var clientToken: String?

    public var description_: String?

    public var pairName: String?

    public var RPO: Int64?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.pairName != nil {
            map["PairName"] = self.pairName!
        }
        if self.RPO != nil {
            map["RPO"] = self.RPO!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") && dict["Bandwidth"] != nil {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("PairName") && dict["PairName"] != nil {
            self.pairName = dict["PairName"] as! String
        }
        if dict.keys.contains("RPO") && dict["RPO"] != nil {
            self.RPO = dict["RPO"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
    }
}

public class ModifyDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class ModifyDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskReplicaPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDedicatedBlockStorageClusterDiskThroughputStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var qosRequestId: String?

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
        if self.qosRequestId != nil {
            map["QosRequestId"] = self.qosRequestId!
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
        if dict.keys.contains("QosRequestId") && dict["QosRequestId"] != nil {
            self.qosRequestId = dict["QosRequestId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class QueryDedicatedBlockStorageClusterDiskThroughputStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class QueryDedicatedBlockStorageClusterDiskThroughputStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDedicatedBlockStorageClusterDiskThroughputStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryDedicatedBlockStorageClusterDiskThroughputStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDedicatedBlockStorageClusterInventoryDataRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dbscId: String?

    public var endTime: Int64?

    public var period: Int32?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DbscId") && dict["DbscId"] != nil {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class QueryDedicatedBlockStorageClusterInventoryDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MonitorItems : Tea.TeaModel {
            public var availableSize: Int64?

            public var totalSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableSize != nil {
                    map["AvailableSize"] = self.availableSize!
                }
                if self.totalSize != nil {
                    map["TotalSize"] = self.totalSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvailableSize") && dict["AvailableSize"] != nil {
                    self.availableSize = dict["AvailableSize"] as! Int64
                }
                if dict.keys.contains("TotalSize") && dict["TotalSize"] != nil {
                    self.totalSize = dict["TotalSize"] as! Int64
                }
            }
        }
        public var monitorItems: QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data.MonitorItems?

        public var resourceId: String?

        public var timestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.monitorItems?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.monitorItems != nil {
                map["MonitorItems"] = self.monitorItems?.toMap()
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MonitorItems") && dict["MonitorItems"] != nil {
                var model = QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data.MonitorItems()
                model.fromMap(dict["MonitorItems"] as! [String: Any])
                self.monitorItems = model
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! String
            }
        }
    }
    public var data: [QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data]?

    public var dbscId: String?

    public var dbscName: String?

    public var diskCategory: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.dbscId != nil {
            map["DbscId"] = self.dbscId!
        }
        if self.dbscName != nil {
            map["DbscName"] = self.dbscName!
        }
        if self.diskCategory != nil {
            map["DiskCategory"] = self.diskCategory!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryDedicatedBlockStorageClusterInventoryDataResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("DbscId") && dict["DbscId"] != nil {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("DbscName") && dict["DbscName"] != nil {
            self.dbscName = dict["DbscName"] as! String
        }
        if dict.keys.contains("DiskCategory") && dict["DiskCategory"] != nil {
            self.diskCategory = dict["DiskCategory"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryDedicatedBlockStorageClusterInventoryDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDedicatedBlockStorageClusterInventoryDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryDedicatedBlockStorageClusterInventoryDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
    }
}

public class RemoveDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class RemoveDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveDiskReplicaPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReprotectDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public var reverseReplicate: Bool?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        if self.reverseReplicate != nil {
            map["ReverseReplicate"] = self.reverseReplicate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
        if dict.keys.contains("ReverseReplicate") && dict["ReverseReplicate"] != nil {
            self.reverseReplicate = dict["ReverseReplicate"] as! Bool
        }
    }
}

public class ReprotectDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class ReprotectDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReprotectDiskReplicaGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReprotectDiskReplicaGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReprotectDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaPairId: String?

    public var reverseReplicate: Bool?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        if self.reverseReplicate != nil {
            map["ReverseReplicate"] = self.reverseReplicate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
        if dict.keys.contains("ReverseReplicate") && dict["ReverseReplicate"] != nil {
            self.reverseReplicate = dict["ReverseReplicate"] as! Bool
        }
    }
}

public class ReprotectDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class ReprotectDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReprotectDiskReplicaPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReprotectDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDedicatedBlockStorageClusterDiskThroughputRequest : Tea.TeaModel {
    public var bps: Int32?

    public var clientToken: String?

    public var diskId: String?

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
        if self.bps != nil {
            map["Bps"] = self.bps!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bps") && dict["Bps"] != nil {
            self.bps = dict["Bps"] as! Int32
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetDedicatedBlockStorageClusterDiskThroughputResponseBody : Tea.TeaModel {
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

public class SetDedicatedBlockStorageClusterDiskThroughputResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDedicatedBlockStorageClusterDiskThroughputResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetDedicatedBlockStorageClusterDiskThroughputResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var oneShot: Bool?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.oneShot != nil {
            map["OneShot"] = self.oneShot!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OneShot") && dict["OneShot"] != nil {
            self.oneShot = dict["OneShot"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
    }
}

public class StartDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class StartDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDiskReplicaGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartDiskReplicaGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var oneShot: Bool?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.oneShot != nil {
            map["OneShot"] = self.oneShot!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OneShot") && dict["OneShot"] != nil {
            self.oneShot = dict["OneShot"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
    }
}

public class StartDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class StartDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDiskReplicaPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartPairDrillRequest : Tea.TeaModel {
    public var clientToken: String?

    public var pairId: String?

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
        if self.pairId != nil {
            map["PairId"] = self.pairId!
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
        if dict.keys.contains("PairId") && dict["PairId"] != nil {
            self.pairId = dict["PairId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartPairDrillResponseBody : Tea.TeaModel {
    public var drillId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrillId") && dict["DrillId"] != nil {
            self.drillId = dict["DrillId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartPairDrillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartPairDrillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartPairDrillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartReplicaGroupDrillRequest : Tea.TeaModel {
    public var clientToken: String?

    public var groupId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
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
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartReplicaGroupDrillResponseBody : Tea.TeaModel {
    public var drillId: String?

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
        if self.drillId != nil {
            map["DrillId"] = self.drillId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrillId") && dict["DrillId"] != nil {
            self.drillId = dict["DrillId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartReplicaGroupDrillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartReplicaGroupDrillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartReplicaGroupDrillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDiskReplicaGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaGroupId != nil {
            map["ReplicaGroupId"] = self.replicaGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") && dict["ReplicaGroupId"] != nil {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
    }
}

public class StopDiskReplicaGroupResponseBody : Tea.TeaModel {
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

public class StopDiskReplicaGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDiskReplicaGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopDiskReplicaGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDiskReplicaPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var replicaPairId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicaPairId != nil {
            map["ReplicaPairId"] = self.replicaPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") && dict["ReplicaPairId"] != nil {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
    }
}

public class StopDiskReplicaPairResponseBody : Tea.TeaModel {
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

public class StopDiskReplicaPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDiskReplicaPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopDiskReplicaPairResponseBody()
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

public class UnbindEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var diskTargets: [String]?

    public var policyId: String?

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
        if self.diskTargets != nil {
            map["DiskTargets"] = self.diskTargets!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
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
        if dict.keys.contains("DiskTargets") && dict["DiskTargets"] != nil {
            self.diskTargets = dict["DiskTargets"] as! [String]
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UnbindEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class UnbindEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindEnterpriseSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UnbindEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var clientToken: String?

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

public class UpdateEnterpriseSnapshotPolicyRequest : Tea.TeaModel {
    public class CrossRegionCopyInfo : Tea.TeaModel {
        public class Regions : Tea.TeaModel {
            public var regionId: String?

            public var retainDays: Int32?

            public override init() {
                super.init()
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
                if self.retainDays != nil {
                    map["RetainDays"] = self.retainDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RetainDays") && dict["RetainDays"] != nil {
                    self.retainDays = dict["RetainDays"] as! Int32
                }
            }
        }
        public var enabled: Bool?

        public var regions: [UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.regions != nil {
                var tmp : [Any] = []
                for k in self.regions! {
                    tmp.append(k.toMap())
                }
                map["Regions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("Regions") && dict["Regions"] != nil {
                var tmp : [UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions] = []
                for v in dict["Regions"] as! [Any] {
                    var model = UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo.Regions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.regions = tmp
            }
        }
    }
    public class RetainRule : Tea.TeaModel {
        public var number: Int32?

        public var timeInterval: Int32?

        public var timeUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.timeInterval != nil {
                map["TimeInterval"] = self.timeInterval!
            }
            if self.timeUnit != nil {
                map["TimeUnit"] = self.timeUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Number") && dict["Number"] != nil {
                self.number = dict["Number"] as! Int32
            }
            if dict.keys.contains("TimeInterval") && dict["TimeInterval"] != nil {
                self.timeInterval = dict["TimeInterval"] as! Int32
            }
            if dict.keys.contains("TimeUnit") && dict["TimeUnit"] != nil {
                self.timeUnit = dict["TimeUnit"] as! String
            }
        }
    }
    public class Schedule : Tea.TeaModel {
        public var cronExpression: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cronExpression != nil {
                map["CronExpression"] = self.cronExpression!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CronExpression") && dict["CronExpression"] != nil {
                self.cronExpression = dict["CronExpression"] as! String
            }
        }
    }
    public class SpecialRetainRules : Tea.TeaModel {
        public class Rules : Tea.TeaModel {
            public var specialPeriodUnit: String?

            public var timeInterval: Int32?

            public var timeUnit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.specialPeriodUnit != nil {
                    map["SpecialPeriodUnit"] = self.specialPeriodUnit!
                }
                if self.timeInterval != nil {
                    map["TimeInterval"] = self.timeInterval!
                }
                if self.timeUnit != nil {
                    map["TimeUnit"] = self.timeUnit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SpecialPeriodUnit") && dict["SpecialPeriodUnit"] != nil {
                    self.specialPeriodUnit = dict["SpecialPeriodUnit"] as! String
                }
                if dict.keys.contains("TimeInterval") && dict["TimeInterval"] != nil {
                    self.timeInterval = dict["TimeInterval"] as! Int32
                }
                if dict.keys.contains("TimeUnit") && dict["TimeUnit"] != nil {
                    self.timeUnit = dict["TimeUnit"] as! String
                }
            }
        }
        public var enabled: Bool?

        public var rules: [UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
        }
    }
    public class StorageRule : Tea.TeaModel {
        public var enableImmediateAccess: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableImmediateAccess != nil {
                map["EnableImmediateAccess"] = self.enableImmediateAccess!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableImmediateAccess") && dict["EnableImmediateAccess"] != nil {
                self.enableImmediateAccess = dict["EnableImmediateAccess"] as! Bool
            }
        }
    }
    public var clientToken: String?

    public var crossRegionCopyInfo: UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo?

    public var desc: String?

    public var name: String?

    public var policyId: String?

    public var regionId: String?

    public var retainRule: UpdateEnterpriseSnapshotPolicyRequest.RetainRule?

    public var schedule: UpdateEnterpriseSnapshotPolicyRequest.Schedule?

    public var specialRetainRules: UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules?

    public var state: String?

    public var storageRule: UpdateEnterpriseSnapshotPolicyRequest.StorageRule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.crossRegionCopyInfo?.validate()
        try self.retainRule?.validate()
        try self.schedule?.validate()
        try self.specialRetainRules?.validate()
        try self.storageRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.crossRegionCopyInfo != nil {
            map["CrossRegionCopyInfo"] = self.crossRegionCopyInfo?.toMap()
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainRule != nil {
            map["RetainRule"] = self.retainRule?.toMap()
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule?.toMap()
        }
        if self.specialRetainRules != nil {
            map["SpecialRetainRules"] = self.specialRetainRules?.toMap()
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.storageRule != nil {
            map["StorageRule"] = self.storageRule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CrossRegionCopyInfo") && dict["CrossRegionCopyInfo"] != nil {
            var model = UpdateEnterpriseSnapshotPolicyRequest.CrossRegionCopyInfo()
            model.fromMap(dict["CrossRegionCopyInfo"] as! [String: Any])
            self.crossRegionCopyInfo = model
        }
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RetainRule") && dict["RetainRule"] != nil {
            var model = UpdateEnterpriseSnapshotPolicyRequest.RetainRule()
            model.fromMap(dict["RetainRule"] as! [String: Any])
            self.retainRule = model
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            var model = UpdateEnterpriseSnapshotPolicyRequest.Schedule()
            model.fromMap(dict["Schedule"] as! [String: Any])
            self.schedule = model
        }
        if dict.keys.contains("SpecialRetainRules") && dict["SpecialRetainRules"] != nil {
            var model = UpdateEnterpriseSnapshotPolicyRequest.SpecialRetainRules()
            model.fromMap(dict["SpecialRetainRules"] as! [String: Any])
            self.specialRetainRules = model
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("StorageRule") && dict["StorageRule"] != nil {
            var model = UpdateEnterpriseSnapshotPolicyRequest.StorageRule()
            model.fromMap(dict["StorageRule"] as! [String: Any])
            self.storageRule = model
        }
    }
}

public class UpdateEnterpriseSnapshotPolicyShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var crossRegionCopyInfoShrink: String?

    public var desc: String?

    public var name: String?

    public var policyId: String?

    public var regionId: String?

    public var retainRuleShrink: String?

    public var scheduleShrink: String?

    public var specialRetainRulesShrink: String?

    public var state: String?

    public var storageRuleShrink: String?

    public override init() {
        super.init()
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
        if self.crossRegionCopyInfoShrink != nil {
            map["CrossRegionCopyInfo"] = self.crossRegionCopyInfoShrink!
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retainRuleShrink != nil {
            map["RetainRule"] = self.retainRuleShrink!
        }
        if self.scheduleShrink != nil {
            map["Schedule"] = self.scheduleShrink!
        }
        if self.specialRetainRulesShrink != nil {
            map["SpecialRetainRules"] = self.specialRetainRulesShrink!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.storageRuleShrink != nil {
            map["StorageRule"] = self.storageRuleShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CrossRegionCopyInfo") && dict["CrossRegionCopyInfo"] != nil {
            self.crossRegionCopyInfoShrink = dict["CrossRegionCopyInfo"] as! String
        }
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RetainRule") && dict["RetainRule"] != nil {
            self.retainRuleShrink = dict["RetainRule"] as! String
        }
        if dict.keys.contains("Schedule") && dict["Schedule"] != nil {
            self.scheduleShrink = dict["Schedule"] as! String
        }
        if dict.keys.contains("SpecialRetainRules") && dict["SpecialRetainRules"] != nil {
            self.specialRetainRulesShrink = dict["SpecialRetainRules"] as! String
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("StorageRule") && dict["StorageRule"] != nil {
            self.storageRuleShrink = dict["StorageRule"] as! String
        }
    }
}

public class UpdateEnterpriseSnapshotPolicyResponseBody : Tea.TeaModel {
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

public class UpdateEnterpriseSnapshotPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnterpriseSnapshotPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateEnterpriseSnapshotPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSolutionInstanceAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var solutionInstanceId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.solutionInstanceId != nil {
            map["SolutionInstanceId"] = self.solutionInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SolutionInstanceId") && dict["SolutionInstanceId"] != nil {
            self.solutionInstanceId = dict["SolutionInstanceId"] as! String
        }
    }
}

public class UpdateSolutionInstanceAttributeResponseBody : Tea.TeaModel {
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

public class UpdateSolutionInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSolutionInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSolutionInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
