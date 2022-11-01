import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ApproveOtaTaskRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var bizRegionId: String?

    public var otaType: String?

    public var startTime: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.otaType != nil {
            map["OtaType"] = self.otaType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("OtaType") {
            self.otaType = dict["OtaType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ApproveOtaTaskResponseBody : Tea.TeaModel {
    public var code: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ApproveOtaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveOtaTaskResponseBody?

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
            var model = ApproveOtaTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AuthorizeInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var authorizeUserIds: [String]?

    public var productType: String?

    public var unAuthorizeUserIds: [String]?

    public override init() {
        super.init()
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
        if self.authorizeUserIds != nil {
            map["AuthorizeUserIds"] = self.authorizeUserIds!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.unAuthorizeUserIds != nil {
            map["UnAuthorizeUserIds"] = self.unAuthorizeUserIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AuthorizeUserIds") {
            self.authorizeUserIds = dict["AuthorizeUserIds"] as! [String]
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("UnAuthorizeUserIds") {
            self.unAuthorizeUserIds = dict["UnAuthorizeUserIds"] as! [String]
        }
    }
}

public class AuthorizeInstanceGroupResponseBody : Tea.TeaModel {
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

public class AuthorizeInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeInstanceGroupResponseBody?

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
            var model = AuthorizeInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelOtaTaskRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CancelOtaTaskResponseBody : Tea.TeaModel {
    public var code: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelOtaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOtaTaskResponseBody?

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
            var model = CancelOtaTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppInstanceGroupRequest : Tea.TeaModel {
    public class NodePool : Tea.TeaModel {
        public var maxScalingAmount: Int32?

        public var nodeAmount: Int32?

        public var nodeCapacity: Int32?

        public var nodeInstanceType: String?

        public var scalingDownAfterIdleMinutes: Int32?

        public var scalingStep: Int32?

        public var scalingUsageThreshold: String?

        public var strategyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxScalingAmount != nil {
                map["MaxScalingAmount"] = self.maxScalingAmount!
            }
            if self.nodeAmount != nil {
                map["NodeAmount"] = self.nodeAmount!
            }
            if self.nodeCapacity != nil {
                map["NodeCapacity"] = self.nodeCapacity!
            }
            if self.nodeInstanceType != nil {
                map["NodeInstanceType"] = self.nodeInstanceType!
            }
            if self.scalingDownAfterIdleMinutes != nil {
                map["ScalingDownAfterIdleMinutes"] = self.scalingDownAfterIdleMinutes!
            }
            if self.scalingStep != nil {
                map["ScalingStep"] = self.scalingStep!
            }
            if self.scalingUsageThreshold != nil {
                map["ScalingUsageThreshold"] = self.scalingUsageThreshold!
            }
            if self.strategyType != nil {
                map["StrategyType"] = self.strategyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxScalingAmount") {
                self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
            }
            if dict.keys.contains("NodeAmount") {
                self.nodeAmount = dict["NodeAmount"] as! Int32
            }
            if dict.keys.contains("NodeCapacity") {
                self.nodeCapacity = dict["NodeCapacity"] as! Int32
            }
            if dict.keys.contains("NodeInstanceType") {
                self.nodeInstanceType = dict["NodeInstanceType"] as! String
            }
            if dict.keys.contains("ScalingDownAfterIdleMinutes") {
                self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
            }
            if dict.keys.contains("ScalingStep") {
                self.scalingStep = dict["ScalingStep"] as! Int32
            }
            if dict.keys.contains("ScalingUsageThreshold") {
                self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
            }
            if dict.keys.contains("StrategyType") {
                self.strategyType = dict["StrategyType"] as! String
            }
        }
    }
    public class UserInfo : Tea.TeaModel {
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
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var appCenterImageId: String?

    public var appInstanceGroupName: String?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeResourceMode: String?

    public var chargeType: String?

    public var nodePool: CreateAppInstanceGroupRequest.NodePool?

    public var period: Int32?

    public var periodUnit: String?

    public var productType: String?

    public var promotionId: String?

    public var sessionTimeout: Int32?

    public var userInfo: CreateAppInstanceGroupRequest.UserInfo?

    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodePool?.validate()
        try self.userInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCenterImageId != nil {
            map["AppCenterImageId"] = self.appCenterImageId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
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
        if self.chargeResourceMode != nil {
            map["ChargeResourceMode"] = self.chargeResourceMode!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.nodePool != nil {
            map["NodePool"] = self.nodePool?.toMap()
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.userInfo != nil {
            map["UserInfo"] = self.userInfo?.toMap()
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCenterImageId") {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
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
        if dict.keys.contains("ChargeResourceMode") {
            self.chargeResourceMode = dict["ChargeResourceMode"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("NodePool") {
            var model = CreateAppInstanceGroupRequest.NodePool()
            model.fromMap(dict["NodePool"] as! [String: Any])
            self.nodePool = model
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("SessionTimeout") {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
        if dict.keys.contains("UserInfo") {
            var model = CreateAppInstanceGroupRequest.UserInfo()
            model.fromMap(dict["UserInfo"] as! [String: Any])
            self.userInfo = model
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class CreateAppInstanceGroupShrinkRequest : Tea.TeaModel {
    public var appCenterImageId: String?

    public var appInstanceGroupName: String?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeResourceMode: String?

    public var chargeType: String?

    public var nodePoolShrink: String?

    public var period: Int32?

    public var periodUnit: String?

    public var productType: String?

    public var promotionId: String?

    public var sessionTimeout: Int32?

    public var userInfoShrink: String?

    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCenterImageId != nil {
            map["AppCenterImageId"] = self.appCenterImageId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
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
        if self.chargeResourceMode != nil {
            map["ChargeResourceMode"] = self.chargeResourceMode!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.nodePoolShrink != nil {
            map["NodePool"] = self.nodePoolShrink!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.userInfoShrink != nil {
            map["UserInfo"] = self.userInfoShrink!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCenterImageId") {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
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
        if dict.keys.contains("ChargeResourceMode") {
            self.chargeResourceMode = dict["ChargeResourceMode"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("NodePool") {
            self.nodePoolShrink = dict["NodePool"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("PromotionId") {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("SessionTimeout") {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
        if dict.keys.contains("UserInfo") {
            self.userInfoShrink = dict["UserInfo"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class CreateAppInstanceGroupResponseBody : Tea.TeaModel {
    public class AppInstanceGroupModel : Tea.TeaModel {
        public var appInstanceGroupId: String?

        public var nodePoolId: String?

        public var orderId: String?

        public override init() {
            super.init()
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
            if self.nodePoolId != nil {
                map["NodePoolId"] = self.nodePoolId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInstanceGroupId") {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("NodePoolId") {
                self.nodePoolId = dict["NodePoolId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
        }
    }
    public var appInstanceGroupModel: CreateAppInstanceGroupResponseBody.AppInstanceGroupModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInstanceGroupModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceGroupModel != nil {
            map["AppInstanceGroupModel"] = self.appInstanceGroupModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupModel") {
            var model = CreateAppInstanceGroupResponseBody.AppInstanceGroupModel()
            model.fromMap(dict["AppInstanceGroupModel"] as! [String: Any])
            self.appInstanceGroupModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppInstanceGroupResponseBody?

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
            var model = CreateAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOtaTaskByTaskIdRequest : Tea.TeaModel {
    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetOtaTaskByTaskIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var otaVersion: String?

    public var releaseNote: String?

    public var requestId: String?

    public var taskStartTime: String?

    public override init() {
        super.init()
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
        if self.otaVersion != nil {
            map["OtaVersion"] = self.otaVersion!
        }
        if self.releaseNote != nil {
            map["ReleaseNote"] = self.releaseNote!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskStartTime != nil {
            map["TaskStartTime"] = self.taskStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OtaVersion") {
            self.otaVersion = dict["OtaVersion"] as! String
        }
        if dict.keys.contains("ReleaseNote") {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskStartTime") {
            self.taskStartTime = dict["TaskStartTime"] as! String
        }
    }
}

public class GetOtaTaskByTaskIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOtaTaskByTaskIdResponseBody?

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
            var model = GetOtaTaskByTaskIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourcePriceRequest : Tea.TeaModel {
    public var amount: Int64?

    public var bizRegionId: String?

    public var chargeType: String?

    public var nodeInstanceType: String?

    public var period: Int64?

    public var periodUnit: String?

    public var productType: String?

    public override init() {
        super.init()
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
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.nodeInstanceType != nil {
            map["NodeInstanceType"] = self.nodeInstanceType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! Int64
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("NodeInstanceType") {
            self.nodeInstanceType = dict["NodeInstanceType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class GetResourcePriceResponseBody : Tea.TeaModel {
    public class PriceModel : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public class Promotions : Tea.TeaModel {
                public var optionCode: String?

                public var promotionDesc: String?

                public var promotionId: String?

                public var promotionName: String?

                public var selected: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.optionCode != nil {
                        map["OptionCode"] = self.optionCode!
                    }
                    if self.promotionDesc != nil {
                        map["PromotionDesc"] = self.promotionDesc!
                    }
                    if self.promotionId != nil {
                        map["PromotionId"] = self.promotionId!
                    }
                    if self.promotionName != nil {
                        map["PromotionName"] = self.promotionName!
                    }
                    if self.selected != nil {
                        map["Selected"] = self.selected!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OptionCode") {
                        self.optionCode = dict["OptionCode"] as! String
                    }
                    if dict.keys.contains("PromotionDesc") {
                        self.promotionDesc = dict["PromotionDesc"] as! String
                    }
                    if dict.keys.contains("PromotionId") {
                        self.promotionId = dict["PromotionId"] as! String
                    }
                    if dict.keys.contains("PromotionName") {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                    if dict.keys.contains("Selected") {
                        self.selected = dict["Selected"] as! Bool
                    }
                }
            }
            public var currency: String?

            public var discountPrice: String?

            public var originalPrice: String?

            public var promotions: [GetResourcePriceResponseBody.PriceModel.Price.Promotions]?

            public var tradePrice: String?

            public override init() {
                super.init()
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
                if self.promotions != nil {
                    var tmp : [Any] = []
                    for k in self.promotions! {
                        tmp.append(k.toMap())
                    }
                    map["Promotions"] = tmp
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") {
                    self.discountPrice = dict["DiscountPrice"] as! String
                }
                if dict.keys.contains("OriginalPrice") {
                    self.originalPrice = dict["OriginalPrice"] as! String
                }
                if dict.keys.contains("Promotions") {
                    self.promotions = dict["Promotions"] as! [GetResourcePriceResponseBody.PriceModel.Price.Promotions]
                }
                if dict.keys.contains("TradePrice") {
                    self.tradePrice = dict["TradePrice"] as! String
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

            public var ruleId: Int64?

            public override init() {
                super.init()
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
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var price: GetResourcePriceResponseBody.PriceModel.Price?

        public var rules: [GetResourcePriceResponseBody.PriceModel.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.price?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.price != nil {
                map["Price"] = self.price?.toMap()
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
            if dict.keys.contains("Price") {
                var model = GetResourcePriceResponseBody.PriceModel.Price()
                model.fromMap(dict["Price"] as! [String: Any])
                self.price = model
            }
            if dict.keys.contains("Rules") {
                self.rules = dict["Rules"] as! [GetResourcePriceResponseBody.PriceModel.Rules]
            }
        }
    }
    public var code: String?

    public var message: String?

    public var priceModel: GetResourcePriceResponseBody.PriceModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.priceModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.priceModel != nil {
            map["PriceModel"] = self.priceModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PriceModel") {
            var model = GetResourcePriceResponseBody.PriceModel()
            model.fromMap(dict["PriceModel"] as! [String: Any])
            self.priceModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetResourcePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourcePriceResponseBody?

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
            var model = GetResourcePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppInstanceGroupRequest : Tea.TeaModel {
    public var appCenterImageId: String?

    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

    public var regionId: String?

    public var status: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCenterImageId != nil {
            map["AppCenterImageId"] = self.appCenterImageId!
        }
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCenterImageId") {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! [String]
        }
    }
}

public class ListAppInstanceGroupResponseBody : Tea.TeaModel {
    public class AppInstanceGroupModels : Tea.TeaModel {
        public class Apps : Tea.TeaModel {
            public var appId: String?

            public var appName: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
            }
        }
        public class NodePool : Tea.TeaModel {
            public class RecurrenceSchedules : Tea.TeaModel {
                public class TimerPeriods : Tea.TeaModel {
                    public var amount: Int32?

                    public var endTime: String?

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
                        if self.amount != nil {
                            map["Amount"] = self.amount!
                        }
                        if self.endTime != nil {
                            map["EndTime"] = self.endTime!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Amount") {
                            self.amount = dict["Amount"] as! Int32
                        }
                        if dict.keys.contains("EndTime") {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! String
                        }
                    }
                }
                public var recurrenceType: String?

                public var recurrenceValues: [Int32]?

                public var timerPeriods: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.recurrenceType != nil {
                        map["RecurrenceType"] = self.recurrenceType!
                    }
                    if self.recurrenceValues != nil {
                        map["RecurrenceValues"] = self.recurrenceValues!
                    }
                    if self.timerPeriods != nil {
                        var tmp : [Any] = []
                        for k in self.timerPeriods! {
                            tmp.append(k.toMap())
                        }
                        map["TimerPeriods"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RecurrenceType") {
                        self.recurrenceType = dict["RecurrenceType"] as! String
                    }
                    if dict.keys.contains("RecurrenceValues") {
                        self.recurrenceValues = dict["RecurrenceValues"] as! [Int32]
                    }
                    if dict.keys.contains("TimerPeriods") {
                        self.timerPeriods = dict["TimerPeriods"] as! [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods]
                    }
                }
            }
            public var amount: Int32?

            public var maxScalingAmount: Int32?

            public var nodeAmount: Int32?

            public var nodeCapacity: Int32?

            public var nodeInstanceType: String?

            public var nodePoolId: String?

            public var nodeUsed: Int32?

            public var recurrenceSchedules: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules]?

            public var scalingDownAfterIdleMinutes: Int32?

            public var scalingNodeAmount: Int32?

            public var scalingNodeUsed: Int32?

            public var scalingStep: Int32?

            public var scalingUsageThreshold: String?

            public var strategyDisableDate: String?

            public var strategyEnableDate: String?

            public var strategyType: String?

            public var warmUp: Bool?

            public override init() {
                super.init()
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
                if self.maxScalingAmount != nil {
                    map["MaxScalingAmount"] = self.maxScalingAmount!
                }
                if self.nodeAmount != nil {
                    map["NodeAmount"] = self.nodeAmount!
                }
                if self.nodeCapacity != nil {
                    map["NodeCapacity"] = self.nodeCapacity!
                }
                if self.nodeInstanceType != nil {
                    map["NodeInstanceType"] = self.nodeInstanceType!
                }
                if self.nodePoolId != nil {
                    map["NodePoolId"] = self.nodePoolId!
                }
                if self.nodeUsed != nil {
                    map["NodeUsed"] = self.nodeUsed!
                }
                if self.recurrenceSchedules != nil {
                    var tmp : [Any] = []
                    for k in self.recurrenceSchedules! {
                        tmp.append(k.toMap())
                    }
                    map["RecurrenceSchedules"] = tmp
                }
                if self.scalingDownAfterIdleMinutes != nil {
                    map["ScalingDownAfterIdleMinutes"] = self.scalingDownAfterIdleMinutes!
                }
                if self.scalingNodeAmount != nil {
                    map["ScalingNodeAmount"] = self.scalingNodeAmount!
                }
                if self.scalingNodeUsed != nil {
                    map["ScalingNodeUsed"] = self.scalingNodeUsed!
                }
                if self.scalingStep != nil {
                    map["ScalingStep"] = self.scalingStep!
                }
                if self.scalingUsageThreshold != nil {
                    map["ScalingUsageThreshold"] = self.scalingUsageThreshold!
                }
                if self.strategyDisableDate != nil {
                    map["StrategyDisableDate"] = self.strategyDisableDate!
                }
                if self.strategyEnableDate != nil {
                    map["StrategyEnableDate"] = self.strategyEnableDate!
                }
                if self.strategyType != nil {
                    map["StrategyType"] = self.strategyType!
                }
                if self.warmUp != nil {
                    map["WarmUp"] = self.warmUp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Amount") {
                    self.amount = dict["Amount"] as! Int32
                }
                if dict.keys.contains("MaxScalingAmount") {
                    self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
                }
                if dict.keys.contains("NodeAmount") {
                    self.nodeAmount = dict["NodeAmount"] as! Int32
                }
                if dict.keys.contains("NodeCapacity") {
                    self.nodeCapacity = dict["NodeCapacity"] as! Int32
                }
                if dict.keys.contains("NodeInstanceType") {
                    self.nodeInstanceType = dict["NodeInstanceType"] as! String
                }
                if dict.keys.contains("NodePoolId") {
                    self.nodePoolId = dict["NodePoolId"] as! String
                }
                if dict.keys.contains("NodeUsed") {
                    self.nodeUsed = dict["NodeUsed"] as! Int32
                }
                if dict.keys.contains("RecurrenceSchedules") {
                    self.recurrenceSchedules = dict["RecurrenceSchedules"] as! [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules]
                }
                if dict.keys.contains("ScalingDownAfterIdleMinutes") {
                    self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
                }
                if dict.keys.contains("ScalingNodeAmount") {
                    self.scalingNodeAmount = dict["ScalingNodeAmount"] as! Int32
                }
                if dict.keys.contains("ScalingNodeUsed") {
                    self.scalingNodeUsed = dict["ScalingNodeUsed"] as! Int32
                }
                if dict.keys.contains("ScalingStep") {
                    self.scalingStep = dict["ScalingStep"] as! Int32
                }
                if dict.keys.contains("ScalingUsageThreshold") {
                    self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
                }
                if dict.keys.contains("StrategyDisableDate") {
                    self.strategyDisableDate = dict["StrategyDisableDate"] as! String
                }
                if dict.keys.contains("StrategyEnableDate") {
                    self.strategyEnableDate = dict["StrategyEnableDate"] as! String
                }
                if dict.keys.contains("StrategyType") {
                    self.strategyType = dict["StrategyType"] as! String
                }
                if dict.keys.contains("WarmUp") {
                    self.warmUp = dict["WarmUp"] as! Bool
                }
            }
        }
        public class OtaInfo : Tea.TeaModel {
            public var newOtaVersion: String?

            public var otaVersion: String?

            public var taskId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.newOtaVersion != nil {
                    map["NewOtaVersion"] = self.newOtaVersion!
                }
                if self.otaVersion != nil {
                    map["OtaVersion"] = self.otaVersion!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NewOtaVersion") {
                    self.newOtaVersion = dict["NewOtaVersion"] as! String
                }
                if dict.keys.contains("OtaVersion") {
                    self.otaVersion = dict["OtaVersion"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
            }
        }
        public var amount: Int32?

        public var appCenterImageId: String?

        public var appInstanceGroupId: String?

        public var appInstanceGroupName: String?

        public var appInstanceType: String?

        public var apps: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps]?

        public var chargeType: String?

        public var expiredTime: String?

        public var gmtCreate: String?

        public var nodePool: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool]?

        public var osType: String?

        public var otaInfo: ListAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo?

        public var productType: String?

        public var regionId: String?

        public var sessionTimeout: String?

        public var specId: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.otaInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.appCenterImageId != nil {
                map["AppCenterImageId"] = self.appCenterImageId!
            }
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceGroupName != nil {
                map["AppInstanceGroupName"] = self.appInstanceGroupName!
            }
            if self.appInstanceType != nil {
                map["AppInstanceType"] = self.appInstanceType!
            }
            if self.apps != nil {
                var tmp : [Any] = []
                for k in self.apps! {
                    tmp.append(k.toMap())
                }
                map["Apps"] = tmp
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.nodePool != nil {
                var tmp : [Any] = []
                for k in self.nodePool! {
                    tmp.append(k.toMap())
                }
                map["NodePool"] = tmp
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.otaInfo != nil {
                map["OtaInfo"] = self.otaInfo?.toMap()
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sessionTimeout != nil {
                map["SessionTimeout"] = self.sessionTimeout!
            }
            if self.specId != nil {
                map["SpecId"] = self.specId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! Int32
            }
            if dict.keys.contains("AppCenterImageId") {
                self.appCenterImageId = dict["AppCenterImageId"] as! String
            }
            if dict.keys.contains("AppInstanceGroupId") {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("AppInstanceGroupName") {
                self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
            }
            if dict.keys.contains("AppInstanceType") {
                self.appInstanceType = dict["AppInstanceType"] as! String
            }
            if dict.keys.contains("Apps") {
                self.apps = dict["Apps"] as! [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps]
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("NodePool") {
                self.nodePool = dict["NodePool"] as! [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool]
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("OtaInfo") {
                var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo()
                model.fromMap(dict["OtaInfo"] as! [String: Any])
                self.otaInfo = model
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SessionTimeout") {
                self.sessionTimeout = dict["SessionTimeout"] as! String
            }
            if dict.keys.contains("SpecId") {
                self.specId = dict["SpecId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var appInstanceGroupModels: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.appInstanceGroupModels != nil {
            var tmp : [Any] = []
            for k in self.appInstanceGroupModels! {
                tmp.append(k.toMap())
            }
            map["AppInstanceGroupModels"] = tmp
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
        if dict.keys.contains("AppInstanceGroupModels") {
            self.appInstanceGroupModels = dict["AppInstanceGroupModels"] as! [ListAppInstanceGroupResponseBody.AppInstanceGroupModels]
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
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppInstanceGroupResponseBody?

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
            var model = ListAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodeInstanceTypeRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var language: String?

    public var osType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

    public override init() {
        super.init()
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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class ListNodeInstanceTypeResponseBody : Tea.TeaModel {
    public class NodeInstanceTypeModels : Tea.TeaModel {
        public var cpu: String?

        public var gpu: String?

        public var gpuMemory: Int64?

        public var maxCapacity: Int32?

        public var memory: Int64?

        public var nodeInstanceType: String?

        public var nodeInstanceTypeFamily: String?

        public var nodeTypeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.gpuMemory != nil {
                map["GpuMemory"] = self.gpuMemory!
            }
            if self.maxCapacity != nil {
                map["MaxCapacity"] = self.maxCapacity!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nodeInstanceType != nil {
                map["NodeInstanceType"] = self.nodeInstanceType!
            }
            if self.nodeInstanceTypeFamily != nil {
                map["NodeInstanceTypeFamily"] = self.nodeInstanceTypeFamily!
            }
            if self.nodeTypeName != nil {
                map["NodeTypeName"] = self.nodeTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! String
            }
            if dict.keys.contains("Gpu") {
                self.gpu = dict["Gpu"] as! String
            }
            if dict.keys.contains("GpuMemory") {
                self.gpuMemory = dict["GpuMemory"] as! Int64
            }
            if dict.keys.contains("MaxCapacity") {
                self.maxCapacity = dict["MaxCapacity"] as! Int32
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("NodeInstanceType") {
                self.nodeInstanceType = dict["NodeInstanceType"] as! String
            }
            if dict.keys.contains("NodeInstanceTypeFamily") {
                self.nodeInstanceTypeFamily = dict["NodeInstanceTypeFamily"] as! String
            }
            if dict.keys.contains("NodeTypeName") {
                self.nodeTypeName = dict["NodeTypeName"] as! String
            }
        }
    }
    public var nodeInstanceTypeModels: [ListNodeInstanceTypeResponseBody.NodeInstanceTypeModels]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.nodeInstanceTypeModels != nil {
            var tmp : [Any] = []
            for k in self.nodeInstanceTypeModels! {
                tmp.append(k.toMap())
            }
            map["NodeInstanceTypeModels"] = tmp
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
        if dict.keys.contains("NodeInstanceTypeModels") {
            self.nodeInstanceTypeModels = dict["NodeInstanceTypeModels"] as! [ListNodeInstanceTypeResponseBody.NodeInstanceTypeModels]
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
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListNodeInstanceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodeInstanceTypeResponseBody?

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
            var model = ListNodeInstanceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOtaTaskRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var otaType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.otaType != nil {
            map["OtaType"] = self.otaType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("OtaType") {
            self.otaType = dict["OtaType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListOtaTaskResponseBody : Tea.TeaModel {
    public class TaskList : Tea.TeaModel {
        public var otaVersion: String?

        public var taskDisplayStatus: String?

        public var taskId: String?

        public var taskStartTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.otaVersion != nil {
                map["OtaVersion"] = self.otaVersion!
            }
            if self.taskDisplayStatus != nil {
                map["TaskDisplayStatus"] = self.taskDisplayStatus!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskStartTime != nil {
                map["TaskStartTime"] = self.taskStartTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OtaVersion") {
                self.otaVersion = dict["OtaVersion"] as! String
            }
            if dict.keys.contains("TaskDisplayStatus") {
                self.taskDisplayStatus = dict["TaskDisplayStatus"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStartTime") {
                self.taskStartTime = dict["TaskStartTime"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var taskList: [ListOtaTaskResponseBody.TaskList]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskList != nil {
            var tmp : [Any] = []
            for k in self.taskList! {
                tmp.append(k.toMap())
            }
            map["TaskList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskList") {
            self.taskList = dict["TaskList"] as! [ListOtaTaskResponseBody.TaskList]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListOtaTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOtaTaskResponseBody?

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
            var model = ListOtaTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
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
                map["regionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("regionId") {
                self.regionId = dict["regionId"] as! String
            }
        }
    }
    public var regionModels: [ListRegionsResponseBody.RegionModels]?

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
            self.regionModels = dict["RegionModels"] as! [ListRegionsResponseBody.RegionModels]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppInstanceGroupAttributeRequest : Tea.TeaModel {
    public class NodePool : Tea.TeaModel {
        public var nodeCapacity: Int32?

        public var nodePoolId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeCapacity != nil {
                map["NodeCapacity"] = self.nodeCapacity!
            }
            if self.nodePoolId != nil {
                map["NodePoolId"] = self.nodePoolId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeCapacity") {
                self.nodeCapacity = dict["NodeCapacity"] as! Int32
            }
            if dict.keys.contains("NodePoolId") {
                self.nodePoolId = dict["NodePoolId"] as! String
            }
        }
    }
    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var nodePool: ModifyAppInstanceGroupAttributeRequest.NodePool?

    public var productType: String?

    public var sessionTimeout: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodePool?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.nodePool != nil {
            map["NodePool"] = self.nodePool?.toMap()
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("NodePool") {
            var model = ModifyAppInstanceGroupAttributeRequest.NodePool()
            model.fromMap(dict["NodePool"] as! [String: Any])
            self.nodePool = model
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SessionTimeout") {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
    }
}

public class ModifyAppInstanceGroupAttributeShrinkRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var nodePoolShrink: String?

    public var productType: String?

    public var sessionTimeout: Int32?

    public override init() {
        super.init()
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
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.nodePoolShrink != nil {
            map["NodePool"] = self.nodePoolShrink!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("NodePool") {
            self.nodePoolShrink = dict["NodePool"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SessionTimeout") {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
    }
}

public class ModifyAppInstanceGroupAttributeResponseBody : Tea.TeaModel {
    public var code: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAppInstanceGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppInstanceGroupAttributeResponseBody?

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
            var model = ModifyAppInstanceGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyNodePoolAttributeRequest : Tea.TeaModel {
    public class NodePoolStrategy : Tea.TeaModel {
        public var maxScalingAmount: Int32?

        public var scalingDownAfterIdleMinutes: Int32?

        public var scalingStep: Int32?

        public var scalingUsageThreshold: String?

        public var strategyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxScalingAmount != nil {
                map["MaxScalingAmount"] = self.maxScalingAmount!
            }
            if self.scalingDownAfterIdleMinutes != nil {
                map["ScalingDownAfterIdleMinutes"] = self.scalingDownAfterIdleMinutes!
            }
            if self.scalingStep != nil {
                map["ScalingStep"] = self.scalingStep!
            }
            if self.scalingUsageThreshold != nil {
                map["ScalingUsageThreshold"] = self.scalingUsageThreshold!
            }
            if self.strategyType != nil {
                map["StrategyType"] = self.strategyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaxScalingAmount") {
                self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
            }
            if dict.keys.contains("ScalingDownAfterIdleMinutes") {
                self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
            }
            if dict.keys.contains("ScalingStep") {
                self.scalingStep = dict["ScalingStep"] as! Int32
            }
            if dict.keys.contains("ScalingUsageThreshold") {
                self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
            }
            if dict.keys.contains("StrategyType") {
                self.strategyType = dict["StrategyType"] as! String
            }
        }
    }
    public var bizRegionId: String?

    public var nodeCapacity: Int32?

    public var nodePoolStrategy: ModifyNodePoolAttributeRequest.NodePoolStrategy?

    public var poolId: String?

    public var productType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.nodePoolStrategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.nodeCapacity != nil {
            map["NodeCapacity"] = self.nodeCapacity!
        }
        if self.nodePoolStrategy != nil {
            map["NodePoolStrategy"] = self.nodePoolStrategy?.toMap()
        }
        if self.poolId != nil {
            map["PoolId"] = self.poolId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("NodeCapacity") {
            self.nodeCapacity = dict["NodeCapacity"] as! Int32
        }
        if dict.keys.contains("NodePoolStrategy") {
            var model = ModifyNodePoolAttributeRequest.NodePoolStrategy()
            model.fromMap(dict["NodePoolStrategy"] as! [String: Any])
            self.nodePoolStrategy = model
        }
        if dict.keys.contains("PoolId") {
            self.poolId = dict["PoolId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class ModifyNodePoolAttributeShrinkRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var nodeCapacity: Int32?

    public var nodePoolStrategyShrink: String?

    public var poolId: String?

    public var productType: String?

    public override init() {
        super.init()
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
        if self.nodeCapacity != nil {
            map["NodeCapacity"] = self.nodeCapacity!
        }
        if self.nodePoolStrategyShrink != nil {
            map["NodePoolStrategy"] = self.nodePoolStrategyShrink!
        }
        if self.poolId != nil {
            map["PoolId"] = self.poolId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("NodeCapacity") {
            self.nodeCapacity = dict["NodeCapacity"] as! Int32
        }
        if dict.keys.contains("NodePoolStrategy") {
            self.nodePoolStrategyShrink = dict["NodePoolStrategy"] as! String
        }
        if dict.keys.contains("PoolId") {
            self.poolId = dict["PoolId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class ModifyNodePoolAttributeResponseBody : Tea.TeaModel {
    public var code: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyNodePoolAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodePoolAttributeResponseBody?

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
            var model = ModifyNodePoolAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PageListAppInstanceGroupUserRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class PageListAppInstanceGroupUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var users: [String]?

    public override init() {
        super.init()
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
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class PageListAppInstanceGroupUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageListAppInstanceGroupUserResponseBody?

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
            var model = PageListAppInstanceGroupUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppInstanceGroupImageRequest : Tea.TeaModel {
    public var appCenterImageId: String?

    public var appInstanceGroupId: String?

    public var bizRegionId: String?

    public var productType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCenterImageId != nil {
            map["AppCenterImageId"] = self.appCenterImageId!
        }
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCenterImageId") {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupId") {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("BizRegionId") {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class UpdateAppInstanceGroupImageResponseBody : Tea.TeaModel {
    public var code: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppInstanceGroupImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppInstanceGroupImageResponseBody?

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
            var model = UpdateAppInstanceGroupImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
