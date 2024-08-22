import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataImageRegionDistributeMapValue : Tea.TeaModel {
    public var distributeStatus: String?

    public var progress: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributeStatus != nil {
            map["DistributeStatus"] = self.distributeStatus!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributeStatus") {
            self.distributeStatus = dict["DistributeStatus"] as! String
        }
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! String
        }
    }
}

public class AttachKeyPairRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var keyPairId: String?

    public override init() {
        super.init()
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
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("KeyPairId") {
            self.keyPairId = dict["KeyPairId"] as! String
        }
    }
}

public class AttachKeyPairResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var attachedInstanceIds: [String]?

        public var failCount: Int32?

        public var keyPairId: String?

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
            if self.attachedInstanceIds != nil {
                map["AttachedInstanceIds"] = self.attachedInstanceIds!
            }
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachedInstanceIds") {
                self.attachedInstanceIds = dict["AttachedInstanceIds"] as! [String]
            }
            if dict.keys.contains("FailCount") {
                self.failCount = dict["FailCount"] as! Int32
            }
            if dict.keys.contains("KeyPairId") {
                self.keyPairId = dict["KeyPairId"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: AttachKeyPairResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = AttachKeyPairResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AttachKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachKeyPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AttachKeyPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AuthorizeAndroidInstanceRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var authorizeUserId: String?

    public var unAuthorizeUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.authorizeUserId != nil {
            map["AuthorizeUserId"] = self.authorizeUserId!
        }
        if self.unAuthorizeUserId != nil {
            map["UnAuthorizeUserId"] = self.unAuthorizeUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIds") {
            self.androidInstanceIds = dict["AndroidInstanceIds"] as! [String]
        }
        if dict.keys.contains("AuthorizeUserId") {
            self.authorizeUserId = dict["AuthorizeUserId"] as! String
        }
        if dict.keys.contains("UnAuthorizeUserId") {
            self.unAuthorizeUserId = dict["UnAuthorizeUserId"] as! String
        }
    }
}

public class AuthorizeAndroidInstanceResponseBody : Tea.TeaModel {
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

public class AuthorizeAndroidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeAndroidInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AuthorizeAndroidInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BackupFileRequest : Tea.TeaModel {
    public var androidInstanceIdList: [String]?

    public var backupFilePath: String?

    public var description_: String?

    public var sourceFilePathList: [String]?

    public var uploadEndpoint: String?

