import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeSellerInstancesRequest : Tea.TeaModel {
    public var instanceId: Int64?

    public var instanceStatus: String?

    public var pageIndex: Int32?

    public var pageSize: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! Int64
        }
        if dict.keys.contains("InstanceStatus") {
            self.instanceStatus = dict["InstanceStatus"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! Int64
        }
    }
}

public class DescribeSellerInstancesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var appInfo: String?

        public var chargeType: Int32?

        public var commodityCode: String?

        public var createdOn: Int64?

        public var hostInfo: String?

        public var info: String?

        public var instanceId: Int64?

        public var instanceStatus: String?

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
            if self.appInfo != nil {
                map["AppInfo"] = self.appInfo!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.createdOn != nil {
                map["CreatedOn"] = self.createdOn!
            }
            if self.hostInfo != nil {
                map["HostInfo"] = self.hostInfo!
            }
            if self.info != nil {
                map["Info"] = self.info!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInfo") {
                self.appInfo = dict["AppInfo"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! Int32
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CreatedOn") {
                self.createdOn = dict["CreatedOn"] as! Int64
            }
            if dict.keys.contains("HostInfo") {
                self.hostInfo = dict["HostInfo"] as! String
            }
            if dict.keys.contains("Info") {
                self.info = dict["Info"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! Int64
            }
            if dict.keys.contains("InstanceStatus") {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var code: String?

    public var count: Int64?

    public var fatal: Bool?

    public var message: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var result: [DescribeSellerInstancesResponseBody.Result]?

    public var success: Bool?

    public var version: String?

    public override init() {
        super.init()
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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.fatal != nil {
            map["Fatal"] = self.fatal!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("Fatal") {
            self.fatal = dict["Fatal"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [DescribeSellerInstancesResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DescribeSellerInstancesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class DescribeSellerInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSellerInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeSellerInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class NoticeInstanceUserRequest : Tea.TeaModel {
    public var instanceId: Int64?

    public var noticeParam: String?

    public var noticeType: Int64?

    public override init() {
        super.init()
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
        if self.noticeParam != nil {
            map["NoticeParam"] = self.noticeParam!
        }
        if self.noticeType != nil {
            map["NoticeType"] = self.noticeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! Int64
        }
        if dict.keys.contains("NoticeParam") {
            self.noticeParam = dict["NoticeParam"] as! String
        }
        if dict.keys.contains("NoticeType") {
            self.noticeType = dict["NoticeType"] as! Int64
        }
    }
}

public class NoticeInstanceUserResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

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
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var accessDeniedDetail: NoticeInstanceUserResponseBody.AccessDeniedDetail?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: Bool?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = NoticeInstanceUserResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class NoticeInstanceUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NoticeInstanceUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = NoticeInstanceUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushMeteringDataRequest : Tea.TeaModel {
    public class MeteringData : Tea.TeaModel {
        public var endTime: Int64?

        public var instanceId: String?

        public var meteringAssist: String?

        public var meteringEntity: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.meteringAssist != nil {
                map["MeteringAssist"] = self.meteringAssist!
            }
            if self.meteringEntity != nil {
                map["MeteringEntity"] = self.meteringEntity!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("MeteringAssist") {
                self.meteringAssist = dict["MeteringAssist"] as! String
            }
            if dict.keys.contains("MeteringEntity") {
                self.meteringEntity = dict["MeteringEntity"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var gmtCreate: String?

    public var meteringData: [PushMeteringDataRequest.MeteringData]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.meteringData != nil {
            var tmp : [Any] = []
            for k in self.meteringData! {
                tmp.append(k.toMap())
            }
            map["MeteringData"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreate") {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("MeteringData") {
            var tmp : [PushMeteringDataRequest.MeteringData] = []
            for v in dict["MeteringData"] as! [Any] {
                var model = PushMeteringDataRequest.MeteringData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.meteringData = tmp
        }
    }
}

public class PushMeteringDataResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicMessage: String?

    public var forceFatal: Bool?

    public var message: String?

    public var requestId: String?

    public var result: Bool?

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
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.forceFatal != nil {
            map["ForceFatal"] = self.forceFatal!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ForceFatal") {
            self.forceFatal = dict["ForceFatal"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PushMeteringDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMeteringDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PushMeteringDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
