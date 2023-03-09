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
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("OtaType") && dict["OtaType"] != nil {
            self.otaType = dict["OtaType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AuthorizeUserIds") && dict["AuthorizeUserIds"] != nil {
            self.authorizeUserIds = dict["AuthorizeUserIds"] as! [String]
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("UnAuthorizeUserIds") && dict["UnAuthorizeUserIds"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelOtaTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppInstanceGroupRequest : Tea.TeaModel {
    public class Network : Tea.TeaModel {
        public class Routes : Tea.TeaModel {
            public var destination: String?

            public var mode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.destination != nil {
                    map["Destination"] = self.destination!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Destination") && dict["Destination"] != nil {
                    self.destination = dict["Destination"] as! String
                }
                if dict.keys.contains("Mode") && dict["Mode"] != nil {
                    self.mode = dict["Mode"] as! String
                }
            }
        }
        public var routes: [CreateAppInstanceGroupRequest.Network.Routes]?

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
            if self.routes != nil {
                var tmp : [Any] = []
                for k in self.routes! {
                    tmp.append(k.toMap())
                }
                map["Routes"] = tmp
            }
            if self.strategyType != nil {
                map["StrategyType"] = self.strategyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Routes") && dict["Routes"] != nil {
                var tmp : [CreateAppInstanceGroupRequest.Network.Routes] = []
                for v in dict["Routes"] as! [Any] {
                    var model = CreateAppInstanceGroupRequest.Network.Routes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.routes = tmp
            }
            if dict.keys.contains("StrategyType") && dict["StrategyType"] != nil {
                self.strategyType = dict["StrategyType"] as! String
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
                    if dict.keys.contains("Amount") && dict["Amount"] != nil {
                        self.amount = dict["Amount"] as! Int32
                    }
                    if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                        self.startTime = dict["StartTime"] as! String
                    }
                }
            }
            public var recurrenceType: String?

            public var recurrenceValues: [Int32]?

            public var timerPeriods: [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules.TimerPeriods]?

            public override init() {
                super.init()
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
                if dict.keys.contains("RecurrenceType") && dict["RecurrenceType"] != nil {
                    self.recurrenceType = dict["RecurrenceType"] as! String
                }
                if dict.keys.contains("RecurrenceValues") && dict["RecurrenceValues"] != nil {
                    self.recurrenceValues = dict["RecurrenceValues"] as! [Int32]
                }
                if dict.keys.contains("TimerPeriods") && dict["TimerPeriods"] != nil {
                    var tmp : [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules.TimerPeriods] = []
                    for v in dict["TimerPeriods"] as! [Any] {
                        var model = CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules.TimerPeriods()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.timerPeriods = tmp
                }
            }
        }
        public var maxScalingAmount: Int32?

        public var nodeAmount: Int32?

        public var nodeCapacity: Int32?

        public var nodeInstanceType: String?

        public var recurrenceSchedules: [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules]?

        public var scalingDownAfterIdleMinutes: Int32?

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
            if dict.keys.contains("MaxScalingAmount") && dict["MaxScalingAmount"] != nil {
                self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
            }
            if dict.keys.contains("NodeAmount") && dict["NodeAmount"] != nil {
                self.nodeAmount = dict["NodeAmount"] as! Int32
            }
            if dict.keys.contains("NodeCapacity") && dict["NodeCapacity"] != nil {
                self.nodeCapacity = dict["NodeCapacity"] as! Int32
            }
            if dict.keys.contains("NodeInstanceType") && dict["NodeInstanceType"] != nil {
                self.nodeInstanceType = dict["NodeInstanceType"] as! String
            }
            if dict.keys.contains("RecurrenceSchedules") && dict["RecurrenceSchedules"] != nil {
                var tmp : [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules] = []
                for v in dict["RecurrenceSchedules"] as! [Any] {
                    var model = CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recurrenceSchedules = tmp
            }
            if dict.keys.contains("ScalingDownAfterIdleMinutes") && dict["ScalingDownAfterIdleMinutes"] != nil {
                self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
            }
            if dict.keys.contains("ScalingStep") && dict["ScalingStep"] != nil {
                self.scalingStep = dict["ScalingStep"] as! Int32
            }
            if dict.keys.contains("ScalingUsageThreshold") && dict["ScalingUsageThreshold"] != nil {
                self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
            }
            if dict.keys.contains("StrategyDisableDate") && dict["StrategyDisableDate"] != nil {
                self.strategyDisableDate = dict["StrategyDisableDate"] as! String
            }
            if dict.keys.contains("StrategyEnableDate") && dict["StrategyEnableDate"] != nil {
                self.strategyEnableDate = dict["StrategyEnableDate"] as! String
            }
            if dict.keys.contains("StrategyType") && dict["StrategyType"] != nil {
                self.strategyType = dict["StrategyType"] as! String
            }
            if dict.keys.contains("WarmUp") && dict["WarmUp"] != nil {
                self.warmUp = dict["WarmUp"] as! Bool
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
            if dict.keys.contains("Type") && dict["Type"] != nil {
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

    public var network: CreateAppInstanceGroupRequest.Network?

    public var nodePool: CreateAppInstanceGroupRequest.NodePool?

    public var period: Int32?

    public var periodUnit: String?

    public var preOpenAppId: String?

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
        try self.network?.validate()
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
        if self.network != nil {
            map["Network"] = self.network?.toMap()
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
        if self.preOpenAppId != nil {
            map["PreOpenAppId"] = self.preOpenAppId!
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
        if dict.keys.contains("AppCenterImageId") && dict["AppCenterImageId"] != nil {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") && dict["AppInstanceGroupName"] != nil {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("AutoPay") && dict["AutoPay"] != nil {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ChargeResourceMode") && dict["ChargeResourceMode"] != nil {
            self.chargeResourceMode = dict["ChargeResourceMode"] as! String
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Network") && dict["Network"] != nil {
            var model = CreateAppInstanceGroupRequest.Network()
            model.fromMap(dict["Network"] as! [String: Any])
            self.network = model
        }
        if dict.keys.contains("NodePool") && dict["NodePool"] != nil {
            var model = CreateAppInstanceGroupRequest.NodePool()
            model.fromMap(dict["NodePool"] as! [String: Any])
            self.nodePool = model
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PreOpenAppId") && dict["PreOpenAppId"] != nil {
            self.preOpenAppId = dict["PreOpenAppId"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("PromotionId") && dict["PromotionId"] != nil {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("SessionTimeout") && dict["SessionTimeout"] != nil {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
        if dict.keys.contains("UserInfo") && dict["UserInfo"] != nil {
            var model = CreateAppInstanceGroupRequest.UserInfo()
            model.fromMap(dict["UserInfo"] as! [String: Any])
            self.userInfo = model
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
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

    public var networkShrink: String?

    public var nodePoolShrink: String?

    public var period: Int32?

    public var periodUnit: String?

    public var preOpenAppId: String?

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
        if self.networkShrink != nil {
            map["Network"] = self.networkShrink!
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
        if self.preOpenAppId != nil {
            map["PreOpenAppId"] = self.preOpenAppId!
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
        if dict.keys.contains("AppCenterImageId") && dict["AppCenterImageId"] != nil {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") && dict["AppInstanceGroupName"] != nil {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("AutoPay") && dict["AutoPay"] != nil {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ChargeResourceMode") && dict["ChargeResourceMode"] != nil {
            self.chargeResourceMode = dict["ChargeResourceMode"] as! String
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Network") && dict["Network"] != nil {
            self.networkShrink = dict["Network"] as! String
        }
        if dict.keys.contains("NodePool") && dict["NodePool"] != nil {
            self.nodePoolShrink = dict["NodePool"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PreOpenAppId") && dict["PreOpenAppId"] != nil {
            self.preOpenAppId = dict["PreOpenAppId"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("PromotionId") && dict["PromotionId"] != nil {
            self.promotionId = dict["PromotionId"] as! String
        }
        if dict.keys.contains("SessionTimeout") && dict["SessionTimeout"] != nil {
            self.sessionTimeout = dict["SessionTimeout"] as! Int32
        }
        if dict.keys.contains("UserInfo") && dict["UserInfo"] != nil {
            self.userInfoShrink = dict["UserInfo"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
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
            if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("NodePoolId") && dict["NodePoolId"] != nil {
                self.nodePoolId = dict["NodePoolId"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
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
        if dict.keys.contains("AppInstanceGroupModel") && dict["AppInstanceGroupModel"] != nil {
            var model = CreateAppInstanceGroupResponseBody.AppInstanceGroupModel()
            model.fromMap(dict["AppInstanceGroupModel"] as! [String: Any])
            self.appInstanceGroupModel = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class DeleteAppInstanceGroupResponseBody : Tea.TeaModel {
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

public class DeleteAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppInstanceGroupResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppInstancesRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceIds: [String]?

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
        if self.appInstanceIds != nil {
            map["AppInstanceIds"] = self.appInstanceIds!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceIds") && dict["AppInstanceIds"] != nil {
            self.appInstanceIds = dict["AppInstanceIds"] as! [String]
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class DeleteAppInstancesResponseBody : Tea.TeaModel {
    public class DeleteAppInstanceModels : Tea.TeaModel {
        public var appInstanceId: String?

        public var code: String?

        public var message: String?

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
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
                self.appInstanceId = dict["AppInstanceId"] as! String
            }
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
        }
    }
    public var deleteAppInstanceModels: [DeleteAppInstancesResponseBody.DeleteAppInstanceModels]?

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
        if self.deleteAppInstanceModels != nil {
            var tmp : [Any] = []
            for k in self.deleteAppInstanceModels! {
                tmp.append(k.toMap())
            }
            map["DeleteAppInstanceModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleteAppInstanceModels") && dict["DeleteAppInstanceModels"] != nil {
            var tmp : [DeleteAppInstancesResponseBody.DeleteAppInstanceModels] = []
            for v in dict["DeleteAppInstanceModels"] as! [Any] {
                var model = DeleteAppInstancesResponseBody.DeleteAppInstanceModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deleteAppInstanceModels = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAppInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppInstancesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteAppInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class GetAppInstanceGroupResponseBody : Tea.TeaModel {
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
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
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
                        if dict.keys.contains("Amount") && dict["Amount"] != nil {
                            self.amount = dict["Amount"] as! Int32
                        }
                        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                            self.startTime = dict["StartTime"] as! String
                        }
                    }
                }
                public var recurrenceType: String?

                public var recurrenceValues: [Int32]?

                public var timerPeriods: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("RecurrenceType") && dict["RecurrenceType"] != nil {
                        self.recurrenceType = dict["RecurrenceType"] as! String
                    }
                    if dict.keys.contains("RecurrenceValues") && dict["RecurrenceValues"] != nil {
                        self.recurrenceValues = dict["RecurrenceValues"] as! [Int32]
                    }
                    if dict.keys.contains("TimerPeriods") && dict["TimerPeriods"] != nil {
                        var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods] = []
                        for v in dict["TimerPeriods"] as! [Any] {
                            var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.timerPeriods = tmp
                    }
                }
            }
            public var amount: Int32?

            public var maxScalingAmount: Int32?

            public var nodeAmount: Int32?

            public var nodeCapacity: Int32?

            public var nodeInstanceType: String?

            public var nodePoolId: String?

            public var nodeTypeName: String?

            public var nodeUsed: Int32?

            public var recurrenceSchedules: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules]?

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
                if self.nodeTypeName != nil {
                    map["NodeTypeName"] = self.nodeTypeName!
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
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! Int32
                }
                if dict.keys.contains("MaxScalingAmount") && dict["MaxScalingAmount"] != nil {
                    self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
                }
                if dict.keys.contains("NodeAmount") && dict["NodeAmount"] != nil {
                    self.nodeAmount = dict["NodeAmount"] as! Int32
                }
                if dict.keys.contains("NodeCapacity") && dict["NodeCapacity"] != nil {
                    self.nodeCapacity = dict["NodeCapacity"] as! Int32
                }
                if dict.keys.contains("NodeInstanceType") && dict["NodeInstanceType"] != nil {
                    self.nodeInstanceType = dict["NodeInstanceType"] as! String
                }
                if dict.keys.contains("NodePoolId") && dict["NodePoolId"] != nil {
                    self.nodePoolId = dict["NodePoolId"] as! String
                }
                if dict.keys.contains("NodeTypeName") && dict["NodeTypeName"] != nil {
                    self.nodeTypeName = dict["NodeTypeName"] as! String
                }
                if dict.keys.contains("NodeUsed") && dict["NodeUsed"] != nil {
                    self.nodeUsed = dict["NodeUsed"] as! Int32
                }
                if dict.keys.contains("RecurrenceSchedules") && dict["RecurrenceSchedules"] != nil {
                    var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules] = []
                    for v in dict["RecurrenceSchedules"] as! [Any] {
                        var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.recurrenceSchedules = tmp
                }
                if dict.keys.contains("ScalingDownAfterIdleMinutes") && dict["ScalingDownAfterIdleMinutes"] != nil {
                    self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
                }
                if dict.keys.contains("ScalingNodeAmount") && dict["ScalingNodeAmount"] != nil {
                    self.scalingNodeAmount = dict["ScalingNodeAmount"] as! Int32
                }
                if dict.keys.contains("ScalingNodeUsed") && dict["ScalingNodeUsed"] != nil {
                    self.scalingNodeUsed = dict["ScalingNodeUsed"] as! Int32
                }
                if dict.keys.contains("ScalingStep") && dict["ScalingStep"] != nil {
                    self.scalingStep = dict["ScalingStep"] as! Int32
                }
                if dict.keys.contains("ScalingUsageThreshold") && dict["ScalingUsageThreshold"] != nil {
                    self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
                }
                if dict.keys.contains("StrategyDisableDate") && dict["StrategyDisableDate"] != nil {
                    self.strategyDisableDate = dict["StrategyDisableDate"] as! String
                }
                if dict.keys.contains("StrategyEnableDate") && dict["StrategyEnableDate"] != nil {
                    self.strategyEnableDate = dict["StrategyEnableDate"] as! String
                }
                if dict.keys.contains("StrategyType") && dict["StrategyType"] != nil {
                    self.strategyType = dict["StrategyType"] as! String
                }
                if dict.keys.contains("WarmUp") && dict["WarmUp"] != nil {
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
                if dict.keys.contains("NewOtaVersion") && dict["NewOtaVersion"] != nil {
                    self.newOtaVersion = dict["NewOtaVersion"] as! String
                }
                if dict.keys.contains("OtaVersion") && dict["OtaVersion"] != nil {
                    self.otaVersion = dict["OtaVersion"] as! String
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
            }
        }
        public var amount: Int32?

        public var appCenterImageId: String?

        public var appCenterImageName: String?

        public var appInstanceGroupId: String?

        public var appInstanceGroupName: String?

        public var appInstanceType: String?

        public var apps: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps]?

        public var chargeType: String?

        public var expiredTime: String?

        public var gmtCreate: String?

        public var nodePool: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool]?

        public var osType: String?

        public var otaInfo: GetAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo?

        public var productType: String?

        public var regionId: String?

        public var resourceStatus: String?

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
            if self.appCenterImageName != nil {
                map["AppCenterImageName"] = self.appCenterImageName!
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
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
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
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! Int32
            }
            if dict.keys.contains("AppCenterImageId") && dict["AppCenterImageId"] != nil {
                self.appCenterImageId = dict["AppCenterImageId"] as! String
            }
            if dict.keys.contains("AppCenterImageName") && dict["AppCenterImageName"] != nil {
                self.appCenterImageName = dict["AppCenterImageName"] as! String
            }
            if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("AppInstanceGroupName") && dict["AppInstanceGroupName"] != nil {
                self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
            }
            if dict.keys.contains("AppInstanceType") && dict["AppInstanceType"] != nil {
                self.appInstanceType = dict["AppInstanceType"] as! String
            }
            if dict.keys.contains("Apps") && dict["Apps"] != nil {
                var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps] = []
                for v in dict["Apps"] as! [Any] {
                    var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apps = tmp
            }
            if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("NodePool") && dict["NodePool"] != nil {
                var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool] = []
                for v in dict["NodePool"] as! [Any] {
                    var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodePool = tmp
            }
            if dict.keys.contains("OsType") && dict["OsType"] != nil {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("OtaInfo") && dict["OtaInfo"] != nil {
                var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo()
                model.fromMap(dict["OtaInfo"] as! [String: Any])
                self.otaInfo = model
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceStatus") && dict["ResourceStatus"] != nil {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("SessionTimeout") && dict["SessionTimeout"] != nil {
                self.sessionTimeout = dict["SessionTimeout"] as! String
            }
            if dict.keys.contains("SpecId") && dict["SpecId"] != nil {
                self.specId = dict["SpecId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var appInstanceGroupModels: GetAppInstanceGroupResponseBody.AppInstanceGroupModels?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInstanceGroupModels?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceGroupModels != nil {
            map["AppInstanceGroupModels"] = self.appInstanceGroupModels?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupModels") && dict["AppInstanceGroupModels"] != nil {
            var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels()
            model.fromMap(dict["AppInstanceGroupModels"] as! [String: Any])
            self.appInstanceGroupModels = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppInstanceGroupResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAppInstanceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConnectionTicketRequest : Tea.TeaModel {
    public var appId: String?

    public var appInstanceGroupIdList: [String]?

    public var appInstanceId: String?

    public var appStartParam: String?

    public var appVersion: String?

    public var bizRegionId: String?

    public var endUserId: String?

    public var productType: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appInstanceGroupIdList != nil {
            map["AppInstanceGroupIdList"] = self.appInstanceGroupIdList!
        }
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appStartParam != nil {
            map["AppStartParam"] = self.appStartParam!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupIdList") && dict["AppInstanceGroupIdList"] != nil {
            self.appInstanceGroupIdList = dict["AppInstanceGroupIdList"] as! [String]
        }
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("AppStartParam") && dict["AppStartParam"] != nil {
            self.appStartParam = dict["AppStartParam"] as! String
        }
        if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("EndUserId") && dict["EndUserId"] != nil {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetConnectionTicketResponseBody : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var bizRegionId: String?

    public var osType: String?

    public var requestId: String?

    public var taskId: String?

    public var taskStatus: String?

    public var ticket: String?

    public override init() {
        super.init()
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
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceId") && dict["AppInstanceId"] != nil {
            self.appInstanceId = dict["AppInstanceId"] as! String
        }
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("OsType") && dict["OsType"] != nil {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("Ticket") && dict["Ticket"] != nil {
            self.ticket = dict["Ticket"] as! String
        }
    }
}

public class GetConnectionTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnectionTicketResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetConnectionTicketResponseBody()
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
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OtaVersion") && dict["OtaVersion"] != nil {
            self.otaVersion = dict["OtaVersion"] as! String
        }
        if dict.keys.contains("ReleaseNote") && dict["ReleaseNote"] != nil {
            self.releaseNote = dict["ReleaseNote"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskStartTime") && dict["TaskStartTime"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Amount") && dict["Amount"] != nil {
            self.amount = dict["Amount"] as! Int64
        }
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("NodeInstanceType") && dict["NodeInstanceType"] != nil {
            self.nodeInstanceType = dict["NodeInstanceType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
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
                    if dict.keys.contains("OptionCode") && dict["OptionCode"] != nil {
                        self.optionCode = dict["OptionCode"] as! String
                    }
                    if dict.keys.contains("PromotionDesc") && dict["PromotionDesc"] != nil {
                        self.promotionDesc = dict["PromotionDesc"] as! String
                    }
                    if dict.keys.contains("PromotionId") && dict["PromotionId"] != nil {
                        self.promotionId = dict["PromotionId"] as! String
                    }
                    if dict.keys.contains("PromotionName") && dict["PromotionName"] != nil {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                    if dict.keys.contains("Selected") && dict["Selected"] != nil {
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
                if dict.keys.contains("Currency") && dict["Currency"] != nil {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                    self.discountPrice = dict["DiscountPrice"] as! String
                }
                if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                    self.originalPrice = dict["OriginalPrice"] as! String
                }
                if dict.keys.contains("Promotions") && dict["Promotions"] != nil {
                    var tmp : [GetResourcePriceResponseBody.PriceModel.Price.Promotions] = []
                    for v in dict["Promotions"] as! [Any] {
                        var model = GetResourcePriceResponseBody.PriceModel.Price.Promotions()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.promotions = tmp
                }
                if dict.keys.contains("TradePrice") && dict["TradePrice"] != nil {
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
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
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
            if dict.keys.contains("Price") && dict["Price"] != nil {
                var model = GetResourcePriceResponseBody.PriceModel.Price()
                model.fromMap(dict["Price"] as! [String: Any])
                self.price = model
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [GetResourcePriceResponseBody.PriceModel.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = GetResourcePriceResponseBody.PriceModel.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PriceModel") && dict["PriceModel"] != nil {
            var model = GetResourcePriceResponseBody.PriceModel()
            model.fromMap(dict["PriceModel"] as! [String: Any])
            self.priceModel = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetResourcePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceRenewPriceRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
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
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int64
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class GetResourceRenewPriceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                    if dict.keys.contains("OptionCode") && dict["OptionCode"] != nil {
                        self.optionCode = dict["OptionCode"] as! String
                    }
                    if dict.keys.contains("PromotionDesc") && dict["PromotionDesc"] != nil {
                        self.promotionDesc = dict["PromotionDesc"] as! String
                    }
                    if dict.keys.contains("PromotionId") && dict["PromotionId"] != nil {
                        self.promotionId = dict["PromotionId"] as! String
                    }
                    if dict.keys.contains("PromotionName") && dict["PromotionName"] != nil {
                        self.promotionName = dict["PromotionName"] as! String
                    }
                    if dict.keys.contains("Selected") && dict["Selected"] != nil {
                        self.selected = dict["Selected"] as! Bool
                    }
                }
            }
            public var currency: String?

            public var discountPrice: String?

            public var originalPrice: String?

            public var promotions: [GetResourceRenewPriceResponseBody.Data.Price.Promotions]?

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
                if dict.keys.contains("Currency") && dict["Currency"] != nil {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("DiscountPrice") && dict["DiscountPrice"] != nil {
                    self.discountPrice = dict["DiscountPrice"] as! String
                }
                if dict.keys.contains("OriginalPrice") && dict["OriginalPrice"] != nil {
                    self.originalPrice = dict["OriginalPrice"] as! String
                }
                if dict.keys.contains("Promotions") && dict["Promotions"] != nil {
                    var tmp : [GetResourceRenewPriceResponseBody.Data.Price.Promotions] = []
                    for v in dict["Promotions"] as! [Any] {
                        var model = GetResourceRenewPriceResponseBody.Data.Price.Promotions()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.promotions = tmp
                }
                if dict.keys.contains("TradePrice") && dict["TradePrice"] != nil {
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
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! Int64
                }
            }
        }
        public var price: GetResourceRenewPriceResponseBody.Data.Price?

        public var rules: [GetResourceRenewPriceResponseBody.Data.Rules]?

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
            if dict.keys.contains("Price") && dict["Price"] != nil {
                var model = GetResourceRenewPriceResponseBody.Data.Price()
                model.fromMap(dict["Price"] as! [String: Any])
                self.price = model
            }
            if dict.keys.contains("Rules") && dict["Rules"] != nil {
                var tmp : [GetResourceRenewPriceResponseBody.Data.Rules] = []
                for v in dict["Rules"] as! [Any] {
                    var model = GetResourceRenewPriceResponseBody.Data.Rules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rules = tmp
            }
        }
    }
    public var data: GetResourceRenewPriceResponseBody.Data?

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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetResourceRenewPriceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetResourceRenewPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceRenewPriceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetResourceRenewPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppInstanceGroupRequest : Tea.TeaModel {
    public var appCenterImageId: String?

    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var nodeInstanceType: String?

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
        if self.nodeInstanceType != nil {
            map["NodeInstanceType"] = self.nodeInstanceType!
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
        if dict.keys.contains("AppCenterImageId") && dict["AppCenterImageId"] != nil {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") && dict["AppInstanceGroupName"] != nil {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("NodeInstanceType") && dict["NodeInstanceType"] != nil {
            self.nodeInstanceType = dict["NodeInstanceType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! [String]
        }
    }
}

public class ListAppInstanceGroupResponseBody : Tea.TeaModel {
    public class AppInstanceGroupModels : Tea.TeaModel {
        public class Apps : Tea.TeaModel {
            public var appIcon: String?

            public var appId: String?

            public var appName: String?

            public var appVersion: String?

            public var appVersionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appIcon != nil {
                    map["AppIcon"] = self.appIcon!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appVersion != nil {
                    map["AppVersion"] = self.appVersion!
                }
                if self.appVersionName != nil {
                    map["AppVersionName"] = self.appVersionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppIcon") && dict["AppIcon"] != nil {
                    self.appIcon = dict["AppIcon"] as! String
                }
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppVersion") && dict["AppVersion"] != nil {
                    self.appVersion = dict["AppVersion"] as! String
                }
                if dict.keys.contains("AppVersionName") && dict["AppVersionName"] != nil {
                    self.appVersionName = dict["AppVersionName"] as! String
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
                        if dict.keys.contains("Amount") && dict["Amount"] != nil {
                            self.amount = dict["Amount"] as! Int32
                        }
                        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
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
                    if dict.keys.contains("RecurrenceType") && dict["RecurrenceType"] != nil {
                        self.recurrenceType = dict["RecurrenceType"] as! String
                    }
                    if dict.keys.contains("RecurrenceValues") && dict["RecurrenceValues"] != nil {
                        self.recurrenceValues = dict["RecurrenceValues"] as! [Int32]
                    }
                    if dict.keys.contains("TimerPeriods") && dict["TimerPeriods"] != nil {
                        var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods] = []
                        for v in dict["TimerPeriods"] as! [Any] {
                            var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.timerPeriods = tmp
                    }
                }
            }
            public var amount: Int32?

            public var maxScalingAmount: Int32?

            public var nodeAmount: Int32?

            public var nodeCapacity: Int32?

            public var nodeInstanceType: String?

            public var nodePoolId: String?

            public var nodeTypeName: String?

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
                if self.nodeTypeName != nil {
                    map["NodeTypeName"] = self.nodeTypeName!
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
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! Int32
                }
                if dict.keys.contains("MaxScalingAmount") && dict["MaxScalingAmount"] != nil {
                    self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
                }
                if dict.keys.contains("NodeAmount") && dict["NodeAmount"] != nil {
                    self.nodeAmount = dict["NodeAmount"] as! Int32
                }
                if dict.keys.contains("NodeCapacity") && dict["NodeCapacity"] != nil {
                    self.nodeCapacity = dict["NodeCapacity"] as! Int32
                }
                if dict.keys.contains("NodeInstanceType") && dict["NodeInstanceType"] != nil {
                    self.nodeInstanceType = dict["NodeInstanceType"] as! String
                }
                if dict.keys.contains("NodePoolId") && dict["NodePoolId"] != nil {
                    self.nodePoolId = dict["NodePoolId"] as! String
                }
                if dict.keys.contains("NodeTypeName") && dict["NodeTypeName"] != nil {
                    self.nodeTypeName = dict["NodeTypeName"] as! String
                }
                if dict.keys.contains("NodeUsed") && dict["NodeUsed"] != nil {
                    self.nodeUsed = dict["NodeUsed"] as! Int32
                }
                if dict.keys.contains("RecurrenceSchedules") && dict["RecurrenceSchedules"] != nil {
                    var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules] = []
                    for v in dict["RecurrenceSchedules"] as! [Any] {
                        var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.recurrenceSchedules = tmp
                }
                if dict.keys.contains("ScalingDownAfterIdleMinutes") && dict["ScalingDownAfterIdleMinutes"] != nil {
                    self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
                }
                if dict.keys.contains("ScalingNodeAmount") && dict["ScalingNodeAmount"] != nil {
                    self.scalingNodeAmount = dict["ScalingNodeAmount"] as! Int32
                }
                if dict.keys.contains("ScalingNodeUsed") && dict["ScalingNodeUsed"] != nil {
                    self.scalingNodeUsed = dict["ScalingNodeUsed"] as! Int32
                }
                if dict.keys.contains("ScalingStep") && dict["ScalingStep"] != nil {
                    self.scalingStep = dict["ScalingStep"] as! Int32
                }
                if dict.keys.contains("ScalingUsageThreshold") && dict["ScalingUsageThreshold"] != nil {
                    self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
                }
                if dict.keys.contains("StrategyDisableDate") && dict["StrategyDisableDate"] != nil {
                    self.strategyDisableDate = dict["StrategyDisableDate"] as! String
                }
                if dict.keys.contains("StrategyEnableDate") && dict["StrategyEnableDate"] != nil {
                    self.strategyEnableDate = dict["StrategyEnableDate"] as! String
                }
                if dict.keys.contains("StrategyType") && dict["StrategyType"] != nil {
                    self.strategyType = dict["StrategyType"] as! String
                }
                if dict.keys.contains("WarmUp") && dict["WarmUp"] != nil {
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
                if dict.keys.contains("NewOtaVersion") && dict["NewOtaVersion"] != nil {
                    self.newOtaVersion = dict["NewOtaVersion"] as! String
                }
                if dict.keys.contains("OtaVersion") && dict["OtaVersion"] != nil {
                    self.otaVersion = dict["OtaVersion"] as! String
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
            }
        }
        public var amount: Int32?

        public var appCenterImageId: String?

        public var appInstanceGroupId: String?

        public var appInstanceGroupName: String?

        public var appInstanceType: String?

        public var appPolicyId: String?

        public var apps: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps]?

        public var chargeResourceMode: String?

        public var chargeType: String?

        public var expiredTime: String?

        public var gmtCreate: String?

        public var nodePool: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool]?

        public var osType: String?

        public var otaInfo: ListAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo?

        public var productType: String?

        public var regionId: String?

        public var resourceStatus: String?

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
            if self.appPolicyId != nil {
                map["AppPolicyId"] = self.appPolicyId!
            }
            if self.apps != nil {
                var tmp : [Any] = []
                for k in self.apps! {
                    tmp.append(k.toMap())
                }
                map["Apps"] = tmp
            }
            if self.chargeResourceMode != nil {
                map["ChargeResourceMode"] = self.chargeResourceMode!
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
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
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
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! Int32
            }
            if dict.keys.contains("AppCenterImageId") && dict["AppCenterImageId"] != nil {
                self.appCenterImageId = dict["AppCenterImageId"] as! String
            }
            if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
                self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
            }
            if dict.keys.contains("AppInstanceGroupName") && dict["AppInstanceGroupName"] != nil {
                self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
            }
            if dict.keys.contains("AppInstanceType") && dict["AppInstanceType"] != nil {
                self.appInstanceType = dict["AppInstanceType"] as! String
            }
            if dict.keys.contains("AppPolicyId") && dict["AppPolicyId"] != nil {
                self.appPolicyId = dict["AppPolicyId"] as! String
            }
            if dict.keys.contains("Apps") && dict["Apps"] != nil {
                var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps] = []
                for v in dict["Apps"] as! [Any] {
                    var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apps = tmp
            }
            if dict.keys.contains("ChargeResourceMode") && dict["ChargeResourceMode"] != nil {
                self.chargeResourceMode = dict["ChargeResourceMode"] as! String
            }
            if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("NodePool") && dict["NodePool"] != nil {
                var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool] = []
                for v in dict["NodePool"] as! [Any] {
                    var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodePool = tmp
            }
            if dict.keys.contains("OsType") && dict["OsType"] != nil {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("OtaInfo") && dict["OtaInfo"] != nil {
                var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo()
                model.fromMap(dict["OtaInfo"] as! [String: Any])
                self.otaInfo = model
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceStatus") && dict["ResourceStatus"] != nil {
                self.resourceStatus = dict["ResourceStatus"] as! String
            }
            if dict.keys.contains("SessionTimeout") && dict["SessionTimeout"] != nil {
                self.sessionTimeout = dict["SessionTimeout"] as! String
            }
            if dict.keys.contains("SpecId") && dict["SpecId"] != nil {
                self.specId = dict["SpecId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("AppInstanceGroupModels") && dict["AppInstanceGroupModels"] != nil {
            var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels] = []
            for v in dict["AppInstanceGroupModels"] as! [Any] {
                var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.appInstanceGroupModels = tmp
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("OsType") && dict["OsType"] != nil {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
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
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! String
            }
            if dict.keys.contains("Gpu") && dict["Gpu"] != nil {
                self.gpu = dict["Gpu"] as! String
            }
            if dict.keys.contains("GpuMemory") && dict["GpuMemory"] != nil {
                self.gpuMemory = dict["GpuMemory"] as! Int64
            }
            if dict.keys.contains("MaxCapacity") && dict["MaxCapacity"] != nil {
                self.maxCapacity = dict["MaxCapacity"] as! Int32
            }
            if dict.keys.contains("Memory") && dict["Memory"] != nil {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("NodeInstanceType") && dict["NodeInstanceType"] != nil {
                self.nodeInstanceType = dict["NodeInstanceType"] as! String
            }
            if dict.keys.contains("NodeInstanceTypeFamily") && dict["NodeInstanceTypeFamily"] != nil {
                self.nodeInstanceTypeFamily = dict["NodeInstanceTypeFamily"] as! String
            }
            if dict.keys.contains("NodeTypeName") && dict["NodeTypeName"] != nil {
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
        if dict.keys.contains("NodeInstanceTypeModels") && dict["NodeInstanceTypeModels"] != nil {
            var tmp : [ListNodeInstanceTypeResponseBody.NodeInstanceTypeModels] = []
            for v in dict["NodeInstanceTypeModels"] as! [Any] {
                var model = ListNodeInstanceTypeResponseBody.NodeInstanceTypeModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodeInstanceTypeModels = tmp
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("OtaType") && dict["OtaType"] != nil {
            self.otaType = dict["OtaType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
            if dict.keys.contains("OtaVersion") && dict["OtaVersion"] != nil {
                self.otaVersion = dict["OtaVersion"] as! String
            }
            if dict.keys.contains("TaskDisplayStatus") && dict["TaskDisplayStatus"] != nil {
                self.taskDisplayStatus = dict["TaskDisplayStatus"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskStartTime") && dict["TaskStartTime"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskList") && dict["TaskList"] != nil {
            var tmp : [ListOtaTaskResponseBody.TaskList] = []
            for v in dict["TaskList"] as! [Any] {
                var model = ListOtaTaskResponseBody.TaskList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskList = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
            if dict.keys.contains("regionId") && dict["regionId"] != nil {
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
        if dict.keys.contains("RegionModels") && dict["RegionModels"] != nil {
            var tmp : [ListRegionsResponseBody.RegionModels] = []
            for v in dict["RegionModels"] as! [Any] {
                var model = ListRegionsResponseBody.RegionModels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regionModels = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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

public class ListTenantConfigResponseBody : Tea.TeaModel {
    public class TenantConfigModel : Tea.TeaModel {
        public var appInstanceGroupExpireRemind: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appInstanceGroupExpireRemind != nil {
                map["AppInstanceGroupExpireRemind"] = self.appInstanceGroupExpireRemind!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppInstanceGroupExpireRemind") && dict["AppInstanceGroupExpireRemind"] != nil {
                self.appInstanceGroupExpireRemind = dict["AppInstanceGroupExpireRemind"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var tenantConfigModel: ListTenantConfigResponseBody.TenantConfigModel?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantConfigModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantConfigModel != nil {
            map["TenantConfigModel"] = self.tenantConfigModel?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantConfigModel") && dict["TenantConfigModel"] != nil {
            var model = ListTenantConfigResponseBody.TenantConfigModel()
            model.fromMap(dict["TenantConfigModel"] as! [String: Any])
            self.tenantConfigModel = model
        }
    }
}

public class ListTenantConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTenantConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTenantConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LogOffAllSessionsInAppInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
    }
}

public class LogOffAllSessionsInAppInstanceGroupResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LogOffAllSessionsInAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LogOffAllSessionsInAppInstanceGroupResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = LogOffAllSessionsInAppInstanceGroupResponseBody()
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
            if dict.keys.contains("NodeCapacity") && dict["NodeCapacity"] != nil {
                self.nodeCapacity = dict["NodeCapacity"] as! Int32
            }
            if dict.keys.contains("NodePoolId") && dict["NodePoolId"] != nil {
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
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") && dict["AppInstanceGroupName"] != nil {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("NodePool") && dict["NodePool"] != nil {
            var model = ModifyAppInstanceGroupAttributeRequest.NodePool()
            model.fromMap(dict["NodePool"] as! [String: Any])
            self.nodePool = model
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SessionTimeout") && dict["SessionTimeout"] != nil {
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
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupName") && dict["AppInstanceGroupName"] != nil {
            self.appInstanceGroupName = dict["AppInstanceGroupName"] as! String
        }
        if dict.keys.contains("NodePool") && dict["NodePool"] != nil {
            self.nodePoolShrink = dict["NodePool"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("SessionTimeout") && dict["SessionTimeout"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
            if dict.keys.contains("MaxScalingAmount") && dict["MaxScalingAmount"] != nil {
                self.maxScalingAmount = dict["MaxScalingAmount"] as! Int32
            }
            if dict.keys.contains("ScalingDownAfterIdleMinutes") && dict["ScalingDownAfterIdleMinutes"] != nil {
                self.scalingDownAfterIdleMinutes = dict["ScalingDownAfterIdleMinutes"] as! Int32
            }
            if dict.keys.contains("ScalingStep") && dict["ScalingStep"] != nil {
                self.scalingStep = dict["ScalingStep"] as! Int32
            }
            if dict.keys.contains("ScalingUsageThreshold") && dict["ScalingUsageThreshold"] != nil {
                self.scalingUsageThreshold = dict["ScalingUsageThreshold"] as! String
            }
            if dict.keys.contains("StrategyType") && dict["StrategyType"] != nil {
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
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("NodeCapacity") && dict["NodeCapacity"] != nil {
            self.nodeCapacity = dict["NodeCapacity"] as! Int32
        }
        if dict.keys.contains("NodePoolStrategy") && dict["NodePoolStrategy"] != nil {
            var model = ModifyNodePoolAttributeRequest.NodePoolStrategy()
            model.fromMap(dict["NodePoolStrategy"] as! [String: Any])
            self.nodePoolStrategy = model
        }
        if dict.keys.contains("PoolId") && dict["PoolId"] != nil {
            self.poolId = dict["PoolId"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
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
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("NodeCapacity") && dict["NodeCapacity"] != nil {
            self.nodeCapacity = dict["NodeCapacity"] as! Int32
        }
        if dict.keys.contains("NodePoolStrategy") && dict["NodePoolStrategy"] != nil {
            self.nodePoolStrategyShrink = dict["NodePoolStrategy"] as! String
        }
        if dict.keys.contains("PoolId") && dict["PoolId"] != nil {
            self.poolId = dict["PoolId"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyNodePoolAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTenantConfigRequest : Tea.TeaModel {
    public var appInstanceGroupExpireRemind: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceGroupExpireRemind != nil {
            map["AppInstanceGroupExpireRemind"] = self.appInstanceGroupExpireRemind!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupExpireRemind") && dict["AppInstanceGroupExpireRemind"] != nil {
            self.appInstanceGroupExpireRemind = dict["AppInstanceGroupExpireRemind"] as! Bool
        }
    }
}

public class ModifyTenantConfigResponseBody : Tea.TeaModel {
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

public class ModifyTenantConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTenantConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyTenantConfigResponseBody()
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
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PageListAppInstanceGroupUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewAppInstanceGroupRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var autoPay: Bool?

    public var period: Int32?

    public var periodUnit: String?

    public var productType: String?

    public var promotionId: String?

    public override init() {
        super.init()
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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("AutoPay") && dict["AutoPay"] != nil {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("PromotionId") && dict["PromotionId"] != nil {
            self.promotionId = dict["PromotionId"] as! String
        }
    }
}

public class RenewAppInstanceGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
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
    }
}

public class RenewAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewAppInstanceGroupResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RenewAppInstanceGroupResponseBody()
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
        if dict.keys.contains("AppCenterImageId") && dict["AppCenterImageId"] != nil {
            self.appCenterImageId = dict["AppCenterImageId"] as! String
        }
        if dict.keys.contains("AppInstanceGroupId") && dict["AppInstanceGroupId"] != nil {
            self.appInstanceGroupId = dict["AppInstanceGroupId"] as! String
        }
        if dict.keys.contains("BizRegionId") && dict["BizRegionId"] != nil {
            self.bizRegionId = dict["BizRegionId"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateAppInstanceGroupImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
