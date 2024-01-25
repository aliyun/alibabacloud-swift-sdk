import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelOrderRequest : Tea.TeaModel {
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

public class CancelOrderResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CancelOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CancelOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckClusterNameRequest : Tea.TeaModel {
    public var clusterName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
    }
}

public class CheckClusterNameResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckClusterNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckClusterNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckClusterNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmNoticeRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
    }
}

public class ConfirmNoticeResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConfirmNoticeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmNoticeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ConfirmNoticeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterInfo: String?

    public override init() {
        super.init()
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
        if self.clusterInfo != nil {
            map["ClusterInfo"] = self.clusterInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterInfo") && dict["ClusterInfo"] != nil {
            self.clusterInfo = dict["ClusterInfo"] as! String
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterDetailRequest : Tea.TeaModel {
    public var clusterBizId: String?

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
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetClusterDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var autoRenew: Bool?

        public var beginTime: Int64?

        public var clusterBizId: String?

        public var clusterId: String?

        public var clusterName: String?

        public var clusterStatus: String?

        public var clusterStatusValue: Int32?

        public var clusterType: String?

        public var controlCenterUrl: String?

        public var deployMode: String?

        public var duration: Int32?

        public var expireTime: Int64?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var instanceConf: [String: Any]?

        public var noticeConfirmed: Bool?

        public var orderBizId: String?

        public var packageType: String?

        public var pricingCycle: String?

        public var regionId: String?

        public var runningTime: Int64?

        public var version: String?

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
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.clusterBizId != nil {
                map["ClusterBizId"] = self.clusterBizId!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.clusterStatus != nil {
                map["ClusterStatus"] = self.clusterStatus!
            }
            if self.clusterStatusValue != nil {
                map["ClusterStatusValue"] = self.clusterStatusValue!
            }
            if self.clusterType != nil {
                map["ClusterType"] = self.clusterType!
            }
            if self.controlCenterUrl != nil {
                map["ControlCenterUrl"] = self.controlCenterUrl!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.instanceConf != nil {
                map["InstanceConf"] = self.instanceConf!
            }
            if self.noticeConfirmed != nil {
                map["NoticeConfirmed"] = self.noticeConfirmed!
            }
            if self.orderBizId != nil {
                map["OrderBizId"] = self.orderBizId!
            }
            if self.packageType != nil {
                map["PackageType"] = self.packageType!
            }
            if self.pricingCycle != nil {
                map["PricingCycle"] = self.pricingCycle!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.runningTime != nil {
                map["RunningTime"] = self.runningTime!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
                self.clusterBizId = dict["ClusterBizId"] as! String
            }
            if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("ClusterStatus") && dict["ClusterStatus"] != nil {
                self.clusterStatus = dict["ClusterStatus"] as! String
            }
            if dict.keys.contains("ClusterStatusValue") && dict["ClusterStatusValue"] != nil {
                self.clusterStatusValue = dict["ClusterStatusValue"] as! Int32
            }
            if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("ControlCenterUrl") && dict["ControlCenterUrl"] != nil {
                self.controlCenterUrl = dict["ControlCenterUrl"] as! String
            }
            if dict.keys.contains("DeployMode") && dict["DeployMode"] != nil {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("InstanceConf") && dict["InstanceConf"] != nil {
                self.instanceConf = dict["InstanceConf"] as! [String: Any]
            }
            if dict.keys.contains("NoticeConfirmed") && dict["NoticeConfirmed"] != nil {
                self.noticeConfirmed = dict["NoticeConfirmed"] as! Bool
            }
            if dict.keys.contains("OrderBizId") && dict["OrderBizId"] != nil {
                self.orderBizId = dict["OrderBizId"] as! String
            }
            if dict.keys.contains("PackageType") && dict["PackageType"] != nil {
                self.packageType = dict["PackageType"] as! String
            }
            if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
                self.pricingCycle = dict["PricingCycle"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                self.runningTime = dict["RunningTime"] as! Int64
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var data: GetClusterDetailResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetClusterDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class GetClusterDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetClusterDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class HasDefaultRoleResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class HasDefaultRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HasDefaultRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = HasDefaultRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitializeClouderaDataPlatformResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class InitializeClouderaDataPlatformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitializeClouderaDataPlatformResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = InitializeClouderaDataPlatformResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDefaultComponentsRequest : Tea.TeaModel {
    public var clusterType: String?

    public var securityMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.securityMode != nil {
            map["SecurityMode"] = self.securityMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("SecurityMode") && dict["SecurityMode"] != nil {
            self.securityMode = dict["SecurityMode"] as! String
        }
    }
}

public class ListDefaultComponentsResponseBody : Tea.TeaModel {
    public var data: [String]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String]
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListDefaultComponentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDefaultComponentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDefaultComponentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeGroupConstraintsRequest : Tea.TeaModel {
    public var clusterType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
            self.clusterType = dict["ClusterType"] as! String
        }
    }
}

public class ListNodeGroupConstraintsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hostGroupType: String?

        public var recommendedInstanceTypes: [String]?

        public var availableDataDiskCategories: [String]?

        public var availableInstanceTypes: [String]?

        public var availableSystemDiskCategories: [String]?

        public var defaultDataDiskCount: Int32?

        public var defaultDataDiskSize: Int32?

        public var defaultNodeCount: Int32?

        public var defaultSystemDiskSize: Int32?

        public var maxDataDiskCount: Int32?

        public var maxDataDiskSize: Int32?

        public var maxNodeCount: Int32?

        public var maxSystemDiskSize: Int32?

        public var minDataDiskCount: Int32?

        public var minDataDiskSize: Int32?

        public var minNodeCount: Int32?

        public var minSystemDiskSize: Int32?

        public var nodeGroupName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostGroupType != nil {
                map["HostGroupType"] = self.hostGroupType!
            }
            if self.recommendedInstanceTypes != nil {
                map["RecommendedInstanceTypes"] = self.recommendedInstanceTypes!
            }
            if self.availableDataDiskCategories != nil {
                map["availableDataDiskCategories"] = self.availableDataDiskCategories!
            }
            if self.availableInstanceTypes != nil {
                map["availableInstanceTypes"] = self.availableInstanceTypes!
            }
            if self.availableSystemDiskCategories != nil {
                map["availableSystemDiskCategories"] = self.availableSystemDiskCategories!
            }
            if self.defaultDataDiskCount != nil {
                map["defaultDataDiskCount"] = self.defaultDataDiskCount!
            }
            if self.defaultDataDiskSize != nil {
                map["defaultDataDiskSize"] = self.defaultDataDiskSize!
            }
            if self.defaultNodeCount != nil {
                map["defaultNodeCount"] = self.defaultNodeCount!
            }
            if self.defaultSystemDiskSize != nil {
                map["defaultSystemDiskSize"] = self.defaultSystemDiskSize!
            }
            if self.maxDataDiskCount != nil {
                map["maxDataDiskCount"] = self.maxDataDiskCount!
            }
            if self.maxDataDiskSize != nil {
                map["maxDataDiskSize"] = self.maxDataDiskSize!
            }
            if self.maxNodeCount != nil {
                map["maxNodeCount"] = self.maxNodeCount!
            }
            if self.maxSystemDiskSize != nil {
                map["maxSystemDiskSize"] = self.maxSystemDiskSize!
            }
            if self.minDataDiskCount != nil {
                map["minDataDiskCount"] = self.minDataDiskCount!
            }
            if self.minDataDiskSize != nil {
                map["minDataDiskSize"] = self.minDataDiskSize!
            }
            if self.minNodeCount != nil {
                map["minNodeCount"] = self.minNodeCount!
            }
            if self.minSystemDiskSize != nil {
                map["minSystemDiskSize"] = self.minSystemDiskSize!
            }
            if self.nodeGroupName != nil {
                map["nodeGroupName"] = self.nodeGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HostGroupType") && dict["HostGroupType"] != nil {
                self.hostGroupType = dict["HostGroupType"] as! String
            }
            if dict.keys.contains("RecommendedInstanceTypes") && dict["RecommendedInstanceTypes"] != nil {
                self.recommendedInstanceTypes = dict["RecommendedInstanceTypes"] as! [String]
            }
            if dict.keys.contains("availableDataDiskCategories") && dict["availableDataDiskCategories"] != nil {
                self.availableDataDiskCategories = dict["availableDataDiskCategories"] as! [String]
            }
            if dict.keys.contains("availableInstanceTypes") && dict["availableInstanceTypes"] != nil {
                self.availableInstanceTypes = dict["availableInstanceTypes"] as! [String]
            }
            if dict.keys.contains("availableSystemDiskCategories") && dict["availableSystemDiskCategories"] != nil {
                self.availableSystemDiskCategories = dict["availableSystemDiskCategories"] as! [String]
            }
            if dict.keys.contains("defaultDataDiskCount") && dict["defaultDataDiskCount"] != nil {
                self.defaultDataDiskCount = dict["defaultDataDiskCount"] as! Int32
            }
            if dict.keys.contains("defaultDataDiskSize") && dict["defaultDataDiskSize"] != nil {
                self.defaultDataDiskSize = dict["defaultDataDiskSize"] as! Int32
            }
            if dict.keys.contains("defaultNodeCount") && dict["defaultNodeCount"] != nil {
                self.defaultNodeCount = dict["defaultNodeCount"] as! Int32
            }
            if dict.keys.contains("defaultSystemDiskSize") && dict["defaultSystemDiskSize"] != nil {
                self.defaultSystemDiskSize = dict["defaultSystemDiskSize"] as! Int32
            }
            if dict.keys.contains("maxDataDiskCount") && dict["maxDataDiskCount"] != nil {
                self.maxDataDiskCount = dict["maxDataDiskCount"] as! Int32
            }
            if dict.keys.contains("maxDataDiskSize") && dict["maxDataDiskSize"] != nil {
                self.maxDataDiskSize = dict["maxDataDiskSize"] as! Int32
            }
            if dict.keys.contains("maxNodeCount") && dict["maxNodeCount"] != nil {
                self.maxNodeCount = dict["maxNodeCount"] as! Int32
            }
            if dict.keys.contains("maxSystemDiskSize") && dict["maxSystemDiskSize"] != nil {
                self.maxSystemDiskSize = dict["maxSystemDiskSize"] as! Int32
            }
            if dict.keys.contains("minDataDiskCount") && dict["minDataDiskCount"] != nil {
                self.minDataDiskCount = dict["minDataDiskCount"] as! Int32
            }
            if dict.keys.contains("minDataDiskSize") && dict["minDataDiskSize"] != nil {
                self.minDataDiskSize = dict["minDataDiskSize"] as! Int32
            }
            if dict.keys.contains("minNodeCount") && dict["minNodeCount"] != nil {
                self.minNodeCount = dict["minNodeCount"] as! Int32
            }
            if dict.keys.contains("minSystemDiskSize") && dict["minSystemDiskSize"] != nil {
                self.minSystemDiskSize = dict["minSystemDiskSize"] as! Int32
            }
            if dict.keys.contains("nodeGroupName") && dict["nodeGroupName"] != nil {
                self.nodeGroupName = dict["nodeGroupName"] as! String
            }
        }
    }
    public var data: [ListNodeGroupConstraintsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListNodeGroupConstraintsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListNodeGroupConstraintsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodeGroupConstraintsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeGroupConstraintsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListNodeGroupConstraintsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
    }
}

public class ListNodesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EcsNodeDtoList : Tea.TeaModel {
            public var beginTime: String?

            public var cpuCount: Int32?

            public var diskCapacity: Int32?

            public var diskCount: Int32?

            public var diskType: String?

            public var expireTime: Int64?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var index: Int32?

            public var instanceType: String?

            public var memorySize: Int32?

            public var nodeGroupId: String?

            public var nodeGroupName: String?

            public var nodeGroupType: String?

            public var nodeId: String?

            public var nodeName: String?

            public var nodeResourceType: String?

            public var nodeStatus: String?

            public var privateIp: String?

            public var publicIp: String?

            public var runningTime: Int64?

            public var serialNumber: String?

            public var systemDiskCapacity: Int32?

            public var systemDiskCount: Int32?

            public var systemDiskType: String?

            public override init() {
                super.init()
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
                if self.cpuCount != nil {
                    map["CpuCount"] = self.cpuCount!
                }
                if self.diskCapacity != nil {
                    map["DiskCapacity"] = self.diskCapacity!
                }
                if self.diskCount != nil {
                    map["DiskCount"] = self.diskCount!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.memorySize != nil {
                    map["MemorySize"] = self.memorySize!
                }
                if self.nodeGroupId != nil {
                    map["NodeGroupId"] = self.nodeGroupId!
                }
                if self.nodeGroupName != nil {
                    map["NodeGroupName"] = self.nodeGroupName!
                }
                if self.nodeGroupType != nil {
                    map["NodeGroupType"] = self.nodeGroupType!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.nodeResourceType != nil {
                    map["NodeResourceType"] = self.nodeResourceType!
                }
                if self.nodeStatus != nil {
                    map["NodeStatus"] = self.nodeStatus!
                }
                if self.privateIp != nil {
                    map["PrivateIp"] = self.privateIp!
                }
                if self.publicIp != nil {
                    map["PublicIp"] = self.publicIp!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.serialNumber != nil {
                    map["SerialNumber"] = self.serialNumber!
                }
                if self.systemDiskCapacity != nil {
                    map["SystemDiskCapacity"] = self.systemDiskCapacity!
                }
                if self.systemDiskCount != nil {
                    map["SystemDiskCount"] = self.systemDiskCount!
                }
                if self.systemDiskType != nil {
                    map["SystemDiskType"] = self.systemDiskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                    self.beginTime = dict["BeginTime"] as! String
                }
                if dict.keys.contains("CpuCount") && dict["CpuCount"] != nil {
                    self.cpuCount = dict["CpuCount"] as! Int32
                }
                if dict.keys.contains("DiskCapacity") && dict["DiskCapacity"] != nil {
                    self.diskCapacity = dict["DiskCapacity"] as! Int32
                }
                if dict.keys.contains("DiskCount") && dict["DiskCount"] != nil {
                    self.diskCount = dict["DiskCount"] as! Int32
                }
                if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
                    self.diskType = dict["DiskType"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! Int64
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Index") && dict["Index"] != nil {
                    self.index = dict["Index"] as! Int32
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("MemorySize") && dict["MemorySize"] != nil {
                    self.memorySize = dict["MemorySize"] as! Int32
                }
                if dict.keys.contains("NodeGroupId") && dict["NodeGroupId"] != nil {
                    self.nodeGroupId = dict["NodeGroupId"] as! String
                }
                if dict.keys.contains("NodeGroupName") && dict["NodeGroupName"] != nil {
                    self.nodeGroupName = dict["NodeGroupName"] as! String
                }
                if dict.keys.contains("NodeGroupType") && dict["NodeGroupType"] != nil {
                    self.nodeGroupType = dict["NodeGroupType"] as! String
                }
                if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("NodeResourceType") && dict["NodeResourceType"] != nil {
                    self.nodeResourceType = dict["NodeResourceType"] as! String
                }
                if dict.keys.contains("NodeStatus") && dict["NodeStatus"] != nil {
                    self.nodeStatus = dict["NodeStatus"] as! String
                }
                if dict.keys.contains("PrivateIp") && dict["PrivateIp"] != nil {
                    self.privateIp = dict["PrivateIp"] as! String
                }
                if dict.keys.contains("PublicIp") && dict["PublicIp"] != nil {
                    self.publicIp = dict["PublicIp"] as! String
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! Int64
                }
                if dict.keys.contains("SerialNumber") && dict["SerialNumber"] != nil {
                    self.serialNumber = dict["SerialNumber"] as! String
                }
                if dict.keys.contains("SystemDiskCapacity") && dict["SystemDiskCapacity"] != nil {
                    self.systemDiskCapacity = dict["SystemDiskCapacity"] as! Int32
                }
                if dict.keys.contains("SystemDiskCount") && dict["SystemDiskCount"] != nil {
                    self.systemDiskCount = dict["SystemDiskCount"] as! Int32
                }
                if dict.keys.contains("SystemDiskType") && dict["SystemDiskType"] != nil {
                    self.systemDiskType = dict["SystemDiskType"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var ecsNodeDtoList: [ListNodesResponseBody.Data.EcsNodeDtoList]?

        public var expireTime: Int64?

        public var instanceConf: [String: Any]?

        public var instanceId: String?

        public var instanceName: String?

        public override init() {
            super.init()
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
            if self.ecsNodeDtoList != nil {
                var tmp : [Any] = []
                for k in self.ecsNodeDtoList! {
                    tmp.append(k.toMap())
                }
                map["EcsNodeDtoList"] = tmp
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceConf != nil {
                map["InstanceConf"] = self.instanceConf!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("EcsNodeDtoList") && dict["EcsNodeDtoList"] != nil {
                var tmp : [ListNodesResponseBody.Data.EcsNodeDtoList] = []
                for v in dict["EcsNodeDtoList"] as! [Any] {
                    var model = ListNodesResponseBody.Data.EcsNodeDtoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ecsNodeDtoList = tmp
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("InstanceConf") && dict["InstanceConf"] != nil {
                self.instanceConf = dict["InstanceConf"] as! [String: Any]
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
        }
    }
    public var data: [ListNodesResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListNodesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListNodesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOperationsRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public var parentOperationNodeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        if self.parentOperationNodeId != nil {
            map["ParentOperationNodeId"] = self.parentOperationNodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
        if dict.keys.contains("ParentOperationNodeId") && dict["ParentOperationNodeId"] != nil {
            self.parentOperationNodeId = dict["ParentOperationNodeId"] as! String
        }
    }
}

public class ListOperationsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endTime: Int64?

        public var hasChildOperationNodes: Bool?

        public var hasOperationTask: Bool?

        public var operationId: String?

        public var operationNodeId: String?

        public var operationNodeName: Int32?

        public var startTime: Int64?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.hasChildOperationNodes != nil {
                map["HasChildOperationNodes"] = self.hasChildOperationNodes!
            }
            if self.hasOperationTask != nil {
                map["HasOperationTask"] = self.hasOperationTask!
            }
            if self.operationId != nil {
                map["OperationId"] = self.operationId!
            }
            if self.operationNodeId != nil {
                map["OperationNodeId"] = self.operationNodeId!
            }
            if self.operationNodeName != nil {
                map["OperationNodeName"] = self.operationNodeName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("HasChildOperationNodes") && dict["HasChildOperationNodes"] != nil {
                self.hasChildOperationNodes = dict["HasChildOperationNodes"] as! Bool
            }
            if dict.keys.contains("HasOperationTask") && dict["HasOperationTask"] != nil {
                self.hasOperationTask = dict["HasOperationTask"] as! Bool
            }
            if dict.keys.contains("OperationId") && dict["OperationId"] != nil {
                self.operationId = dict["OperationId"] as! String
            }
            if dict.keys.contains("OperationNodeId") && dict["OperationNodeId"] != nil {
                self.operationNodeId = dict["OperationNodeId"] as! String
            }
            if dict.keys.contains("OperationNodeName") && dict["OperationNodeName"] != nil {
                self.operationNodeName = dict["OperationNodeName"] as! Int32
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var data: [ListOperationsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListOperationsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListOperationsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListOperationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListOperationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var regionId: String?

        public var regionName: String?

        public override init() {
            super.init()
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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                self.regionName = dict["RegionName"] as! String
            }
        }
    }
    public var data: [ListRegionsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListRegionsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListRegionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListZonesRequest : Tea.TeaModel {
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

public class ListZonesResponseBody : Tea.TeaModel {
    public var data: [String]?

    public var errMessage: String?

    public var errorCode: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String]
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryOrderRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
    }
}

public class QueryOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceIds: [String]?

        public var orderId: String?

        public var orderStatus: String?

        public var orderType: String?

        public override init() {
            super.init()
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
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
                self.instanceIds = dict["InstanceIds"] as! [String]
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("OrderStatus") && dict["OrderStatus"] != nil {
                self.orderStatus = dict["OrderStatus"] as! String
            }
            if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
                self.orderType = dict["OrderType"] as! String
            }
        }
    }
    public var data: [QueryOrderResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryOrderResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryOrderResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPriceRequest : Tea.TeaModel {
    public var duration: Int32?

    public var instanceId: String?

    public var nodeGroupSpecs: String?

    public var pricingCycle: String?

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
        if self.nodeGroupSpecs != nil {
            map["NodeGroupSpecs"] = self.nodeGroupSpecs!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
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
        if dict.keys.contains("NodeGroupSpecs") && dict["NodeGroupSpecs"] != nil {
            self.nodeGroupSpecs = dict["NodeGroupSpecs"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class QueryPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EcsPriceInfo : Tea.TeaModel {
            public var currency: String?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") && dict["Currency"] != nil {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                    self.discountPrice = dict["DiscountPrice"] as! Double
                }
                if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") && dict["TradePrice"] != nil {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public class SoftPriceInfo : Tea.TeaModel {
            public var currency: String?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") && dict["Currency"] != nil {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                    self.discountPrice = dict["DiscountPrice"] as! Double
                }
                if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") && dict["TradePrice"] != nil {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public var discountPrice: Double?

        public var ecsPriceInfo: QueryPriceResponseBody.Data.EcsPriceInfo?

        public var softPriceInfo: QueryPriceResponseBody.Data.SoftPriceInfo?

        public var sumPrice: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ecsPriceInfo?.validate()
            try self.softPriceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.discountPrice != nil {
                map["DiscountPrice"] = self.discountPrice!
            }
            if self.ecsPriceInfo != nil {
                map["EcsPriceInfo"] = self.ecsPriceInfo?.toMap()
            }
            if self.softPriceInfo != nil {
                map["SoftPriceInfo"] = self.softPriceInfo?.toMap()
            }
            if self.sumPrice != nil {
                map["SumPrice"] = self.sumPrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                self.discountPrice = dict["DiscountPrice"] as! Double
            }
            if dict.keys.contains("EcsPriceInfo") && dict["EcsPriceInfo"] != nil {
                var model = QueryPriceResponseBody.Data.EcsPriceInfo()
                model.fromMap(dict["EcsPriceInfo"] as! [String: Any])
                self.ecsPriceInfo = model
            }
            if dict.keys.contains("SoftPriceInfo") && dict["SoftPriceInfo"] != nil {
                var model = QueryPriceResponseBody.Data.SoftPriceInfo()
                model.fromMap(dict["SoftPriceInfo"] as! [String: Any])
                self.softPriceInfo = model
            }
            if dict.keys.contains("SumPrice") && dict["SumPrice"] != nil {
                self.sumPrice = dict["SumPrice"] as! Double
            }
        }
    }
    public var data: QueryPriceResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryPriceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRenewOrderRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
    }
}

public class QueryRenewOrderResponseBody : Tea.TeaModel {
    public var data: [Int64]?

    public var errMessage: String?

    public var errorCode: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [Int64]
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryRenewOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRenewOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryRenewOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRenewPriceRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public var instances: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        if self.instances != nil {
            map["Instances"] = self.instances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            self.instances = dict["Instances"] as! String
        }
    }
}

public class QueryRenewPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CdpSoftPriceInfo : Tea.TeaModel {
            public var currency: String?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") && dict["Currency"] != nil {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                    self.discountPrice = dict["DiscountPrice"] as! Double
                }
                if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") && dict["TradePrice"] != nil {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public class EcsPriceInfo : Tea.TeaModel {
            public var currency: String?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") && dict["Currency"] != nil {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                    self.discountPrice = dict["DiscountPrice"] as! Double
                }
                if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") && dict["TradePrice"] != nil {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public var cdpSoftPriceInfo: QueryRenewPriceResponseBody.Data.CdpSoftPriceInfo?

        public var discountPrice: Double?

        public var ecsPriceInfo: QueryRenewPriceResponseBody.Data.EcsPriceInfo?

        public var sumPrice: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cdpSoftPriceInfo?.validate()
            try self.ecsPriceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cdpSoftPriceInfo != nil {
                map["CdpSoftPriceInfo"] = self.cdpSoftPriceInfo?.toMap()
            }
            if self.discountPrice != nil {
                map["DiscountPrice"] = self.discountPrice!
            }
            if self.ecsPriceInfo != nil {
                map["EcsPriceInfo"] = self.ecsPriceInfo?.toMap()
            }
            if self.sumPrice != nil {
                map["SumPrice"] = self.sumPrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CdpSoftPriceInfo") && dict["CdpSoftPriceInfo"] != nil {
                var model = QueryRenewPriceResponseBody.Data.CdpSoftPriceInfo()
                model.fromMap(dict["CdpSoftPriceInfo"] as! [String: Any])
                self.cdpSoftPriceInfo = model
            }
            if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                self.discountPrice = dict["DiscountPrice"] as! Double
            }
            if dict.keys.contains("EcsPriceInfo") && dict["EcsPriceInfo"] != nil {
                var model = QueryRenewPriceResponseBody.Data.EcsPriceInfo()
                model.fromMap(dict["EcsPriceInfo"] as! [String: Any])
                self.ecsPriceInfo = model
            }
            if dict.keys.contains("SumPrice") && dict["SumPrice"] != nil {
                self.sumPrice = dict["SumPrice"] as! Double
            }
        }
    }
    public var data: QueryRenewPriceResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryRenewPriceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryRenewPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRenewPriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryRenewPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryScaleUpOrderRequest : Tea.TeaModel {
    public var clusterBizId: String?

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
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class QueryScaleUpOrderResponseBody : Tea.TeaModel {
    public var data: [Int64]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int64?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [Int64]
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryScaleUpOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryScaleUpOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryScaleUpOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryScaleUpPriceRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public var coreNumber: Int64?

    public var duration: Int64?

    public var instanceId: String?

    public var instanceType: String?

    public var nodeGroupType: String?

    public var pricingCycle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        if self.coreNumber != nil {
            map["CoreNumber"] = self.coreNumber!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.nodeGroupType != nil {
            map["NodeGroupType"] = self.nodeGroupType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
        if dict.keys.contains("CoreNumber") && dict["CoreNumber"] != nil {
            self.coreNumber = dict["CoreNumber"] as! Int64
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("NodeGroupType") && dict["NodeGroupType"] != nil {
            self.nodeGroupType = dict["NodeGroupType"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
    }
}

public class QueryScaleUpPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EcsPriceInfo : Tea.TeaModel {
            public var currency: String?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") && dict["Currency"] != nil {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                    self.discountPrice = dict["DiscountPrice"] as! Double
                }
                if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") && dict["TradePrice"] != nil {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public class SoftPriceInfo : Tea.TeaModel {
            public var currency: String?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") && dict["Currency"] != nil {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                    self.discountPrice = dict["DiscountPrice"] as! Double
                }
                if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") && dict["TradePrice"] != nil {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public var discountPrice: Double?

        public var ecsPriceInfo: QueryScaleUpPriceResponseBody.Data.EcsPriceInfo?

        public var softPriceInfo: QueryScaleUpPriceResponseBody.Data.SoftPriceInfo?

        public var sumPrice: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ecsPriceInfo?.validate()
            try self.softPriceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.discountPrice != nil {
                map["DiscountPrice"] = self.discountPrice!
            }
            if self.ecsPriceInfo != nil {
                map["EcsPriceInfo"] = self.ecsPriceInfo?.toMap()
            }
            if self.softPriceInfo != nil {
                map["SoftPriceInfo"] = self.softPriceInfo?.toMap()
            }
            if self.sumPrice != nil {
                map["SumPrice"] = self.sumPrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                self.discountPrice = dict["DiscountPrice"] as! Double
            }
            if dict.keys.contains("EcsPriceInfo") && dict["EcsPriceInfo"] != nil {
                var model = QueryScaleUpPriceResponseBody.Data.EcsPriceInfo()
                model.fromMap(dict["EcsPriceInfo"] as! [String: Any])
                self.ecsPriceInfo = model
            }
            if dict.keys.contains("SoftPriceInfo") && dict["SoftPriceInfo"] != nil {
                var model = QueryScaleUpPriceResponseBody.Data.SoftPriceInfo()
                model.fromMap(dict["SoftPriceInfo"] as! [String: Any])
                self.softPriceInfo = model
            }
            if dict.keys.contains("SumPrice") && dict["SumPrice"] != nil {
                self.sumPrice = dict["SumPrice"] as! Double
            }
        }
    }
    public var data: QueryScaleUpPriceResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int64?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryScaleUpPriceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryScaleUpPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryScaleUpPriceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryScaleUpPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseClusterRequest : Tea.TeaModel {
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

public class ReleaseClusterResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReleaseClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReleaseClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewInstanceRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public var instances: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        if self.instances != nil {
            map["Instances"] = self.instances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            self.instances = dict["Instances"] as! String
        }
    }
}

public class RenewInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderIds != nil {
                map["OrderIds"] = self.orderIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderIds") && dict["OrderIds"] != nil {
                self.orderIds = dict["OrderIds"] as! [String]
            }
        }
    }
    public var data: RenewInstanceResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RenewInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RenewInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RenewInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ScaleUpClusterRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public var coreNumber: Int64?

    public var duration: Int64?

    public var instanceId: String?

    public var instanceType: String?

    public var nodeGroupType: String?

    public var pricingCycle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        if self.coreNumber != nil {
            map["CoreNumber"] = self.coreNumber!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.nodeGroupType != nil {
            map["NodeGroupType"] = self.nodeGroupType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
        if dict.keys.contains("CoreNumber") && dict["CoreNumber"] != nil {
            self.coreNumber = dict["CoreNumber"] as! Int64
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("NodeGroupType") && dict["NodeGroupType"] != nil {
            self.nodeGroupType = dict["NodeGroupType"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
    }
}

public class ScaleUpClusterResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int64?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ScaleUpClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScaleUpClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ScaleUpClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchClusterInstancesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
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

public class SearchClusterInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ClusterInstanceInfo : Tea.TeaModel {
            public var controlCenterLoginName: String?

            public var controlCenterUrl: String?

            public var sgId: String?

            public var vpcId: String?

            public var vswId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.controlCenterLoginName != nil {
                    map["ControlCenterLoginName"] = self.controlCenterLoginName!
                }
                if self.controlCenterUrl != nil {
                    map["ControlCenterUrl"] = self.controlCenterUrl!
                }
                if self.sgId != nil {
                    map["SgId"] = self.sgId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vswId != nil {
                    map["VswId"] = self.vswId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ControlCenterLoginName") && dict["ControlCenterLoginName"] != nil {
                    self.controlCenterLoginName = dict["ControlCenterLoginName"] as! String
                }
                if dict.keys.contains("ControlCenterUrl") && dict["ControlCenterUrl"] != nil {
                    self.controlCenterUrl = dict["ControlCenterUrl"] as! String
                }
                if dict.keys.contains("SgId") && dict["SgId"] != nil {
                    self.sgId = dict["SgId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VswId") && dict["VswId"] != nil {
                    self.vswId = dict["VswId"] as! String
                }
            }
        }
        public class EcsGroupList : Tea.TeaModel {
            public var cpuCount: Int32?

            public var diskCapacity: Int32?

            public var diskCount: Int32?

            public var diskType: String?

            public var hostGroupName: String?

            public var hostGroupType: String?

            public var instanceType: String?

            public var memorySize: Int32?

            public var nodeCount: Int32?

            public var systemDiskCapacity: String?

            public var systemDiskCount: Int32?

            public var systemDiskType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuCount != nil {
                    map["CpuCount"] = self.cpuCount!
                }
                if self.diskCapacity != nil {
                    map["DiskCapacity"] = self.diskCapacity!
                }
                if self.diskCount != nil {
                    map["DiskCount"] = self.diskCount!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.hostGroupName != nil {
                    map["HostGroupName"] = self.hostGroupName!
                }
                if self.hostGroupType != nil {
                    map["HostGroupType"] = self.hostGroupType!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.memorySize != nil {
                    map["MemorySize"] = self.memorySize!
                }
                if self.nodeCount != nil {
                    map["NodeCount"] = self.nodeCount!
                }
                if self.systemDiskCapacity != nil {
                    map["SystemDiskCapacity"] = self.systemDiskCapacity!
                }
                if self.systemDiskCount != nil {
                    map["SystemDiskCount"] = self.systemDiskCount!
                }
                if self.systemDiskType != nil {
                    map["SystemDiskType"] = self.systemDiskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuCount") && dict["CpuCount"] != nil {
                    self.cpuCount = dict["CpuCount"] as! Int32
                }
                if dict.keys.contains("DiskCapacity") && dict["DiskCapacity"] != nil {
                    self.diskCapacity = dict["DiskCapacity"] as! Int32
                }
                if dict.keys.contains("DiskCount") && dict["DiskCount"] != nil {
                    self.diskCount = dict["DiskCount"] as! Int32
                }
                if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
                    self.diskType = dict["DiskType"] as! String
                }
                if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
                    self.hostGroupName = dict["HostGroupName"] as! String
                }
                if dict.keys.contains("HostGroupType") && dict["HostGroupType"] != nil {
                    self.hostGroupType = dict["HostGroupType"] as! String
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("MemorySize") && dict["MemorySize"] != nil {
                    self.memorySize = dict["MemorySize"] as! Int32
                }
                if dict.keys.contains("NodeCount") && dict["NodeCount"] != nil {
                    self.nodeCount = dict["NodeCount"] as! Int32
                }
                if dict.keys.contains("SystemDiskCapacity") && dict["SystemDiskCapacity"] != nil {
                    self.systemDiskCapacity = dict["SystemDiskCapacity"] as! String
                }
                if dict.keys.contains("SystemDiskCount") && dict["SystemDiskCount"] != nil {
                    self.systemDiskCount = dict["SystemDiskCount"] as! Int32
                }
                if dict.keys.contains("SystemDiskType") && dict["SystemDiskType"] != nil {
                    self.systemDiskType = dict["SystemDiskType"] as! String
                }
            }
        }
        public var beginTime: Int64?

        public var clusterBizId: String?

        public var clusterId: String?

        public var clusterInstanceInfo: SearchClusterInstancesResponseBody.Data.ClusterInstanceInfo?

        public var clusterName: String?

        public var clusterStatus: String?

        public var clusterStatusValue: Int32?

        public var clusterType: String?

        public var controlCenterUrl: String?

        public var duration: Int32?

        public var ecsGroupList: [SearchClusterInstancesResponseBody.Data.EcsGroupList]?

        public var expireTime: Int64?

        public var failReason: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var instanceConf: [String: Any]?

        public var noticeConfirmed: Bool?

        public var orderBizId: String?

        public var packageType: String?

        public var pricingCycle: String?

        public var regionId: String?

        public var runningTime: Int64?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.clusterInstanceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.clusterBizId != nil {
                map["ClusterBizId"] = self.clusterBizId!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterInstanceInfo != nil {
                map["ClusterInstanceInfo"] = self.clusterInstanceInfo?.toMap()
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.clusterStatus != nil {
                map["ClusterStatus"] = self.clusterStatus!
            }
            if self.clusterStatusValue != nil {
                map["ClusterStatusValue"] = self.clusterStatusValue!
            }
            if self.clusterType != nil {
                map["ClusterType"] = self.clusterType!
            }
            if self.controlCenterUrl != nil {
                map["ControlCenterUrl"] = self.controlCenterUrl!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.ecsGroupList != nil {
                var tmp : [Any] = []
                for k in self.ecsGroupList! {
                    tmp.append(k.toMap())
                }
                map["EcsGroupList"] = tmp
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.instanceConf != nil {
                map["InstanceConf"] = self.instanceConf!
            }
            if self.noticeConfirmed != nil {
                map["NoticeConfirmed"] = self.noticeConfirmed!
            }
            if self.orderBizId != nil {
                map["OrderBizId"] = self.orderBizId!
            }
            if self.packageType != nil {
                map["PackageType"] = self.packageType!
            }
            if self.pricingCycle != nil {
                map["PricingCycle"] = self.pricingCycle!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.runningTime != nil {
                map["RunningTime"] = self.runningTime!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
                self.clusterBizId = dict["ClusterBizId"] as! String
            }
            if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterInstanceInfo") && dict["ClusterInstanceInfo"] != nil {
                var model = SearchClusterInstancesResponseBody.Data.ClusterInstanceInfo()
                model.fromMap(dict["ClusterInstanceInfo"] as! [String: Any])
                self.clusterInstanceInfo = model
            }
            if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("ClusterStatus") && dict["ClusterStatus"] != nil {
                self.clusterStatus = dict["ClusterStatus"] as! String
            }
            if dict.keys.contains("ClusterStatusValue") && dict["ClusterStatusValue"] != nil {
                self.clusterStatusValue = dict["ClusterStatusValue"] as! Int32
            }
            if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("ControlCenterUrl") && dict["ControlCenterUrl"] != nil {
                self.controlCenterUrl = dict["ControlCenterUrl"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("EcsGroupList") && dict["EcsGroupList"] != nil {
                var tmp : [SearchClusterInstancesResponseBody.Data.EcsGroupList] = []
                for v in dict["EcsGroupList"] as! [Any] {
                    var model = SearchClusterInstancesResponseBody.Data.EcsGroupList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ecsGroupList = tmp
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("FailReason") && dict["FailReason"] != nil {
                self.failReason = dict["FailReason"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("InstanceConf") && dict["InstanceConf"] != nil {
                self.instanceConf = dict["InstanceConf"] as! [String: Any]
            }
            if dict.keys.contains("NoticeConfirmed") && dict["NoticeConfirmed"] != nil {
                self.noticeConfirmed = dict["NoticeConfirmed"] as! Bool
            }
            if dict.keys.contains("OrderBizId") && dict["OrderBizId"] != nil {
                self.orderBizId = dict["OrderBizId"] as! String
            }
            if dict.keys.contains("PackageType") && dict["PackageType"] != nil {
                self.packageType = dict["PackageType"] as! String
            }
            if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
                self.pricingCycle = dict["PricingCycle"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                self.runningTime = dict["RunningTime"] as! Int64
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var data: [SearchClusterInstancesResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SearchClusterInstancesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SearchClusterInstancesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class SearchClusterInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchClusterInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SearchClusterInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SingleOrderRequest : Tea.TeaModel {
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

public class SingleOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EcsGroupList : Tea.TeaModel {
            public var cpuCount: Int32?

            public var diskCapacity: Int32?

            public var diskCount: Int32?

            public var diskType: String?

            public var hostGroupName: String?

            public var hostGroupType: String?

            public var instanceType: String?

            public var memorySize: Int32?

            public var nodeCount: Int32?

            public var systemDiskCapacity: Int32?

            public var systemDiskCount: Int32?

            public var systemDiskType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuCount != nil {
                    map["CpuCount"] = self.cpuCount!
                }
                if self.diskCapacity != nil {
                    map["DiskCapacity"] = self.diskCapacity!
                }
                if self.diskCount != nil {
                    map["DiskCount"] = self.diskCount!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.hostGroupName != nil {
                    map["HostGroupName"] = self.hostGroupName!
                }
                if self.hostGroupType != nil {
                    map["HostGroupType"] = self.hostGroupType!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.memorySize != nil {
                    map["MemorySize"] = self.memorySize!
                }
                if self.nodeCount != nil {
                    map["NodeCount"] = self.nodeCount!
                }
                if self.systemDiskCapacity != nil {
                    map["SystemDiskCapacity"] = self.systemDiskCapacity!
                }
                if self.systemDiskCount != nil {
                    map["SystemDiskCount"] = self.systemDiskCount!
                }
                if self.systemDiskType != nil {
                    map["SystemDiskType"] = self.systemDiskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuCount") && dict["CpuCount"] != nil {
                    self.cpuCount = dict["CpuCount"] as! Int32
                }
                if dict.keys.contains("DiskCapacity") && dict["DiskCapacity"] != nil {
                    self.diskCapacity = dict["DiskCapacity"] as! Int32
                }
                if dict.keys.contains("DiskCount") && dict["DiskCount"] != nil {
                    self.diskCount = dict["DiskCount"] as! Int32
                }
                if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
                    self.diskType = dict["DiskType"] as! String
                }
                if dict.keys.contains("HostGroupName") && dict["HostGroupName"] != nil {
                    self.hostGroupName = dict["HostGroupName"] as! String
                }
                if dict.keys.contains("HostGroupType") && dict["HostGroupType"] != nil {
                    self.hostGroupType = dict["HostGroupType"] as! String
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("MemorySize") && dict["MemorySize"] != nil {
                    self.memorySize = dict["MemorySize"] as! Int32
                }
                if dict.keys.contains("NodeCount") && dict["NodeCount"] != nil {
                    self.nodeCount = dict["NodeCount"] as! Int32
                }
                if dict.keys.contains("SystemDiskCapacity") && dict["SystemDiskCapacity"] != nil {
                    self.systemDiskCapacity = dict["SystemDiskCapacity"] as! Int32
                }
                if dict.keys.contains("SystemDiskCount") && dict["SystemDiskCount"] != nil {
                    self.systemDiskCount = dict["SystemDiskCount"] as! Int32
                }
                if dict.keys.contains("SystemDiskType") && dict["SystemDiskType"] != nil {
                    self.systemDiskType = dict["SystemDiskType"] as! String
                }
            }
        }
        public var clusterId: String?

        public var clusterSize: Int32?

        public var clusterStatus: Int32?

        public var deployMode: String?

        public var duration: Int32?

        public var ecsGroupList: [SingleOrderResponseBody.Data.EcsGroupList]?

        public var instanceId: String?

        public var orderId: String?

        public var packageType: String?

        public var pricingCycle: String?

        public var storageSize: Int32?

        public override init() {
            super.init()
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
            if self.clusterSize != nil {
                map["ClusterSize"] = self.clusterSize!
            }
            if self.clusterStatus != nil {
                map["ClusterStatus"] = self.clusterStatus!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.ecsGroupList != nil {
                var tmp : [Any] = []
                for k in self.ecsGroupList! {
                    tmp.append(k.toMap())
                }
                map["EcsGroupList"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.packageType != nil {
                map["PackageType"] = self.packageType!
            }
            if self.pricingCycle != nil {
                map["PricingCycle"] = self.pricingCycle!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterSize") && dict["ClusterSize"] != nil {
                self.clusterSize = dict["ClusterSize"] as! Int32
            }
            if dict.keys.contains("ClusterStatus") && dict["ClusterStatus"] != nil {
                self.clusterStatus = dict["ClusterStatus"] as! Int32
            }
            if dict.keys.contains("DeployMode") && dict["DeployMode"] != nil {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int32
            }
            if dict.keys.contains("EcsGroupList") && dict["EcsGroupList"] != nil {
                var tmp : [SingleOrderResponseBody.Data.EcsGroupList] = []
                for v in dict["EcsGroupList"] as! [Any] {
                    var model = SingleOrderResponseBody.Data.EcsGroupList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ecsGroupList = tmp
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("PackageType") && dict["PackageType"] != nil {
                self.packageType = dict["PackageType"] as! String
            }
            if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
                self.pricingCycle = dict["PricingCycle"] as! String
            }
            if dict.keys.contains("StorageSize") && dict["StorageSize"] != nil {
                self.storageSize = dict["StorageSize"] as! Int32
            }
        }
    }
    public var data: SingleOrderResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SingleOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SingleOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SingleOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SingleOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateClusterNameRequest : Tea.TeaModel {
    public var clusterBizId: String?

    public var clusterName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterBizId != nil {
            map["ClusterBizId"] = self.clusterBizId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterBizId") && dict["ClusterBizId"] != nil {
            self.clusterBizId = dict["ClusterBizId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
    }
}

public class UpdateClusterNameResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateClusterNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClusterNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateClusterNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadLicenseResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
            self.errCode = dict["ErrCode"] as! String
        }
        if dict.keys.contains("ErrMessage") && dict["ErrMessage"] != nil {
            self.errMessage = dict["ErrMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class UploadLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadLicenseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UploadLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