    public var uploadType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIdList != nil {
            map["AndroidInstanceIdList"] = self.androidInstanceIdList!
        }
        if self.backupFilePath != nil {
            map["BackupFilePath"] = self.backupFilePath!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.sourceFilePathList != nil {
            map["SourceFilePathList"] = self.sourceFilePathList!
        }
        if self.uploadEndpoint != nil {
            map["UploadEndpoint"] = self.uploadEndpoint!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIdList") {
            self.androidInstanceIdList = dict["AndroidInstanceIdList"] as! [String]
        }
        if dict.keys.contains("BackupFilePath") {
            self.backupFilePath = dict["BackupFilePath"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SourceFilePathList") {
            self.sourceFilePathList = dict["SourceFilePathList"] as! [String]
        }
        if dict.keys.contains("UploadEndpoint") {
            self.uploadEndpoint = dict["UploadEndpoint"] as! String
        }
        if dict.keys.contains("UploadType") {
            self.uploadType = dict["UploadType"] as! String
        }
    }
}

public class BackupFileResponseBody : Tea.TeaModel {
    public var data: String?

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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BackupFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BackupFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BackupFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckResourceStockRequest : Tea.TeaModel {
    public var acpSpecId: String?

    public var bizRegionId: String?

    public var gpuAcceleration: Bool?

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
        if self.acpSpecId != nil {
            map["AcpSpecId"] = self.acpSpecId!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.gpuAcceleration != nil {
            map["GpuAcceleration"] = self.gpuAcceleration!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcpSpecId") {
            self.acpSpecId = dict["AcpSpecId"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("GpuAcceleration") {
            self.gpuAcceleration = dict["GpuAcceleration"] as! Bool
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CheckResourceStockResponseBody : Tea.TeaModel {
    public class ResourceStockModels : Tea.TeaModel {
        public var regionId: String?

        public var stockStatus: String?

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
            if self.stockStatus != nil {
                map["StockStatus"] = self.stockStatus!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("StockStatus") {
                self.stockStatus = dict["StockStatus"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceStockModels: [CheckResourceStockResponseBody.ResourceStockModels]?

    public override init() {
        super.init()
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
        if self.resourceStockModels != nil {
            var tmp : [Any] = []
            for k in self.resourceStockModels! {
                tmp.append(k.toMap())
            }
            map["ResourceStockModels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceStockModels") {
            var tmp : [CheckResourceStockResponseBody.ResourceStockModels] = []
            for v in dict["ResourceStockModels"] as! [Any] {
                var model = CheckResourceStockResponseBody.ResourceStockModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceStockModels = tmp
        }
    }
}

public class CheckResourceStockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckResourceStockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckResourceStockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAndroidInstanceGroupRequest : Tea.TeaModel {
    public var amount: Int32?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeType: String?

    public var clientToken: String?

    public var gpuAcceleration: Bool?

    public var imageId: String?

    public var instanceGroupName: String?

    public var instanceGroupSpec: String?

    public var numberOfInstances: Int32?

    public var officeSiteId: String?

    public var period: Int32?

    public var periodUnit: String?

    public var policyGroupId: String?

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
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.gpuAcceleration != nil {
            map["GpuAcceleration"] = self.gpuAcceleration!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceGroupName != nil {
            map["InstanceGroupName"] = self.instanceGroupName!
        }
        if self.instanceGroupSpec != nil {
            map["InstanceGroupSpec"] = self.instanceGroupSpec!
        }
        if self.numberOfInstances != nil {
            map["NumberOfInstances"] = self.numberOfInstances!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! Int32
        }
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("GpuAcceleration") {
            self.gpuAcceleration = dict["GpuAcceleration"] as! Bool
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceGroupName") {
            self.instanceGroupName = dict["InstanceGroupName"] as! String
        }
        if dict.keys.contains("InstanceGroupSpec") {
            self.instanceGroupSpec = dict["InstanceGroupSpec"] as! String
        }
        if dict.keys.contains("NumberOfInstances") {
            self.numberOfInstances = dict["NumberOfInstances"] as! Int32
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
    }
}

public class CreateAndroidInstanceGroupResponseBody : Tea.TeaModel {
    public class InstanceGroupInfos : Tea.TeaModel {
        public var instanceGroupId: String?

        public var instanceIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceGroupId != nil {
                map["InstanceGroupId"] = self.instanceGroupId!
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceGroupId") {
                self.instanceGroupId = dict["InstanceGroupId"] as! String
            }
            if dict.keys.contains("InstanceIds") {
                self.instanceIds = dict["InstanceIds"] as! [String]
            }
        }
    }
    public var instanceGroupIds: [String]?

    public var instanceGroupInfos: [CreateAndroidInstanceGroupResponseBody.InstanceGroupInfos]?

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
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.instanceGroupInfos != nil {
            var tmp : [Any] = []
            for k in self.instanceGroupInfos! {
                tmp.append(k.toMap())
            }
            map["InstanceGroupInfos"] = tmp
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
        if dict.keys.contains("InstanceGroupIds") {
            self.instanceGroupIds = dict["InstanceGroupIds"] as! [String]
        }
        if dict.keys.contains("InstanceGroupInfos") {
            var tmp : [CreateAndroidInstanceGroupResponseBody.InstanceGroupInfos] = []
            for v in dict["InstanceGroupInfos"] as! [Any] {
                var model = CreateAndroidInstanceGroupResponseBody.InstanceGroupInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceGroupInfos = tmp
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAndroidInstanceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAndroidInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public var appName: String?

    public var bizRegionId: String?

    public var description_: String?

    public var fileName: String?

    public var filePath: String?

    public var iconUrl: String?

    public var installParam: String?

    public var ossAppUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.iconUrl != nil {
            map["IconUrl"] = self.iconUrl!
        }
        if self.installParam != nil {
            map["InstallParam"] = self.installParam!
        }
        if self.ossAppUrl != nil {
            map["OssAppUrl"] = self.ossAppUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("FilePath") {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("IconUrl") {
            self.iconUrl = dict["IconUrl"] as! String
        }
        if dict.keys.contains("InstallParam") {
            self.installParam = dict["InstallParam"] as! String
        }
        if dict.keys.contains("OssAppUrl") {
            self.ossAppUrl = dict["OssAppUrl"] as! String
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public var appId: Int32?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomImageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var imageName: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class CreateCustomImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCustomImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCustomImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateKeyPairRequest : Tea.TeaModel {
    public var keyPairName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyPairName") {
            self.keyPairName = dict["KeyPairName"] as! String
        }
    }
}

public class CreateKeyPairResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreated: String?

        public var keyPairId: String?

        public var keyPairName: String?

        public var privateKeyBody: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.privateKeyBody != nil {
                map["PrivateKeyBody"] = self.privateKeyBody!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("KeyPairId") {
                self.keyPairId = dict["KeyPairId"] as! String
            }
            if dict.keys.contains("KeyPairName") {
                self.keyPairName = dict["KeyPairName"] as! String
            }
            if dict.keys.contains("PrivateKeyBody") {
                self.privateKeyBody = dict["PrivateKeyBody"] as! String
            }
        }
    }
    public var data: CreateKeyPairResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CreateKeyPairResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKeyPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateKeyPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePolicyGroupRequest : Tea.TeaModel {
    public class NetRedirectPolicy : Tea.TeaModel {
        public var netRedirect: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.netRedirect != nil {
                map["NetRedirect"] = self.netRedirect!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NetRedirect") {
                self.netRedirect = dict["NetRedirect"] as! String
            }
        }
    }
    public var cameraRedirect: String?

    public var clipboard: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var netRedirectPolicy: CreatePolicyGroupRequest.NetRedirectPolicy?

    public var policyGroupName: String?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.netRedirectPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.netRedirectPolicy != nil {
            map["NetRedirectPolicy"] = self.netRedirectPolicy?.toMap()
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CameraRedirect") {
            self.cameraRedirect = dict["CameraRedirect"] as! String
        }
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! String
        }
        if dict.keys.contains("Html5FileTransfer") {
            self.html5FileTransfer = dict["Html5FileTransfer"] as! String
        }
        if dict.keys.contains("LocalDrive") {
            self.localDrive = dict["LocalDrive"] as! String
        }
        if dict.keys.contains("NetRedirectPolicy") {
            var model = CreatePolicyGroupRequest.NetRedirectPolicy()
            model.fromMap(dict["NetRedirectPolicy"] as! [String: Any])
            self.netRedirectPolicy = model
        }
        if dict.keys.contains("PolicyGroupName") {
            self.policyGroupName = dict["PolicyGroupName"] as! String
        }
        if dict.keys.contains("ResolutionHeight") {
            self.resolutionHeight = dict["ResolutionHeight"] as! Int32
        }
        if dict.keys.contains("ResolutionWidth") {
            self.resolutionWidth = dict["ResolutionWidth"] as! Int32
        }
    }
}

public class CreatePolicyGroupShrinkRequest : Tea.TeaModel {
    public var cameraRedirect: String?

    public var clipboard: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var netRedirectPolicyShrink: String?

    public var policyGroupName: String?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.netRedirectPolicyShrink != nil {
            map["NetRedirectPolicy"] = self.netRedirectPolicyShrink!
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CameraRedirect") {
            self.cameraRedirect = dict["CameraRedirect"] as! String
        }
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! String
        }
        if dict.keys.contains("Html5FileTransfer") {
            self.html5FileTransfer = dict["Html5FileTransfer"] as! String
        }
        if dict.keys.contains("LocalDrive") {
            self.localDrive = dict["LocalDrive"] as! String
        }
        if dict.keys.contains("NetRedirectPolicy") {
            self.netRedirectPolicyShrink = dict["NetRedirectPolicy"] as! String
        }
        if dict.keys.contains("PolicyGroupName") {
            self.policyGroupName = dict["PolicyGroupName"] as! String
        }
        if dict.keys.contains("ResolutionHeight") {
            self.resolutionHeight = dict["ResolutionHeight"] as! Int32
        }
        if dict.keys.contains("ResolutionWidth") {
            self.resolutionWidth = dict["ResolutionWidth"] as! Int32
        }
    }
}

public class CreatePolicyGroupResponseBody : Tea.TeaModel {
    public var policyGroupId: String?

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
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreatePolicyGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAndroidInstanceGroupRequest : Tea.TeaModel {
    public var instanceGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceGroupIds") {
            self.instanceGroupIds = dict["InstanceGroupIds"] as! [String]
        }
    }
}

public class DeleteAndroidInstanceGroupResponseBody : Tea.TeaModel {
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

public class DeleteAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAndroidInstanceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAndroidInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppsRequest : Tea.TeaModel {
    public var appIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIdList != nil {
            map["AppIdList"] = self.appIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppIdList") {
            self.appIdList = dict["AppIdList"] as! [String]
        }
    }
}

public class DeleteAppsResponseBody : Tea.TeaModel {
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

public class DeleteAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteImagesRequest : Tea.TeaModel {
    public var imageIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageIds != nil {
            map["ImageIds"] = self.imageIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageIds") {
            self.imageIds = dict["ImageIds"] as! [String]
        }
    }
}

public class DeleteImagesShrinkRequest : Tea.TeaModel {
    public var imageIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageIdsShrink != nil {
            map["ImageIds"] = self.imageIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageIds") {
            self.imageIdsShrink = dict["ImageIds"] as! String
        }
    }
}

public class DeleteImagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failDeleteImageIds: [String]?

        public var successDeleteImageIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failDeleteImageIds != nil {
                map["FailDeleteImageIds"] = self.failDeleteImageIds!
            }
            if self.successDeleteImageIds != nil {
                map["SuccessDeleteImageIds"] = self.successDeleteImageIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailDeleteImageIds") {
                self.failDeleteImageIds = dict["FailDeleteImageIds"] as! [String]
            }
            if dict.keys.contains("SuccessDeleteImageIds") {
                self.successDeleteImageIds = dict["SuccessDeleteImageIds"] as! [String]
            }
        }
    }
    public var data: DeleteImagesResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DeleteImagesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteKeyPairsRequest : Tea.TeaModel {
    public var keyPairIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPairIds != nil {
            map["KeyPairIds"] = self.keyPairIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyPairIds") {
            self.keyPairIds = dict["KeyPairIds"] as! [String]
        }
    }
}

public class DeleteKeyPairsResponseBody : Tea.TeaModel {
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

public class DeleteKeyPairsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKeyPairsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteKeyPairsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePolicyGroupRequest : Tea.TeaModel {
    public var policyGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyGroupIds != nil {
            map["PolicyGroupIds"] = self.policyGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyGroupIds") {
            self.policyGroupIds = dict["PolicyGroupIds"] as! [String]
        }
    }
}

public class DeletePolicyGroupResponseBody : Tea.TeaModel {
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

public class DeletePolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeletePolicyGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAndroidInstanceGroupsRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var chargeType: String?

    public var instanceGroupIds: [String]?

    public var instanceGroupName: String?

    public var keyPairId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var policyGroupId: String?

    public var saleMode: String?

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
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.instanceGroupName != nil {
            map["InstanceGroupName"] = self.instanceGroupName!
        }
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("InstanceGroupIds") {
            self.instanceGroupIds = dict["InstanceGroupIds"] as! [String]
        }
        if dict.keys.contains("InstanceGroupName") {
            self.instanceGroupName = dict["InstanceGroupName"] as! String
        }
        if dict.keys.contains("KeyPairId") {
            self.keyPairId = dict["KeyPairId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("SaleMode") {
            self.saleMode = dict["SaleMode"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeAndroidInstanceGroupsResponseBody : Tea.TeaModel {
    public class InstanceGroupModel : Tea.TeaModel {
        public class Disks : Tea.TeaModel {
            public var diskSize: Int32?

            public var diskType: String?

            public override init() {
                super.init()
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
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DiskSize") {
                    self.diskSize = dict["DiskSize"] as! Int32
                }
                if dict.keys.contains("DiskType") {
                    self.diskType = dict["DiskType"] as! String
                }
            }
        }
        public var appInstanceGroupId: String?

        public var architectureType: String?

        public var chargeType: String?

        public var cpu: String?

        public var disks: [DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel.Disks]?

        public var errorCode: String?

        public var gmtCreate: String?

        public var gmtExpired: String?

        public var gmtModified: String?

        public var imageId: String?

        public var installedAppList: String?

        public var instanceGroupId: String?

        public var instanceGroupName: String?

        public var instanceGroupSpec: String?

        public var instanceGroupSpecDescribe: String?

        public var instanceGroupStatus: String?

        public var memory: Int32?

        public var numberOfInstances: String?

        public var officeSiteId: String?

        public var policyGroupId: String?

        public var regionId: String?

        public var renderingType: String?

        public var resolutionHeight: Int32?

        public var resolutionWidth: Int32?

        public var saleMode: String?

        public var systemVersion: String?

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
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.architectureType != nil {
                map["ArchitectureType"] = self.architectureType!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.disks != nil {
                var tmp : [Any] = []
                for k in self.disks! {
                    tmp.append(k.toMap())
                }
                map["Disks"] = tmp
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtExpired != nil {
                map["GmtExpired"] = self.gmtExpired!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.installedAppList != nil {
                map["InstalledAppList"] = self.installedAppList!
            }
            if self.instanceGroupId != nil {
                map["InstanceGroupId"] = self.instanceGroupId!
            }
            if self.instanceGroupName != nil {
                map["InstanceGroupName"] = self.instanceGroupName!
            }
            if self.instanceGroupSpec != nil {
                map["InstanceGroupSpec"] = self.instanceGroupSpec!
            }
            if self.instanceGroupSpecDescribe != nil {
                map["InstanceGroupSpecDescribe"] = self.instanceGroupSpecDescribe!
            }
            if self.instanceGroupStatus != nil {
                map["InstanceGroupStatus"] = self.instanceGroupStatus!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.numberOfInstances != nil {
                map["NumberOfInstances"] = self.numberOfInstances!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.renderingType != nil {
                map["RenderingType"] = self.renderingType!
            }
            if self.resolutionHeight != nil {
                map["ResolutionHeight"] = self.resolutionHeight!
            }
            if self.resolutionWidth != nil {
                map["ResolutionWidth"] = self.resolutionWidth!
            }
            if self.saleMode != nil {
                map["SaleMode"] = self.saleMode!
            }
            if self.systemVersion != nil {
                map["SystemVersion"] = self.systemVersion!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInstanceGroupId") {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("ArchitectureType") {
                self.architectureType = dict["ArchitectureType"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! String
            }
            if dict.keys.contains("Disks") {
                var tmp : [DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel.Disks] = []
                for v in dict["Disks"] as! [Any] {
                    var model = DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel.Disks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.disks = tmp
            }
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtExpired") {
                self.gmtExpired = dict["GmtExpired"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("InstalledAppList") {
                self.installedAppList = dict["InstalledAppList"] as! String
            }
            if dict.keys.contains("InstanceGroupId") {
                self.instanceGroupId = dict["InstanceGroupId"] as! String
            }
            if dict.keys.contains("InstanceGroupName") {
                self.instanceGroupName = dict["InstanceGroupName"] as! String
            }
            if dict.keys.contains("InstanceGroupSpec") {
                self.instanceGroupSpec = dict["InstanceGroupSpec"] as! String
            }
            if dict.keys.contains("InstanceGroupSpecDescribe") {
                self.instanceGroupSpecDescribe = dict["InstanceGroupSpecDescribe"] as! String
            }
            if dict.keys.contains("InstanceGroupStatus") {
                self.instanceGroupStatus = dict["InstanceGroupStatus"] as! String
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int32
            }
            if dict.keys.contains("NumberOfInstances") {
                self.numberOfInstances = dict["NumberOfInstances"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("PolicyGroupId") {
                self.policyGroupId = dict["PolicyGroupId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RenderingType") {
                self.renderingType = dict["RenderingType"] as! String
            }
            if dict.keys.contains("ResolutionHeight") {
                self.resolutionHeight = dict["ResolutionHeight"] as! Int32
            }
            if dict.keys.contains("ResolutionWidth") {
                self.resolutionWidth = dict["ResolutionWidth"] as! Int32
            }
            if dict.keys.contains("SaleMode") {
                self.saleMode = dict["SaleMode"] as! String
            }
            if dict.keys.contains("SystemVersion") {
                self.systemVersion = dict["SystemVersion"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
        }
    }
    public var instanceGroupModel: [DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel]?

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
        if self.instanceGroupModel != nil {
            var tmp : [Any] = []
            for k in self.instanceGroupModel! {
                tmp.append(k.toMap())
            }
            map["InstanceGroupModel"] = tmp
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
        if dict.keys.contains("InstanceGroupModel") {
            var tmp : [DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel] = []
            for v in dict["InstanceGroupModel"] as! [Any] {
                var model = DescribeAndroidInstanceGroupsResponseBody.InstanceGroupModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceGroupModel = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAndroidInstanceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAndroidInstanceGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeAndroidInstanceGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAndroidInstancesRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var androidInstanceName: String?

    public var instanceGroupId: String?

    public var instanceGroupIds: [String]?

    public var keyPairId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var saleMode: String?

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
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.androidInstanceName != nil {
            map["AndroidInstanceName"] = self.androidInstanceName!
        }
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.saleMode != nil {
            map["SaleMode"] = self.saleMode!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIds") {
            self.androidInstanceIds = dict["AndroidInstanceIds"] as! [String]
        }
        if dict.keys.contains("AndroidInstanceName") {
            self.androidInstanceName = dict["AndroidInstanceName"] as! String
        }
        if dict.keys.contains("InstanceGroupId") {
            self.instanceGroupId = dict["InstanceGroupId"] as! String
        }
        if dict.keys.contains("InstanceGroupIds") {
            self.instanceGroupIds = dict["InstanceGroupIds"] as! [String]
        }
        if dict.keys.contains("KeyPairId") {
            self.keyPairId = dict["KeyPairId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("SaleMode") {
            self.saleMode = dict["SaleMode"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeAndroidInstancesResponseBody : Tea.TeaModel {
    public class InstanceModel : Tea.TeaModel {
        public var androidInstanceGroupId: String?

        public var androidInstanceId: String?

        public var androidInstanceName: String?

        public var androidInstanceStatus: String?

        public var appInstanceGroupId: String?

        public var appInstanceId: String?

        public var authorizedUserId: String?

        public var bindUserId: String?

        public var errorCode: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var keyPairId: String?

        public var networkInterfaceIp: String?

        public var persistentAppInstanceId: String?

        public var rate: Int32?

        public var regionId: String?

        public var renderingType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidInstanceGroupId != nil {
                map["AndroidInstanceGroupId"] = self.androidInstanceGroupId!
            }
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.androidInstanceName != nil {
                map["AndroidInstanceName"] = self.androidInstanceName!
            }
            if self.androidInstanceStatus != nil {
                map["AndroidInstanceStatus"] = self.androidInstanceStatus!
            }
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
            }
            if self.authorizedUserId != nil {
                map["AuthorizedUserId"] = self.authorizedUserId!
            }
            if self.bindUserId != nil {
                map["BindUserId"] = self.bindUserId!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.networkInterfaceIp != nil {
                map["NetworkInterfaceIp"] = self.networkInterfaceIp!
            }
            if self.persistentAppInstanceId != nil {
                map["PersistentAppInstanceId"] = self.persistentAppInstanceId!
            }
            if self.rate != nil {
                map["Rate"] = self.rate!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.renderingType != nil {
                map["RenderingType"] = self.renderingType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AndroidInstanceGroupId") {
                self.androidInstanceGroupId = dict["AndroidInstanceGroupId"] as! String
            }
            if dict.keys.contains("AndroidInstanceId") {
                self.androidInstanceId = dict["AndroidInstanceId"] as! String
            }
            if dict.keys.contains("AndroidInstanceName") {
                self.androidInstanceName = dict["AndroidInstanceName"] as! String
            }
            if dict.keys.contains("AndroidInstanceStatus") {
                self.androidInstanceStatus = dict["AndroidInstanceStatus"] as! String
            }
            if dict.keys.contains("AppInstanceGroupId") {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("AppInstanceId") {
                self.appInstanceId = dict["AppInstanceId"] as! String
            }
            if dict.keys.contains("AuthorizedUserId") {
                self.authorizedUserId = dict["AuthorizedUserId"] as! String
            }
            if dict.keys.contains("BindUserId") {
                self.bindUserId = dict["BindUserId"] as! String
            }
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("KeyPairId") {
                self.keyPairId = dict["KeyPairId"] as! String
            }
            if dict.keys.contains("NetworkInterfaceIp") {
                self.networkInterfaceIp = dict["NetworkInterfaceIp"] as! String
            }
            if dict.keys.contains("PersistentAppInstanceId") {
                self.persistentAppInstanceId = dict["PersistentAppInstanceId"] as! String
            }
            if dict.keys.contains("Rate") {
                self.rate = dict["Rate"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RenderingType") {
                self.renderingType = dict["RenderingType"] as! String
            }
        }
    }
    public var instanceModel: [DescribeAndroidInstancesResponseBody.InstanceModel]?

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
        if self.instanceModel != nil {
            var tmp : [Any] = []
            for k in self.instanceModel! {
                tmp.append(k.toMap())
            }
            map["InstanceModel"] = tmp
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
        if dict.keys.contains("InstanceModel") {
            var tmp : [DescribeAndroidInstancesResponseBody.InstanceModel] = []
            for v in dict["InstanceModel"] as! [Any] {
                var model = DescribeAndroidInstancesResponseBody.InstanceModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceModel = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAndroidInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAndroidInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeAndroidInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsRequest : Tea.TeaModel {
    public var appIdList: [String]?

    public var appName: String?

    public var bizRegionId: String?

    public var installationStatus: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.appIdList != nil {
            map["AppIdList"] = self.appIdList!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.installationStatus != nil {
            map["InstallationStatus"] = self.installationStatus!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppIdList") {
            self.appIdList = dict["AppIdList"] as! [String]
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("InstallationStatus") {
            self.installationStatus = dict["InstallationStatus"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeAppsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var androidAppVersion: String?

        public var appId: Int32?

        public var appName: String?

        public var bizRegionId: String?

        public var description_: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var iconUrl: String?

        public var installationStatus: String?

        public var instanceGroupList: [String]?

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
            if self.androidAppVersion != nil {
                map["AndroidAppVersion"] = self.androidAppVersion!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.bizRegionId != nil {
                map["BizRegionId"] = self.bizRegionId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.iconUrl != nil {
                map["IconUrl"] = self.iconUrl!
            }
            if self.installationStatus != nil {
                map["InstallationStatus"] = self.installationStatus!
            }
            if self.instanceGroupList != nil {
                map["InstanceGroupList"] = self.instanceGroupList!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AndroidAppVersion") {
                self.androidAppVersion = dict["AndroidAppVersion"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! Int32
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("BizRegionId") {
                self.bizRegionId = dict["BizRegionId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IconUrl") {
                self.iconUrl = dict["IconUrl"] as! String
            }
            if dict.keys.contains("InstallationStatus") {
                self.installationStatus = dict["InstallationStatus"] as! String
            }
            if dict.keys.contains("InstanceGroupList") {
                self.instanceGroupList = dict["InstanceGroupList"] as! [String]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var data: [DescribeAppsResponseBody.Data]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeAppsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAppsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupFilesRequest : Tea.TeaModel {
    public var androidInstanceId: String?

    public var androidInstanceName: String?

    public var backupFileId: String?

    public var backupFileName: String?

    public var description_: String?

    public var endTime: String?

    public var endUserId: String?

    public var instanceGroupId: String?

    public var maxResults: Int64?

    public var nextToken: String?

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
        if self.androidInstanceId != nil {
            map["AndroidInstanceId"] = self.androidInstanceId!
        }
        if self.androidInstanceName != nil {
            map["AndroidInstanceName"] = self.androidInstanceName!
        }
        if self.backupFileId != nil {
            map["BackupFileId"] = self.backupFileId!
        }
        if self.backupFileName != nil {
            map["BackupFileName"] = self.backupFileName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceId") {
            self.androidInstanceId = dict["AndroidInstanceId"] as! String
        }
        if dict.keys.contains("AndroidInstanceName") {
            self.androidInstanceName = dict["AndroidInstanceName"] as! String
        }
        if dict.keys.contains("BackupFileId") {
            self.backupFileId = dict["BackupFileId"] as! String
        }
        if dict.keys.contains("BackupFileName") {
            self.backupFileName = dict["BackupFileName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("InstanceGroupId") {
            self.instanceGroupId = dict["InstanceGroupId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeBackupFilesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var androidInstanceId: String?

        public var androidInstanceName: String?

        public var backupFileId: String?

        public var backupFileName: String?

        public var backupFilePath: String?

        public var description_: String?

        public var endUserId: String?

        public var fileSize: Int64?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var instanceGroupId: String?

        public var sourceFilePathList: [String]?

        public var status: String?

        public var uploadEndpoint: String?

        public var uploadType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidInstanceId != nil {
                map["AndroidInstanceId"] = self.androidInstanceId!
            }
            if self.androidInstanceName != nil {
                map["AndroidInstanceName"] = self.androidInstanceName!
            }
            if self.backupFileId != nil {
                map["BackupFileId"] = self.backupFileId!
            }
            if self.backupFileName != nil {
                map["BackupFileName"] = self.backupFileName!
            }
            if self.backupFilePath != nil {
                map["BackupFilePath"] = self.backupFilePath!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.instanceGroupId != nil {
                map["InstanceGroupId"] = self.instanceGroupId!
            }
            if self.sourceFilePathList != nil {
                map["SourceFilePathList"] = self.sourceFilePathList!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.uploadEndpoint != nil {
                map["UploadEndpoint"] = self.uploadEndpoint!
            }
            if self.uploadType != nil {
                map["UploadType"] = self.uploadType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AndroidInstanceId") {
                self.androidInstanceId = dict["AndroidInstanceId"] as! String
            }
            if dict.keys.contains("AndroidInstanceName") {
                self.androidInstanceName = dict["AndroidInstanceName"] as! String
            }
            if dict.keys.contains("BackupFileId") {
                self.backupFileId = dict["BackupFileId"] as! String
            }
            if dict.keys.contains("BackupFileName") {
                self.backupFileName = dict["BackupFileName"] as! String
            }
            if dict.keys.contains("BackupFilePath") {
                self.backupFilePath = dict["BackupFilePath"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("FileSize") {
                self.fileSize = dict["FileSize"] as! Int64
            }
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("InstanceGroupId") {
                self.instanceGroupId = dict["InstanceGroupId"] as! String
            }
            if dict.keys.contains("SourceFilePathList") {
                self.sourceFilePathList = dict["SourceFilePathList"] as! [String]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UploadEndpoint") {
                self.uploadEndpoint = dict["UploadEndpoint"] as! String
            }
            if dict.keys.contains("UploadType") {
                self.uploadType = dict["UploadType"] as! String
            }
        }
    }
    public var data: [DescribeBackupFilesResponseBody.Data]?

    public var maxResults: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if dict.keys.contains("Data") {
            var tmp : [DescribeBackupFilesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeBackupFilesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
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

public class DescribeBackupFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeBackupFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageListRequest : Tea.TeaModel {
    public var imageId: String?

    public var imageName: String?

    public var imageType: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("ImageType") {
            self.imageType = dict["ImageType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeImageListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var description_: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var imageId: String?

        public var imageName: String?

        public var imageRegionDistributeMap: [String: DataImageRegionDistributeMapValue]?

        public var imageRegionList: [String]?

        public var imageType: String?

        public var language: String?

        public var releaseTime: String?

        public var renderingType: String?

        public var status: String?

        public var systemType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.imageRegionDistributeMap != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.imageRegionDistributeMap! {
                    tmp[k] = v.toMap()
                }
                map["ImageRegionDistributeMap"] = tmp
            }
            if self.imageRegionList != nil {
                map["ImageRegionList"] = self.imageRegionList!
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.releaseTime != nil {
                map["ReleaseTime"] = self.releaseTime!
            }
            if self.renderingType != nil {
                map["RenderingType"] = self.renderingType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.systemType != nil {
                map["SystemType"] = self.systemType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageName") {
                self.imageName = dict["ImageName"] as! String
            }
            if dict.keys.contains("ImageRegionDistributeMap") {
                var tmp : [String: DataImageRegionDistributeMapValue] = [:]
                for (k, v) in dict["ImageRegionDistributeMap"] as! [String: Any] {
                    if v != nil {
                        var model = DataImageRegionDistributeMapValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.imageRegionDistributeMap = tmp
            }
            if dict.keys.contains("ImageRegionList") {
                self.imageRegionList = dict["ImageRegionList"] as! [String]
            }
            if dict.keys.contains("ImageType") {
                self.imageType = dict["ImageType"] as! String
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("ReleaseTime") {
                self.releaseTime = dict["ReleaseTime"] as! String
            }
            if dict.keys.contains("RenderingType") {
                self.renderingType = dict["RenderingType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SystemType") {
                self.systemType = dict["SystemType"] as! String
            }
        }
    }
    public var data: [DescribeImageListResponseBody.Data]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeImageListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeImageListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeImageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeImageListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInvocationsRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var invocationId: String?

    public override init() {
        super.init()
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
        if self.invocationId != nil {
            map["InvocationId"] = self.invocationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("InvocationId") {
            self.invocationId = dict["InvocationId"] as! String
        }
    }
}

public class DescribeInvocationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var finishTime: String?

        public var instanceId: String?

        public var invocationId: String?

        public var invocationStatus: String?

        public var output: String?

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
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.invocationId != nil {
                map["InvocationId"] = self.invocationId!
            }
            if self.invocationStatus != nil {
                map["InvocationStatus"] = self.invocationStatus!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinishTime") {
                self.finishTime = dict["FinishTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InvocationId") {
                self.invocationId = dict["InvocationId"] as! String
            }
            if dict.keys.contains("InvocationStatus") {
                self.invocationStatus = dict["InvocationStatus"] as! String
            }
            if dict.keys.contains("Output") {
                self.output = dict["Output"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var data: [DescribeInvocationsResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if dict.keys.contains("Data") {
            var tmp : [DescribeInvocationsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeInvocationsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class DescribeInvocationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInvocationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeInvocationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeKeyPairsRequest : Tea.TeaModel {
    public var keyPairIds: [String]?

    public var keyPairName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPairIds != nil {
            map["KeyPairIds"] = self.keyPairIds!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyPairIds") {
            self.keyPairIds = dict["KeyPairIds"] as! [String]
        }
        if dict.keys.contains("KeyPairName") {
            self.keyPairName = dict["KeyPairName"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class DescribeKeyPairsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreated: String?

        public var keyPairId: String?

        public var keyPairName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("KeyPairId") {
                self.keyPairId = dict["KeyPairId"] as! String
            }
            if dict.keys.contains("KeyPairName") {
                self.keyPairName = dict["KeyPairName"] as! String
            }
        }
    }
    public var data: [DescribeKeyPairsResponseBody.Data]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeKeyPairsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeKeyPairsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeKeyPairsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeKeyPairsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeKeyPairsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class RegionModels : Tea.TeaModel {
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
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var regionModels: [DescribeRegionsResponseBody.RegionModels]?

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
        if self.regionModels != nil {
            var tmp : [Any] = []
            for k in self.regionModels! {
                tmp.append(k.toMap())
            }
            map["RegionModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionModels") {
            var tmp : [DescribeRegionsResponseBody.RegionModels] = []
            for v in dict["RegionModels"] as! [Any] {
                var model = DescribeRegionsResponseBody.RegionModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regionModels = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class DescribeSpecRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var specIds: [String]?

    public var specStatus: String?

    public var specType: String?

    public override init() {
        super.init()
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
        if self.specIds != nil {
            map["SpecIds"] = self.specIds!
        }
        if self.specStatus != nil {
            map["SpecStatus"] = self.specStatus!
        }
        if self.specType != nil {
            map["SpecType"] = self.specType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("SpecIds") {
            self.specIds = dict["SpecIds"] as! [String]
        }
        if dict.keys.contains("SpecStatus") {
            self.specStatus = dict["SpecStatus"] as! String
        }
        if dict.keys.contains("SpecType") {
            self.specType = dict["SpecType"] as! String
        }
    }
}

public class DescribeSpecResponseBody : Tea.TeaModel {
    public class SpecInfoModel : Tea.TeaModel {
        public var core: Int32?

        public var memory: Int32?

        public var specId: String?

        public var specStatus: String?

        public var specType: String?

        public var systemDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.core != nil {
                map["Core"] = self.core!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.specId != nil {
                map["SpecId"] = self.specId!
            }
            if self.specStatus != nil {
                map["SpecStatus"] = self.specStatus!
            }
            if self.specType != nil {
                map["SpecType"] = self.specType!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Core") {
                self.core = dict["Core"] as! Int32
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int32
            }
            if dict.keys.contains("SpecId") {
                self.specId = dict["SpecId"] as! String
            }
            if dict.keys.contains("SpecStatus") {
                self.specStatus = dict["SpecStatus"] as! String
            }
            if dict.keys.contains("SpecType") {
                self.specType = dict["SpecType"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! Int32
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var specInfoModel: [DescribeSpecResponseBody.SpecInfoModel]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.specInfoModel != nil {
            var tmp : [Any] = []
            for k in self.specInfoModel! {
                tmp.append(k.toMap())
            }
            map["SpecInfoModel"] = tmp
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
        if dict.keys.contains("SpecInfoModel") {
            var tmp : [DescribeSpecResponseBody.SpecInfoModel] = []
            for v in dict["SpecInfoModel"] as! [Any] {
                var model = DescribeSpecResponseBody.SpecInfoModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.specInfoModel = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTasksRequest : Tea.TeaModel {
    public var invokeId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceIds: [String]?

    public var taskIds: [String]?

    public var taskStatus: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.taskIds != nil {
            map["TaskIds"] = self.taskIds!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("TaskIds") {
            self.taskIds = dict["TaskIds"] as! [String]
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class DescribeTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var finishTime: String?

        public var invokeId: String?

        public var regionId: String?

        public var resourceId: String?

        public var result: String?

        public var startTime: String?

        public var taskId: String?

        public var taskStatus: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.invokeId != nil {
                map["InvokeId"] = self.invokeId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinishTime") {
                self.finishTime = dict["FinishTime"] as! String
            }
            if dict.keys.contains("InvokeId") {
                self.invokeId = dict["InvokeId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var data: [DescribeTasksResponseBody.Data]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeTasksResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeTasksResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachKeyPairRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var keyPairId: String?

    public override init() {
        super.init()
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
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("KeyPairId") {
            self.keyPairId = dict["KeyPairId"] as! String
        }
    }
}

public class DetachKeyPairResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detachedInstanceIds: [String]?

        public var failCount: Int32?

        public var keyPairId: String?

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
            if self.detachedInstanceIds != nil {
                map["DetachedInstanceIds"] = self.detachedInstanceIds!
            }
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetachedInstanceIds") {
                self.detachedInstanceIds = dict["DetachedInstanceIds"] as! [String]
            }
            if dict.keys.contains("FailCount") {
                self.failCount = dict["FailCount"] as! Int32
            }
            if dict.keys.contains("KeyPairId") {
                self.keyPairId = dict["KeyPairId"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: DetachKeyPairResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DetachKeyPairResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetachKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachKeyPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DetachKeyPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DistributeImageRequest : Tea.TeaModel {
    public var distributeRegionList: [String]?

    public var imageId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distributeRegionList != nil {
            map["DistributeRegionList"] = self.distributeRegionList!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistributeRegionList") {
            self.distributeRegionList = dict["DistributeRegionList"] as! [String]
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
    }
}

public class DistributeImageResponseBody : Tea.TeaModel {
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

public class DistributeImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DistributeImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DistributeImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DowngradeAndroidInstanceGroupRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var autoPay: Bool?

    public var instanceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIds") {
            self.androidInstanceIds = dict["AndroidInstanceIds"] as! [String]
        }
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("InstanceGroupId") {
            self.instanceGroupId = dict["InstanceGroupId"] as! String
        }
    }
}

public class DowngradeAndroidInstanceGroupResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DowngradeAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DowngradeAndroidInstanceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DowngradeAndroidInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FetchFileRequest : Tea.TeaModel {
    public var androidInstanceIdList: [String]?

    public var sourceFilePath: String?

    public var uploadEndpoint: String?

    public var uploadType: String?

    public var uploadUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIdList != nil {
            map["AndroidInstanceIdList"] = self.androidInstanceIdList!
        }
        if self.sourceFilePath != nil {
            map["SourceFilePath"] = self.sourceFilePath!
        }
        if self.uploadEndpoint != nil {
            map["UploadEndpoint"] = self.uploadEndpoint!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        if self.uploadUrl != nil {
            map["UploadUrl"] = self.uploadUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIdList") {
            self.androidInstanceIdList = dict["AndroidInstanceIdList"] as! [String]
        }
        if dict.keys.contains("SourceFilePath") {
            self.sourceFilePath = dict["SourceFilePath"] as! String
        }
        if dict.keys.contains("UploadEndpoint") {
            self.uploadEndpoint = dict["UploadEndpoint"] as! String
        }
        if dict.keys.contains("UploadType") {
            self.uploadType = dict["UploadType"] as! String
        }
        if dict.keys.contains("UploadUrl") {
            self.uploadUrl = dict["UploadUrl"] as! String
        }
    }
}

public class FetchFileResponseBody : Tea.TeaModel {
    public var data: String?

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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FetchFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FetchFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = FetchFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAdbSecureRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
    }
}

public class GetAdbSecureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AdbSecureList : Tea.TeaModel {
            public var instanceId: String?

            public var status: Int32?

            public override init() {
                super.init()
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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var adbSecureList: [GetAdbSecureResponseBody.Data.AdbSecureList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adbSecureList != nil {
                var tmp : [Any] = []
                for k in self.adbSecureList! {
                    tmp.append(k.toMap())
                }
                map["AdbSecureList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdbSecureList") {
                var tmp : [GetAdbSecureResponseBody.Data.AdbSecureList] = []
                for v in dict["AdbSecureList"] as! [Any] {
                    var model = GetAdbSecureResponseBody.Data.AdbSecureList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.adbSecureList = tmp
            }
        }
    }
    public var data: GetAdbSecureResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetAdbSecureResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAdbSecureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAdbSecureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAdbSecureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportKeyPairRequest : Tea.TeaModel {
    public var keyPairName: String?

    public var publicKeyBody: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.publicKeyBody != nil {
            map["PublicKeyBody"] = self.publicKeyBody!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyPairName") {
            self.keyPairName = dict["KeyPairName"] as! String
        }
        if dict.keys.contains("PublicKeyBody") {
            self.publicKeyBody = dict["PublicKeyBody"] as! String
        }
    }
}

public class ImportKeyPairResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreated: String?

        public var keyPairId: String?

        public var keyPairName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.keyPairId != nil {
                map["KeyPairId"] = self.keyPairId!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("KeyPairId") {
                self.keyPairId = dict["KeyPairId"] as! String
            }
            if dict.keys.contains("KeyPairName") {
                self.keyPairName = dict["KeyPairName"] as! String
            }
        }
    }
    public var data: ImportKeyPairResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ImportKeyPairResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImportKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportKeyPairResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ImportKeyPairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstallAppRequest : Tea.TeaModel {
    public var appIdList: [String]?

    public var instanceGroupIdList: [String]?

    public var instanceIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIdList != nil {
            map["AppIdList"] = self.appIdList!
        }
        if self.instanceGroupIdList != nil {
            map["InstanceGroupIdList"] = self.instanceGroupIdList!
        }
        if self.instanceIdList != nil {
            map["InstanceIdList"] = self.instanceIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppIdList") {
            self.appIdList = dict["AppIdList"] as! [String]
        }
        if dict.keys.contains("InstanceGroupIdList") {
            self.instanceGroupIdList = dict["InstanceGroupIdList"] as! [String]
        }
        if dict.keys.contains("InstanceIdList") {
            self.instanceIdList = dict["InstanceIdList"] as! [String]
        }
    }
}

public class InstallAppResponseBody : Tea.TeaModel {
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

public class InstallAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = InstallAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicyGroupsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var policyGroupIds: [String]?

    public var policyGroupName: String?

    public override init() {
        super.init()
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
        if self.policyGroupIds != nil {
            map["PolicyGroupIds"] = self.policyGroupIds!
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PolicyGroupIds") {
            self.policyGroupIds = dict["PolicyGroupIds"] as! [String]
        }
        if dict.keys.contains("PolicyGroupName") {
            self.policyGroupName = dict["PolicyGroupName"] as! String
        }
    }
}

public class ListPolicyGroupsResponseBody : Tea.TeaModel {
    public class PolicyGroupModel : Tea.TeaModel {
        public class NetRedirectPolicy : Tea.TeaModel {
            public var netRedirect: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.netRedirect != nil {
                    map["NetRedirect"] = self.netRedirect!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NetRedirect") {
                    self.netRedirect = dict["NetRedirect"] as! String
                }
            }
        }
        public var cameraRedirect: String?

        public var clipboard: String?

        public var gmtCreate: String?

        public var html5FileTransfer: String?

        public var localDrive: String?

        public var netRedirectPolicy: ListPolicyGroupsResponseBody.PolicyGroupModel.NetRedirectPolicy?

        public var policyGroupId: String?

        public var policyGroupName: String?

        public var sessionResolutionHeight: String?

        public var sessionResolutionWidth: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.netRedirectPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cameraRedirect != nil {
                map["CameraRedirect"] = self.cameraRedirect!
            }
            if self.clipboard != nil {
                map["Clipboard"] = self.clipboard!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.html5FileTransfer != nil {
                map["Html5FileTransfer"] = self.html5FileTransfer!
            }
            if self.localDrive != nil {
                map["LocalDrive"] = self.localDrive!
            }
            if self.netRedirectPolicy != nil {
                map["NetRedirectPolicy"] = self.netRedirectPolicy?.toMap()
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.policyGroupName != nil {
                map["PolicyGroupName"] = self.policyGroupName!
            }
            if self.sessionResolutionHeight != nil {
                map["SessionResolutionHeight"] = self.sessionResolutionHeight!
            }
            if self.sessionResolutionWidth != nil {
                map["SessionResolutionWidth"] = self.sessionResolutionWidth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CameraRedirect") {
                self.cameraRedirect = dict["CameraRedirect"] as! String
            }
            if dict.keys.contains("Clipboard") {
                self.clipboard = dict["Clipboard"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("Html5FileTransfer") {
                self.html5FileTransfer = dict["Html5FileTransfer"] as! String
            }
            if dict.keys.contains("LocalDrive") {
                self.localDrive = dict["LocalDrive"] as! String
            }
            if dict.keys.contains("NetRedirectPolicy") {
                var model = ListPolicyGroupsResponseBody.PolicyGroupModel.NetRedirectPolicy()
                model.fromMap(dict["NetRedirectPolicy"] as! [String: Any])
                self.netRedirectPolicy = model
            }
            if dict.keys.contains("PolicyGroupId") {
                self.policyGroupId = dict["PolicyGroupId"] as! String
            }
            if dict.keys.contains("PolicyGroupName") {
                self.policyGroupName = dict["PolicyGroupName"] as! String
            }
            if dict.keys.contains("SessionResolutionHeight") {
                self.sessionResolutionHeight = dict["SessionResolutionHeight"] as! String
            }
            if dict.keys.contains("SessionResolutionWidth") {
                self.sessionResolutionWidth = dict["SessionResolutionWidth"] as! String
            }
        }
    }
    public var nextToken: String?

    public var policyGroupModel: [ListPolicyGroupsResponseBody.PolicyGroupModel]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policyGroupModel != nil {
            var tmp : [Any] = []
            for k in self.policyGroupModel! {
                tmp.append(k.toMap())
            }
            map["PolicyGroupModel"] = tmp
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
        if dict.keys.contains("PolicyGroupModel") {
            var tmp : [ListPolicyGroupsResponseBody.PolicyGroupModel] = []
            for v in dict["PolicyGroupModel"] as! [Any] {
                var model = ListPolicyGroupsResponseBody.PolicyGroupModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policyGroupModel = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListPolicyGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicyGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPolicyGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAndroidInstanceRequest : Tea.TeaModel {
    public var androidInstanceId: String?

    public var newAndroidInstanceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceId != nil {
            map["AndroidInstanceId"] = self.androidInstanceId!
        }
        if self.newAndroidInstanceName != nil {
            map["NewAndroidInstanceName"] = self.newAndroidInstanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceId") {
            self.androidInstanceId = dict["AndroidInstanceId"] as! String
        }
        if dict.keys.contains("NewAndroidInstanceName") {
            self.newAndroidInstanceName = dict["NewAndroidInstanceName"] as! String
        }
    }
}

public class ModifyAndroidInstanceResponseBody : Tea.TeaModel {
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

public class ModifyAndroidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAndroidInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyAndroidInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAndroidInstanceGroupRequest : Tea.TeaModel {
    public var instanceGroupId: String?

    public var newInstanceGroupName: String?

    public var policyGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        if self.newInstanceGroupName != nil {
            map["NewInstanceGroupName"] = self.newInstanceGroupName!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceGroupId") {
            self.instanceGroupId = dict["InstanceGroupId"] as! String
        }
        if dict.keys.contains("NewInstanceGroupName") {
            self.newInstanceGroupName = dict["NewInstanceGroupName"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
    }
}

public class ModifyAndroidInstanceGroupResponseBody : Tea.TeaModel {
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

public class ModifyAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAndroidInstanceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyAndroidInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppRequest : Tea.TeaModel {
    public var appId: Int32?

    public var appName: String?

    public var description_: String?

    public var iconUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.iconUrl != nil {
            map["IconUrl"] = self.iconUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! Int32
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IconUrl") {
            self.iconUrl = dict["IconUrl"] as! String
        }
    }
}

public class ModifyAppResponseBody : Tea.TeaModel {
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

public class ModifyAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyKeyPairNameRequest : Tea.TeaModel {
    public var keyPairId: String?

    public var newKeyPairName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyPairId != nil {
            map["KeyPairId"] = self.keyPairId!
        }
        if self.newKeyPairName != nil {
            map["NewKeyPairName"] = self.newKeyPairName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyPairId") {
            self.keyPairId = dict["KeyPairId"] as! String
        }
        if dict.keys.contains("NewKeyPairName") {
            self.newKeyPairName = dict["NewKeyPairName"] as! String
        }
    }
}

public class ModifyKeyPairNameResponseBody : Tea.TeaModel {
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

public class ModifyKeyPairNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyKeyPairNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyKeyPairNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPolicyGroupRequest : Tea.TeaModel {
    public class NetRedirectPolicy : Tea.TeaModel {
        public var netRedirect: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.netRedirect != nil {
                map["NetRedirect"] = self.netRedirect!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NetRedirect") {
                self.netRedirect = dict["NetRedirect"] as! String
            }
        }
    }
    public var cameraRedirect: String?

    public var clipboard: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var netRedirectPolicy: ModifyPolicyGroupRequest.NetRedirectPolicy?

    public var policyGroupId: String?

    public var policyGroupName: String?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.netRedirectPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.netRedirectPolicy != nil {
            map["NetRedirectPolicy"] = self.netRedirectPolicy?.toMap()
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CameraRedirect") {
            self.cameraRedirect = dict["CameraRedirect"] as! String
        }
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! String
        }
        if dict.keys.contains("Html5FileTransfer") {
            self.html5FileTransfer = dict["Html5FileTransfer"] as! String
        }
        if dict.keys.contains("LocalDrive") {
            self.localDrive = dict["LocalDrive"] as! String
        }
        if dict.keys.contains("NetRedirectPolicy") {
            var model = ModifyPolicyGroupRequest.NetRedirectPolicy()
            model.fromMap(dict["NetRedirectPolicy"] as! [String: Any])
            self.netRedirectPolicy = model
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("PolicyGroupName") {
            self.policyGroupName = dict["PolicyGroupName"] as! String
        }
        if dict.keys.contains("ResolutionHeight") {
            self.resolutionHeight = dict["ResolutionHeight"] as! Int32
        }
        if dict.keys.contains("ResolutionWidth") {
            self.resolutionWidth = dict["ResolutionWidth"] as! Int32
        }
    }
}

public class ModifyPolicyGroupShrinkRequest : Tea.TeaModel {
    public var cameraRedirect: String?

    public var clipboard: String?

    public var html5FileTransfer: String?

    public var localDrive: String?

    public var netRedirectPolicyShrink: String?

    public var policyGroupId: String?

    public var policyGroupName: String?

    public var resolutionHeight: Int32?

    public var resolutionWidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cameraRedirect != nil {
            map["CameraRedirect"] = self.cameraRedirect!
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.html5FileTransfer != nil {
            map["Html5FileTransfer"] = self.html5FileTransfer!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.netRedirectPolicyShrink != nil {
            map["NetRedirectPolicy"] = self.netRedirectPolicyShrink!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.policyGroupName != nil {
            map["PolicyGroupName"] = self.policyGroupName!
        }
        if self.resolutionHeight != nil {
            map["ResolutionHeight"] = self.resolutionHeight!
        }
        if self.resolutionWidth != nil {
            map["ResolutionWidth"] = self.resolutionWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CameraRedirect") {
            self.cameraRedirect = dict["CameraRedirect"] as! String
        }
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! String
        }
        if dict.keys.contains("Html5FileTransfer") {
            self.html5FileTransfer = dict["Html5FileTransfer"] as! String
        }
        if dict.keys.contains("LocalDrive") {
            self.localDrive = dict["LocalDrive"] as! String
        }
        if dict.keys.contains("NetRedirectPolicy") {
            self.netRedirectPolicyShrink = dict["NetRedirectPolicy"] as! String
        }
        if dict.keys.contains("PolicyGroupId") {
            self.policyGroupId = dict["PolicyGroupId"] as! String
        }
        if dict.keys.contains("PolicyGroupName") {
            self.policyGroupName = dict["PolicyGroupName"] as! String
        }
        if dict.keys.contains("ResolutionHeight") {
            self.resolutionHeight = dict["ResolutionHeight"] as! Int32
        }
        if dict.keys.contains("ResolutionWidth") {
            self.resolutionWidth = dict["ResolutionWidth"] as! Int32
        }
    }
}

public class ModifyPolicyGroupResponseBody : Tea.TeaModel {
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

public class ModifyPolicyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPolicyGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyPolicyGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebootAndroidInstancesInGroupRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var forceStop: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.forceStop != nil {
            map["ForceStop"] = self.forceStop!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIds") {
            self.androidInstanceIds = dict["AndroidInstanceIds"] as! [String]
        }
        if dict.keys.contains("ForceStop") {
            self.forceStop = dict["ForceStop"] as! Bool
        }
    }
}

public class RebootAndroidInstancesInGroupResponseBody : Tea.TeaModel {
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

public class RebootAndroidInstancesInGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootAndroidInstancesInGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RebootAndroidInstancesInGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoveryFileRequest : Tea.TeaModel {
    public var androidInstanceIdList: [String]?

    public var backupFileId: String?

    public var backupFilePath: String?

    public var uploadEndpoint: String?

    public var uploadType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIdList != nil {
            map["AndroidInstanceIdList"] = self.androidInstanceIdList!
        }
        if self.backupFileId != nil {
            map["BackupFileId"] = self.backupFileId!
        }
        if self.backupFilePath != nil {
            map["BackupFilePath"] = self.backupFilePath!
        }
        if self.uploadEndpoint != nil {
            map["UploadEndpoint"] = self.uploadEndpoint!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIdList") {
            self.androidInstanceIdList = dict["AndroidInstanceIdList"] as! [String]
        }
        if dict.keys.contains("BackupFileId") {
            self.backupFileId = dict["BackupFileId"] as! String
        }
        if dict.keys.contains("BackupFilePath") {
            self.backupFilePath = dict["BackupFilePath"] as! String
        }
        if dict.keys.contains("UploadEndpoint") {
            self.uploadEndpoint = dict["UploadEndpoint"] as! String
        }
        if dict.keys.contains("UploadType") {
            self.uploadType = dict["UploadType"] as! String
        }
    }
}

public class RecoveryFileResponseBody : Tea.TeaModel {
    public var data: String?

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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RecoveryFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoveryFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RecoveryFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewAndroidInstanceGroupsRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var instanceGroupIds: [String]?

    public var period: Int32?

    public var periodUnit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("InstanceGroupIds") {
            self.instanceGroupIds = dict["InstanceGroupIds"] as! [String]
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
    }
}

public class RenewAndroidInstanceGroupsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenewAndroidInstanceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewAndroidInstanceGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RenewAndroidInstanceGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAndroidInstancesInGroupRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIds") {
            self.androidInstanceIds = dict["AndroidInstanceIds"] as! [String]
        }
    }
}

public class ResetAndroidInstancesInGroupResponseBody : Tea.TeaModel {
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

public class ResetAndroidInstancesInGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAndroidInstancesInGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ResetAndroidInstancesInGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunCommandRequest : Tea.TeaModel {
    public var commandContent: String?

    public var instanceIds: [String]?

    public var timeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandContent") {
            self.commandContent = dict["CommandContent"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int64
        }
    }
}

public class RunCommandResponseBody : Tea.TeaModel {
    public var invokeId: String?

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
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCommandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RunCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendFileRequest : Tea.TeaModel {
    public var androidInstanceIdList: [String]?

    public var sourceFilePath: String?

    public var uploadEndpoint: String?

    public var uploadType: String?

    public var uploadUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIdList != nil {
            map["AndroidInstanceIdList"] = self.androidInstanceIdList!
        }
        if self.sourceFilePath != nil {
            map["SourceFilePath"] = self.sourceFilePath!
        }
        if self.uploadEndpoint != nil {
            map["UploadEndpoint"] = self.uploadEndpoint!
        }
        if self.uploadType != nil {
            map["UploadType"] = self.uploadType!
        }
        if self.uploadUrl != nil {
            map["UploadUrl"] = self.uploadUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIdList") {
            self.androidInstanceIdList = dict["AndroidInstanceIdList"] as! [String]
        }
        if dict.keys.contains("SourceFilePath") {
            self.sourceFilePath = dict["SourceFilePath"] as! String
        }
        if dict.keys.contains("UploadEndpoint") {
            self.uploadEndpoint = dict["UploadEndpoint"] as! String
        }
        if dict.keys.contains("UploadType") {
            self.uploadType = dict["UploadType"] as! String
        }
        if dict.keys.contains("UploadUrl") {
            self.uploadUrl = dict["UploadUrl"] as! String
        }
    }
}

public class SendFileResponseBody : Tea.TeaModel {
    public var data: String?

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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SendFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAdbSecureRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var status: Int32?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class SetAdbSecureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failCount: Int32?

        public var instanceIds: [String]?

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
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailCount") {
                self.failCount = dict["FailCount"] as! Int32
            }
            if dict.keys.contains("InstanceIds") {
                self.instanceIds = dict["InstanceIds"] as! [String]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: SetAdbSecureResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SetAdbSecureResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetAdbSecureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAdbSecureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetAdbSecureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartAndroidInstanceRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIds") {
            self.androidInstanceIds = dict["AndroidInstanceIds"] as! [String]
        }
    }
}

public class StartAndroidInstanceResponseBody : Tea.TeaModel {
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

public class StartAndroidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAndroidInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartAndroidInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopAndroidInstanceRequest : Tea.TeaModel {
    public var androidInstanceIds: [String]?

    public var forceStop: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidInstanceIds != nil {
            map["AndroidInstanceIds"] = self.androidInstanceIds!
        }
        if self.forceStop != nil {
            map["ForceStop"] = self.forceStop!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidInstanceIds") {
            self.androidInstanceIds = dict["AndroidInstanceIds"] as! [String]
        }
        if dict.keys.contains("ForceStop") {
            self.forceStop = dict["ForceStop"] as! Bool
        }
    }
}

public class StopAndroidInstanceResponseBody : Tea.TeaModel {
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

public class StopAndroidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAndroidInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopAndroidInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UninstallAppRequest : Tea.TeaModel {
    public var appIdList: [String]?

    public var instanceGroupIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIdList != nil {
            map["AppIdList"] = self.appIdList!
        }
        if self.instanceGroupIdList != nil {
            map["InstanceGroupIdList"] = self.instanceGroupIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppIdList") {
            self.appIdList = dict["AppIdList"] as! [String]
        }
        if dict.keys.contains("InstanceGroupIdList") {
            self.instanceGroupIdList = dict["InstanceGroupIdList"] as! [String]
        }
    }
}

public class UninstallAppResponseBody : Tea.TeaModel {
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

public class UninstallAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UninstallAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomImageNameRequest : Tea.TeaModel {
    public var imageId: String?

    public var imageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
    }
}

public class UpdateCustomImageNameResponseBody : Tea.TeaModel {
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

public class UpdateCustomImageNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomImageNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateCustomImageNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateInstanceGroupImageRequest : Tea.TeaModel {
    public var imageId: String?

    public var instanceGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceGroupIds != nil {
            map["InstanceGroupIds"] = self.instanceGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceGroupIds") {
            self.instanceGroupIds = dict["InstanceGroupIds"] as! [String]
        }
    }
}

public class UpdateInstanceGroupImageResponseBody : Tea.TeaModel {
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

public class UpdateInstanceGroupImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceGroupImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateInstanceGroupImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeAndroidInstanceGroupRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var increaseNumberOfInstance: Int32?

    public var instanceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.increaseNumberOfInstance != nil {
            map["IncreaseNumberOfInstance"] = self.increaseNumberOfInstance!
        }
        if self.instanceGroupId != nil {
            map["InstanceGroupId"] = self.instanceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("IncreaseNumberOfInstance") {
            self.increaseNumberOfInstance = dict["IncreaseNumberOfInstance"] as! Int32
        }
        if dict.keys.contains("InstanceGroupId") {
            self.instanceGroupId = dict["InstanceGroupId"] as! String
        }
    }
}

public class UpgradeAndroidInstanceGroupResponseBody : Tea.TeaModel {
    public var instanceIds: String?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
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
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpgradeAndroidInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeAndroidInstanceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpgradeAndroidInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
