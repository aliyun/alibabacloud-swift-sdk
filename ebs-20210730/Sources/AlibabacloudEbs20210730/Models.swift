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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApplyLensServiceResponseBody()
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelLensServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDedicatedBlockStorageClusterRequest : Tea.TeaModel {
    public var azone: String?

    public var capacity: Int64?

    public var dbscId: String?

    public var dbscName: String?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Azone") {
            self.azone = dict["Azone"] as! String
        }
        if dict.keys.contains("Capacity") {
            self.capacity = dict["Capacity"] as! Int64
        }
        if dict.keys.contains("DbscId") {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("DbscName") {
            self.dbscName = dict["DbscName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Type") {
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
        if dict.keys.contains("DbscId") {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDedicatedBlockStorageClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDiskReplicaGroupRequest : Tea.TeaModel {
    public var bandwidth: Int64?

    public var clientToken: String?

    public var description_: String?

    public var destinationRegionId: String?

    public var destinationZoneId: String?

    public var groupName: String?

    public var RPO: Int64?

    public var regionId: String?

    public var sourceZoneId: String?

    public override init() {
        super.init()
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
        if self.sourceZoneId != nil {
            map["SourceZoneId"] = self.sourceZoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationRegionId") {
            self.destinationRegionId = dict["DestinationRegionId"] as! String
        }
        if dict.keys.contains("DestinationZoneId") {
            self.destinationZoneId = dict["DestinationZoneId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RPO") {
            self.RPO = dict["RPO"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceZoneId") {
            self.sourceZoneId = dict["SourceZoneId"] as! String
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
        if dict.keys.contains("ReplicaGroupId") {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDiskReplicaGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDiskReplicaPairRequest : Tea.TeaModel {
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

    public var sourceZoneId: String?

    public override init() {
        super.init()
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
        if self.sourceZoneId != nil {
            map["SourceZoneId"] = self.sourceZoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DestinationDiskId") {
            self.destinationDiskId = dict["DestinationDiskId"] as! String
        }
        if dict.keys.contains("DestinationRegionId") {
            self.destinationRegionId = dict["DestinationRegionId"] as! String
        }
        if dict.keys.contains("DestinationZoneId") {
            self.destinationZoneId = dict["DestinationZoneId"] as! String
        }
        if dict.keys.contains("DiskId") {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("PairName") {
            self.pairName = dict["PairName"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RPO") {
            self.RPO = dict["RPO"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceZoneId") {
            self.sourceZoneId = dict["SourceZoneId"] as! String
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
            self.replicaPairId = dict["ReplicaPairId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDiskReplicaPairResponseBody()
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDiskReplicaPairResponseBody()
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
        if dict.keys.contains("DbscId") {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
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
                    if dict.keys.contains("TagKey") {
                        self.tagKey = dict["TagKey"] as! String
                    }
                    if dict.keys.contains("TagValue") {
                        self.tagValue = dict["TagValue"] as! String
                    }
                }
            }
            public var attachedTime: String?

            public var bdfId: String?

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

            public var regionId: String?

            public var size: Int32?

            public var sourceSnapshotId: String?

            public var status: String?

            public var storageClusterId: String?

            public var storageSetId: String?

            public var storageSetPartitionNumber: Int32?

            public var tags: [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk.Tags]?

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
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachedTime") {
                    self.attachedTime = dict["AttachedTime"] as! String
                }
                if dict.keys.contains("BdfId") {
                    self.bdfId = dict["BdfId"] as! String
                }
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("DeleteAutoSnapshot") {
                    self.deleteAutoSnapshot = dict["DeleteAutoSnapshot"] as! Bool
                }
                if dict.keys.contains("DeleteWithInstance") {
                    self.deleteWithInstance = dict["DeleteWithInstance"] as! Bool
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DetachedTime") {
                    self.detachedTime = dict["DetachedTime"] as! String
                }
                if dict.keys.contains("Device") {
                    self.device = dict["Device"] as! String
                }
                if dict.keys.contains("DiskChargeType") {
                    self.diskChargeType = dict["DiskChargeType"] as! String
                }
                if dict.keys.contains("DiskId") {
                    self.diskId = dict["DiskId"] as! String
                }
                if dict.keys.contains("DiskName") {
                    self.diskName = dict["DiskName"] as! String
                }
                if dict.keys.contains("EnableAutoSnapshot") {
                    self.enableAutoSnapshot = dict["EnableAutoSnapshot"] as! Bool
                }
                if dict.keys.contains("Encrypted") {
                    self.encrypted = dict["Encrypted"] as! Bool
                }
                if dict.keys.contains("IOPS") {
                    self.IOPS = dict["IOPS"] as! Int64
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("KMSKeyId") {
                    self.KMSKeyId = dict["KMSKeyId"] as! String
                }
                if dict.keys.contains("MountInstanceNum") {
                    self.mountInstanceNum = dict["MountInstanceNum"] as! Int32
                }
                if dict.keys.contains("MultiAttach") {
                    self.multiAttach = dict["MultiAttach"] as! String
                }
                if dict.keys.contains("PerformanceLevel") {
                    self.performanceLevel = dict["PerformanceLevel"] as! String
                }
                if dict.keys.contains("Portable") {
                    self.portable = dict["Portable"] as! Bool
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int32
                }
                if dict.keys.contains("SourceSnapshotId") {
                    self.sourceSnapshotId = dict["SourceSnapshotId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StorageClusterId") {
                    self.storageClusterId = dict["StorageClusterId"] as! String
                }
                if dict.keys.contains("StorageSetId") {
                    self.storageSetId = dict["StorageSetId"] as! String
                }
                if dict.keys.contains("StorageSetPartitionNumber") {
                    self.storageSetPartitionNumber = dict["StorageSetPartitionNumber"] as! Int32
                }
                if dict.keys.contains("Tags") {
                    self.tags = dict["Tags"] as! [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk.Tags]
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("ZoneId") {
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
            if dict.keys.contains("Disk") {
                self.disk = dict["Disk"] as! [DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks.Disk]
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
        if dict.keys.contains("Disks") {
            var model = DescribeDedicatedBlockStorageClusterDisksResponseBody.Disks()
            model.fromMap(dict["Disks"] as! [String: Any])
            self.disks = model
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
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
        if dict.keys.contains("AzoneId") {
            self.azoneId = dict["AzoneId"] as! String
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedicatedBlockStorageClusterId") {
            self.dedicatedBlockStorageClusterId = dict["DedicatedBlockStorageClusterId"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! [String]
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [DescribeDedicatedBlockStorageClustersRequest.Tag]
        }
    }
}

public class DescribeDedicatedBlockStorageClustersResponseBody : Tea.TeaModel {
    public class DedicatedBlockStorageClusters : Tea.TeaModel {
        public class DedicatedBlockStorageClusterCapacity : Tea.TeaModel {
            public var availableCapacity: Int64?

            public var deliveryCapacity: Int64?

            public var totalCapacity: Int64?

            public var usedCapacity: Int64?

            public override init() {
                super.init()
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
                if self.deliveryCapacity != nil {
                    map["DeliveryCapacity"] = self.deliveryCapacity!
                }
                if self.totalCapacity != nil {
                    map["TotalCapacity"] = self.totalCapacity!
                }
                if self.usedCapacity != nil {
                    map["UsedCapacity"] = self.usedCapacity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvailableCapacity") {
                    self.availableCapacity = dict["AvailableCapacity"] as! Int64
                }
                if dict.keys.contains("DeliveryCapacity") {
                    self.deliveryCapacity = dict["DeliveryCapacity"] as! Int64
                }
                if dict.keys.contains("TotalCapacity") {
                    self.totalCapacity = dict["TotalCapacity"] as! Int64
                }
                if dict.keys.contains("UsedCapacity") {
                    self.usedCapacity = dict["UsedCapacity"] as! Int64
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var category: String?

        public var createTime: String?

        public var dedicatedBlockStorageClusterCapacity: DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.DedicatedBlockStorageClusterCapacity?

        public var dedicatedBlockStorageClusterId: String?

        public var dedicatedBlockStorageClusterName: String?

        public var description_: String?

        public var expiredTime: String?

        public var performanceLevel: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var status: String?

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
            if self.status != nil {
                map["Status"] = self.status!
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
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DedicatedBlockStorageClusterCapacity") {
                var model = DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.DedicatedBlockStorageClusterCapacity()
                model.fromMap(dict["DedicatedBlockStorageClusterCapacity"] as! [String: Any])
                self.dedicatedBlockStorageClusterCapacity = model
            }
            if dict.keys.contains("DedicatedBlockStorageClusterId") {
                self.dedicatedBlockStorageClusterId = dict["DedicatedBlockStorageClusterId"] as! String
            }
            if dict.keys.contains("DedicatedBlockStorageClusterName") {
                self.dedicatedBlockStorageClusterName = dict["DedicatedBlockStorageClusterName"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("PerformanceLevel") {
                self.performanceLevel = dict["PerformanceLevel"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupportedCategory") {
                self.supportedCategory = dict["SupportedCategory"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters.Tags]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("ZoneId") {
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
        if dict.keys.contains("DedicatedBlockStorageClusters") {
            self.dedicatedBlockStorageClusters = dict["DedicatedBlockStorageClusters"] as! [DescribeDedicatedBlockStorageClustersResponseBody.DedicatedBlockStorageClusters]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DiskCategory") {
            self.diskCategory = dict["DiskCategory"] as! String
        }
        if dict.keys.contains("DiskId") {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") {
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
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DiskId") {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("RecommendAction") {
                self.recommendAction = dict["RecommendAction"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! String
            }
            if dict.keys.contains("Type") {
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
        if dict.keys.contains("DiskEvents") {
            self.diskEvents = dict["DiskEvents"] as! [DescribeDiskEventsResponseBody.DiskEvents]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DiskId") {
            self.diskId = dict["DiskId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") {
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

        public var readIOPS: Int64?

        public var timestamp: String?

        public var writeBPS: Int64?

        public var writeIOPS: Int64?

        public override init() {
            super.init()
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
            if self.readIOPS != nil {
                map["ReadIOPS"] = self.readIOPS!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.writeBPS != nil {
                map["WriteBPS"] = self.writeBPS!
            }
            if self.writeIOPS != nil {
                map["WriteIOPS"] = self.writeIOPS!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BPSPercent") {
                self.BPSPercent = dict["BPSPercent"] as! Int64
            }
            if dict.keys.contains("BurstIOCount") {
                self.burstIOCount = dict["BurstIOCount"] as! Int64
            }
            if dict.keys.contains("DiskId") {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("IOPSPercent") {
                self.IOPSPercent = dict["IOPSPercent"] as! Int64
            }
            if dict.keys.contains("ReadBPS") {
                self.readBPS = dict["ReadBPS"] as! Int64
            }
            if dict.keys.contains("ReadIOPS") {
                self.readIOPS = dict["ReadIOPS"] as! Int64
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! String
            }
            if dict.keys.contains("WriteBPS") {
                self.writeBPS = dict["WriteBPS"] as! Int64
            }
            if dict.keys.contains("WriteIOPS") {
                self.writeIOPS = dict["WriteIOPS"] as! Int64
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
        if dict.keys.contains("MonitorData") {
            self.monitorData = dict["MonitorData"] as! [DescribeDiskMonitorDataResponseBody.MonitorData]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DiskIds") {
            self.diskIds = dict["DiskIds"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") {
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
            if dict.keys.contains("BurstIOCount") {
                self.burstIOCount = dict["BurstIOCount"] as! Int64
            }
            if dict.keys.contains("DiskId") {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("Timestamp") {
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
        if dict.keys.contains("MonitorData") {
            self.monitorData = dict["MonitorData"] as! [DescribeDiskMonitorDataListResponseBody.MonitorData]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDiskMonitorDataListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiskReplicaGroupsRequest : Tea.TeaModel {
    public var groupIds: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var site: String?

    public override init() {
        super.init()
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
        if self.site != nil {
            map["Site"] = self.site!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupIds") {
            self.groupIds = dict["GroupIds"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Site") {
            self.site = dict["Site"] as! String
        }
    }
}

public class DescribeDiskReplicaGroupsResponseBody : Tea.TeaModel {
    public class ReplicaGroups : Tea.TeaModel {
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

        public var site: String?

        public var sourceRegionId: String?

        public var sourceZoneId: String?

        public var standbyRegion: String?

        public var standbyZone: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationRegionId") {
                self.destinationRegionId = dict["DestinationRegionId"] as! String
            }
            if dict.keys.contains("DestinationZoneId") {
                self.destinationZoneId = dict["DestinationZoneId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("LastRecoverPoint") {
                self.lastRecoverPoint = dict["LastRecoverPoint"] as! Int64
            }
            if dict.keys.contains("PairIds") {
                self.pairIds = dict["PairIds"] as! [[UInt8]]
            }
            if dict.keys.contains("PairNumber") {
                self.pairNumber = dict["PairNumber"] as! Int64
            }
            if dict.keys.contains("PrimaryRegion") {
                self.primaryRegion = dict["PrimaryRegion"] as! String
            }
            if dict.keys.contains("PrimaryZone") {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("RPO") {
                self.RPO = dict["RPO"] as! Int64
            }
            if dict.keys.contains("ReplicaGroupId") {
                self.replicaGroupId = dict["ReplicaGroupId"] as! String
            }
            if dict.keys.contains("Site") {
                self.site = dict["Site"] as! String
            }
            if dict.keys.contains("SourceRegionId") {
                self.sourceRegionId = dict["SourceRegionId"] as! String
            }
            if dict.keys.contains("SourceZoneId") {
                self.sourceZoneId = dict["SourceZoneId"] as! String
            }
            if dict.keys.contains("StandbyRegion") {
                self.standbyRegion = dict["StandbyRegion"] as! String
            }
            if dict.keys.contains("StandbyZone") {
                self.standbyZone = dict["StandbyZone"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReplicaGroups") {
            self.replicaGroups = dict["ReplicaGroups"] as! [DescribeDiskReplicaGroupsResponseBody.ReplicaGroups]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
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
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Int32
        }
        if dict.keys.contains("RecoverPoint") {
            self.recoverPoint = dict["RecoverPoint"] as! Int64
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDiskReplicaPairProgressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDiskReplicaPairsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pairIds: String?

    public var regionId: String?

    public var replicaGroupId: String?

    public var site: String?

    public override init() {
        super.init()
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
        if self.site != nil {
            map["Site"] = self.site!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PairIds") {
            self.pairIds = dict["PairIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
        if dict.keys.contains("Site") {
            self.site = dict["Site"] as! String
        }
    }
}

public class DescribeDiskReplicaPairsResponseBody : Tea.TeaModel {
    public class ReplicaPairs : Tea.TeaModel {
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

        public var site: String?

        public var sourceDiskId: String?

        public var sourceRegion: String?

        public var sourceZoneId: String?

        public var standbyRegion: String?

        public var standbyZone: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int64
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DestinationDiskId") {
                self.destinationDiskId = dict["DestinationDiskId"] as! String
            }
            if dict.keys.contains("DestinationRegion") {
                self.destinationRegion = dict["DestinationRegion"] as! String
            }
            if dict.keys.contains("DestinationZoneId") {
                self.destinationZoneId = dict["DestinationZoneId"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("LastRecoverPoint") {
                self.lastRecoverPoint = dict["LastRecoverPoint"] as! Int64
            }
            if dict.keys.contains("PairName") {
                self.pairName = dict["PairName"] as! String
            }
            if dict.keys.contains("PrimaryRegion") {
                self.primaryRegion = dict["PrimaryRegion"] as! String
            }
            if dict.keys.contains("PrimaryZone") {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("RPO") {
                self.RPO = dict["RPO"] as! Int64
            }
            if dict.keys.contains("ReplicaGroupId") {
                self.replicaGroupId = dict["ReplicaGroupId"] as! String
            }
            if dict.keys.contains("ReplicaGroupName") {
                self.replicaGroupName = dict["ReplicaGroupName"] as! String
            }
            if dict.keys.contains("ReplicaPairId") {
                self.replicaPairId = dict["ReplicaPairId"] as! String
            }
            if dict.keys.contains("Site") {
                self.site = dict["Site"] as! String
            }
            if dict.keys.contains("SourceDiskId") {
                self.sourceDiskId = dict["SourceDiskId"] as! String
            }
            if dict.keys.contains("SourceRegion") {
                self.sourceRegion = dict["SourceRegion"] as! String
            }
            if dict.keys.contains("SourceZoneId") {
                self.sourceZoneId = dict["SourceZoneId"] as! String
            }
            if dict.keys.contains("StandbyRegion") {
                self.standbyRegion = dict["StandbyRegion"] as! String
            }
            if dict.keys.contains("StandbyZone") {
                self.standbyZone = dict["StandbyZone"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusMessage") {
                self.statusMessage = dict["StatusMessage"] as! String
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReplicaPairs") {
            self.replicaPairs = dict["ReplicaPairs"] as! [DescribeDiskReplicaPairsResponseBody.ReplicaPairs]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDiskReplicaPairsResponseBody()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeLensServiceStatusResponseBody()
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
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
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
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("ResourceTypes") {
                    self.resourceTypes = dict["ResourceTypes"] as! [String]
                }
                if dict.keys.contains("ZoneId") {
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
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("RegionEndpoint") {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Zones") {
                self.zones = dict["Zones"] as! [DescribeRegionsResponseBody.Regions.Zones]
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
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [DescribeRegionsResponseBody.Regions]
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRegionsResponseBody()
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = FailoverDiskReplicaPairResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListTagResourcesRequest.Tag]
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
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            self.tagResources = dict["TagResources"] as! [ListTagResourcesResponseBody.TagResources]
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DbscId") {
            self.dbscId = dict["DbscId"] as! String
        }
        if dict.keys.contains("DbscName") {
            self.dbscName = dict["DbscName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RegionId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RPO") {
            self.RPO = dict["RPO"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int64
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("PairName") {
            self.pairName = dict["PairName"] as! String
        }
        if dict.keys.contains("RPO") {
            self.RPO = dict["RPO"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDiskReplicaPairResponseBody()
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public override init() {
        super.init()
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") {
            self.replicaGroupId = dict["ReplicaGroupId"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public override init() {
        super.init()
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
            self.replicaPairId = dict["ReplicaPairId"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReprotectDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDiskMonitorRequest : Tea.TeaModel {
    public var diskIds: [String]?

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
        if self.diskIds != nil {
            map["DiskIds"] = self.diskIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskIds") {
            self.diskIds = dict["DiskIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartDiskMonitorShrinkRequest : Tea.TeaModel {
    public var diskIdsShrink: String?

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
        if self.diskIdsShrink != nil {
            map["DiskIds"] = self.diskIdsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskIds") {
            self.diskIdsShrink = dict["DiskIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartDiskMonitorResponseBody : Tea.TeaModel {
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

public class StartDiskMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDiskMonitorResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartDiskMonitorResponseBody()
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OneShot") {
            self.oneShot = dict["OneShot"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("OneShot") {
            self.oneShot = dict["OneShot"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartDiskReplicaPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDiskMonitorRequest : Tea.TeaModel {
    public var diskIds: [String]?

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
        if self.diskIds != nil {
            map["DiskIds"] = self.diskIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskIds") {
            self.diskIds = dict["DiskIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopDiskMonitorShrinkRequest : Tea.TeaModel {
    public var diskIdsShrink: String?

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
        if self.diskIdsShrink != nil {
            map["DiskIds"] = self.diskIdsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiskIds") {
            self.diskIdsShrink = dict["DiskIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopDiskMonitorResponseBody : Tea.TeaModel {
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

public class StopDiskMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDiskMonitorResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopDiskMonitorResponseBody()
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaGroupId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicaPairId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
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
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [TagResourcesRequest.Tag]
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
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
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
