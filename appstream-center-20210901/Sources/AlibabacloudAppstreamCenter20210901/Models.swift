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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["OtaType"] as? String {
            self.otaType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ApproveOtaTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AuthorizeInstanceGroupRequest : Tea.TeaModel {
    public class UserMeta : Tea.TeaModel {
        public var adDomain: String?

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
            if self.adDomain != nil {
                map["AdDomain"] = self.adDomain!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdDomain"] as? String {
                self.adDomain = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var appInstanceGroupId: String?

    public var appInstancePersistentId: String?

    public var authorizeUserGroupIds: [String]?

    public var authorizeUserIds: [String]?

    public var avatarId: String?

    public var productType: String?

    public var unAuthorizeUserGroupIds: [String]?

    public var unAuthorizeUserIds: [String]?

    public var userMeta: AuthorizeInstanceGroupRequest.UserMeta?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstancePersistentId != nil {
            map["AppInstancePersistentId"] = self.appInstancePersistentId!
        }
        if self.authorizeUserGroupIds != nil {
            map["AuthorizeUserGroupIds"] = self.authorizeUserGroupIds!
        }
        if self.authorizeUserIds != nil {
            map["AuthorizeUserIds"] = self.authorizeUserIds!
        }
        if self.avatarId != nil {
            map["AvatarId"] = self.avatarId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.unAuthorizeUserGroupIds != nil {
            map["UnAuthorizeUserGroupIds"] = self.unAuthorizeUserGroupIds!
        }
        if self.unAuthorizeUserIds != nil {
            map["UnAuthorizeUserIds"] = self.unAuthorizeUserIds!
        }
        if self.userMeta != nil {
            map["UserMeta"] = self.userMeta?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstancePersistentId"] as? String {
            self.appInstancePersistentId = value
        }
        if let value = dict["AuthorizeUserGroupIds"] as? [String] {
            self.authorizeUserGroupIds = value
        }
        if let value = dict["AuthorizeUserIds"] as? [String] {
            self.authorizeUserIds = value
        }
        if let value = dict["AvatarId"] as? String {
            self.avatarId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["UnAuthorizeUserGroupIds"] as? [String] {
            self.unAuthorizeUserGroupIds = value
        }
        if let value = dict["UnAuthorizeUserIds"] as? [String] {
            self.unAuthorizeUserIds = value
        }
        if let value = dict["UserMeta"] as? [String: Any?] {
            var model = AuthorizeInstanceGroupRequest.UserMeta()
            model.fromMap(value)
            self.userMeta = model
        }
    }
}

public class AuthorizeInstanceGroupShrinkRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstancePersistentId: String?

    public var authorizeUserGroupIds: [String]?

    public var authorizeUserIds: [String]?

    public var avatarId: String?

    public var productType: String?

    public var unAuthorizeUserGroupIds: [String]?

    public var unAuthorizeUserIds: [String]?

    public var userMetaShrink: String?

    public override init() {
        super.init()
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
        if self.appInstancePersistentId != nil {
            map["AppInstancePersistentId"] = self.appInstancePersistentId!
        }
        if self.authorizeUserGroupIds != nil {
            map["AuthorizeUserGroupIds"] = self.authorizeUserGroupIds!
        }
        if self.authorizeUserIds != nil {
            map["AuthorizeUserIds"] = self.authorizeUserIds!
        }
        if self.avatarId != nil {
            map["AvatarId"] = self.avatarId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.unAuthorizeUserGroupIds != nil {
            map["UnAuthorizeUserGroupIds"] = self.unAuthorizeUserGroupIds!
        }
        if self.unAuthorizeUserIds != nil {
            map["UnAuthorizeUserIds"] = self.unAuthorizeUserIds!
        }
        if self.userMetaShrink != nil {
            map["UserMeta"] = self.userMetaShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstancePersistentId"] as? String {
            self.appInstancePersistentId = value
        }
        if let value = dict["AuthorizeUserGroupIds"] as? [String] {
            self.authorizeUserGroupIds = value
        }
        if let value = dict["AuthorizeUserIds"] as? [String] {
            self.authorizeUserIds = value
        }
        if let value = dict["AvatarId"] as? String {
            self.avatarId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["UnAuthorizeUserGroupIds"] as? [String] {
            self.unAuthorizeUserGroupIds = value
        }
        if let value = dict["UnAuthorizeUserIds"] as? [String] {
            self.unAuthorizeUserIds = value
        }
        if let value = dict["UserMeta"] as? String {
            self.userMetaShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AuthorizeInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppInstanceGroupRequest : Tea.TeaModel {
    public class Network : Tea.TeaModel {
        public class DomainRules : Tea.TeaModel {
            public var domain: String?

            public var policy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["Policy"] as? String {
                    self.policy = value
                }
            }
        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Destination"] as? String {
                    self.destination = value
                }
                if let value = dict["Mode"] as? String {
                    self.mode = value
                }
            }
        }
        public var domainRules: [CreateAppInstanceGroupRequest.Network.DomainRules]?

        public var ipExpireMinutes: Int32?

        public var officeSiteId: String?

        public var routes: [CreateAppInstanceGroupRequest.Network.Routes]?

        public var strategyType: String?

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
            if self.domainRules != nil {
                var tmp : [Any] = []
                for k in self.domainRules! {
                    tmp.append(k.toMap())
                }
                map["DomainRules"] = tmp
            }
            if self.ipExpireMinutes != nil {
                map["IpExpireMinutes"] = self.ipExpireMinutes!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
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
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainRules"] as? [Any?] {
                var tmp : [CreateAppInstanceGroupRequest.Network.DomainRules] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppInstanceGroupRequest.Network.DomainRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domainRules = tmp
            }
            if let value = dict["IpExpireMinutes"] as? Int32 {
                self.ipExpireMinutes = value
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["Routes"] as? [Any?] {
                var tmp : [CreateAppInstanceGroupRequest.Network.Routes] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppInstanceGroupRequest.Network.Routes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.routes = tmp
            }
            if let value = dict["StrategyType"] as? String {
                self.strategyType = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Amount"] as? Int32 {
                        self.amount = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RecurrenceType"] as? String {
                    self.recurrenceType = value
                }
                if let value = dict["RecurrenceValues"] as? [Int32] {
                    self.recurrenceValues = value
                }
                if let value = dict["TimerPeriods"] as? [Any?] {
                    var tmp : [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules.TimerPeriods] = []
                    for v in value {
                        if v != nil {
                            var model = CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules.TimerPeriods()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.timerPeriods = tmp
                }
            }
        }
        public var maxIdleAppInstanceAmount: Int32?

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
            if self.maxIdleAppInstanceAmount != nil {
                map["MaxIdleAppInstanceAmount"] = self.maxIdleAppInstanceAmount!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxIdleAppInstanceAmount"] as? Int32 {
                self.maxIdleAppInstanceAmount = value
            }
            if let value = dict["MaxScalingAmount"] as? Int32 {
                self.maxScalingAmount = value
            }
            if let value = dict["NodeAmount"] as? Int32 {
                self.nodeAmount = value
            }
            if let value = dict["NodeCapacity"] as? Int32 {
                self.nodeCapacity = value
            }
            if let value = dict["NodeInstanceType"] as? String {
                self.nodeInstanceType = value
            }
            if let value = dict["RecurrenceSchedules"] as? [Any?] {
                var tmp : [CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules] = []
                for v in value {
                    if v != nil {
                        var model = CreateAppInstanceGroupRequest.NodePool.RecurrenceSchedules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.recurrenceSchedules = tmp
            }
            if let value = dict["ScalingDownAfterIdleMinutes"] as? Int32 {
                self.scalingDownAfterIdleMinutes = value
            }
            if let value = dict["ScalingStep"] as? Int32 {
                self.scalingStep = value
            }
            if let value = dict["ScalingUsageThreshold"] as? String {
                self.scalingUsageThreshold = value
            }
            if let value = dict["StrategyDisableDate"] as? String {
                self.strategyDisableDate = value
            }
            if let value = dict["StrategyEnableDate"] as? String {
                self.strategyEnableDate = value
            }
            if let value = dict["StrategyType"] as? String {
                self.strategyType = value
            }
            if let value = dict["WarmUp"] as? Bool {
                self.warmUp = value
            }
        }
    }
    public class RuntimePolicy : Tea.TeaModel {
        public var debugMode: String?

        public var perSessionPerApp: Bool?

        public var persistentAppInstanceScheduleMode: String?

        public var sessionPreOpen: String?

        public var sessionType: String?

        public var sessionUserGenerationMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.debugMode != nil {
                map["DebugMode"] = self.debugMode!
            }
            if self.perSessionPerApp != nil {
                map["PerSessionPerApp"] = self.perSessionPerApp!
            }
            if self.persistentAppInstanceScheduleMode != nil {
                map["PersistentAppInstanceScheduleMode"] = self.persistentAppInstanceScheduleMode!
            }
            if self.sessionPreOpen != nil {
                map["SessionPreOpen"] = self.sessionPreOpen!
            }
            if self.sessionType != nil {
                map["SessionType"] = self.sessionType!
            }
            if self.sessionUserGenerationMode != nil {
                map["SessionUserGenerationMode"] = self.sessionUserGenerationMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DebugMode"] as? String {
                self.debugMode = value
            }
            if let value = dict["PerSessionPerApp"] as? Bool {
                self.perSessionPerApp = value
            }
            if let value = dict["PersistentAppInstanceScheduleMode"] as? String {
                self.persistentAppInstanceScheduleMode = value
            }
            if let value = dict["SessionPreOpen"] as? String {
                self.sessionPreOpen = value
            }
            if let value = dict["SessionType"] as? String {
                self.sessionType = value
            }
            if let value = dict["SessionUserGenerationMode"] as? String {
                self.sessionUserGenerationMode = value
            }
        }
    }
    public class SecurityPolicy : Tea.TeaModel {
        public var resetAfterUnbind: Bool?

        public var skipUserAuthCheck: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resetAfterUnbind != nil {
                map["ResetAfterUnbind"] = self.resetAfterUnbind!
            }
            if self.skipUserAuthCheck != nil {
                map["SkipUserAuthCheck"] = self.skipUserAuthCheck!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResetAfterUnbind"] as? Bool {
                self.resetAfterUnbind = value
            }
            if let value = dict["SkipUserAuthCheck"] as? Bool {
                self.skipUserAuthCheck = value
            }
        }
    }
    public class StoragePolicy : Tea.TeaModel {
        public class UserProfile : Tea.TeaModel {
            public var remoteStoragePath: String?

            public var remoteStorageType: String?

            public var userProfileSwitch: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.remoteStoragePath != nil {
                    map["RemoteStoragePath"] = self.remoteStoragePath!
                }
                if self.remoteStorageType != nil {
                    map["RemoteStorageType"] = self.remoteStorageType!
                }
                if self.userProfileSwitch != nil {
                    map["UserProfileSwitch"] = self.userProfileSwitch!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RemoteStoragePath"] as? String {
                    self.remoteStoragePath = value
                }
                if let value = dict["RemoteStorageType"] as? String {
                    self.remoteStorageType = value
                }
                if let value = dict["UserProfileSwitch"] as? Bool {
                    self.userProfileSwitch = value
                }
            }
        }
        public var storageTypeList: [String]?

        public var userProfile: CreateAppInstanceGroupRequest.StoragePolicy.UserProfile?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.userProfile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.storageTypeList != nil {
                map["StorageTypeList"] = self.storageTypeList!
            }
            if self.userProfile != nil {
                map["UserProfile"] = self.userProfile?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["StorageTypeList"] as? [String] {
                self.storageTypeList = value
            }
            if let value = dict["UserProfile"] as? [String: Any?] {
                var model = CreateAppInstanceGroupRequest.StoragePolicy.UserProfile()
                model.fromMap(value)
                self.userProfile = model
            }
        }
    }
    public class UserDefinePolicy : Tea.TeaModel {
        public var customConfig: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customConfig != nil {
                map["CustomConfig"] = self.customConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomConfig"] as? String {
                self.customConfig = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class VideoPolicy : Tea.TeaModel {
        public var frameRate: Int32?

        public var sessionResolutionHeight: Int32?

        public var sessionResolutionWidth: Int32?

        public var streamingMode: String?

        public var terminalResolutionAdaptive: Bool?

        public var webrtc: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.frameRate != nil {
                map["FrameRate"] = self.frameRate!
            }
            if self.sessionResolutionHeight != nil {
                map["SessionResolutionHeight"] = self.sessionResolutionHeight!
            }
            if self.sessionResolutionWidth != nil {
                map["SessionResolutionWidth"] = self.sessionResolutionWidth!
            }
            if self.streamingMode != nil {
                map["StreamingMode"] = self.streamingMode!
            }
            if self.terminalResolutionAdaptive != nil {
                map["TerminalResolutionAdaptive"] = self.terminalResolutionAdaptive!
            }
            if self.webrtc != nil {
                map["Webrtc"] = self.webrtc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FrameRate"] as? Int32 {
                self.frameRate = value
            }
            if let value = dict["SessionResolutionHeight"] as? Int32 {
                self.sessionResolutionHeight = value
            }
            if let value = dict["SessionResolutionWidth"] as? Int32 {
                self.sessionResolutionWidth = value
            }
            if let value = dict["StreamingMode"] as? String {
                self.streamingMode = value
            }
            if let value = dict["TerminalResolutionAdaptive"] as? Bool {
                self.terminalResolutionAdaptive = value
            }
            if let value = dict["Webrtc"] as? Bool {
                self.webrtc = value
            }
        }
    }
    public var appCenterImageId: String?

    public var appInstanceGroupName: String?

    public var appPackageType: String?

    public var appPolicyId: String?

    public var authMode: String?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeResourceMode: String?

    public var chargeType: String?

    public var clusterId: String?

    public var network: CreateAppInstanceGroupRequest.Network?

    public var nodePool: CreateAppInstanceGroupRequest.NodePool?

    public var period: Int32?

    public var periodUnit: String?

    public var preOpenAppId: String?

    public var productType: String?

    public var promotionId: String?

    public var runtimePolicy: CreateAppInstanceGroupRequest.RuntimePolicy?

    public var securityPolicy: CreateAppInstanceGroupRequest.SecurityPolicy?

    public var sessionTimeout: Int32?

    public var storagePolicy: CreateAppInstanceGroupRequest.StoragePolicy?

    public var subPayType: String?

    public var userDefinePolicy: CreateAppInstanceGroupRequest.UserDefinePolicy?

    public var userGroupIds: [String]?

    public var userInfo: CreateAppInstanceGroupRequest.UserInfo?

    public var users: [String]?

    public var videoPolicy: CreateAppInstanceGroupRequest.VideoPolicy?

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
        try self.runtimePolicy?.validate()
        try self.securityPolicy?.validate()
        try self.storagePolicy?.validate()
        try self.userDefinePolicy?.validate()
        try self.userInfo?.validate()
        try self.videoPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCenterImageId != nil {
            map["AppCenterImageId"] = self.appCenterImageId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.appPackageType != nil {
            map["AppPackageType"] = self.appPackageType!
        }
        if self.appPolicyId != nil {
            map["AppPolicyId"] = self.appPolicyId!
        }
        if self.authMode != nil {
            map["AuthMode"] = self.authMode!
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if self.runtimePolicy != nil {
            map["RuntimePolicy"] = self.runtimePolicy?.toMap()
        }
        if self.securityPolicy != nil {
            map["SecurityPolicy"] = self.securityPolicy?.toMap()
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.storagePolicy != nil {
            map["StoragePolicy"] = self.storagePolicy?.toMap()
        }
        if self.subPayType != nil {
            map["SubPayType"] = self.subPayType!
        }
        if self.userDefinePolicy != nil {
            map["UserDefinePolicy"] = self.userDefinePolicy?.toMap()
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userInfo != nil {
            map["UserInfo"] = self.userInfo?.toMap()
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        if self.videoPolicy != nil {
            map["VideoPolicy"] = self.videoPolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCenterImageId"] as? String {
            self.appCenterImageId = value
        }
        if let value = dict["AppInstanceGroupName"] as? String {
            self.appInstanceGroupName = value
        }
        if let value = dict["AppPackageType"] as? String {
            self.appPackageType = value
        }
        if let value = dict["AppPolicyId"] as? String {
            self.appPolicyId = value
        }
        if let value = dict["AuthMode"] as? String {
            self.authMode = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeResourceMode"] as? String {
            self.chargeResourceMode = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Network"] as? [String: Any?] {
            var model = CreateAppInstanceGroupRequest.Network()
            model.fromMap(value)
            self.network = model
        }
        if let value = dict["NodePool"] as? [String: Any?] {
            var model = CreateAppInstanceGroupRequest.NodePool()
            model.fromMap(value)
            self.nodePool = model
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PreOpenAppId"] as? String {
            self.preOpenAppId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["PromotionId"] as? String {
            self.promotionId = value
        }
        if let value = dict["RuntimePolicy"] as? [String: Any?] {
            var model = CreateAppInstanceGroupRequest.RuntimePolicy()
            model.fromMap(value)
            self.runtimePolicy = model
        }
        if let value = dict["SecurityPolicy"] as? [String: Any?] {
            var model = CreateAppInstanceGroupRequest.SecurityPolicy()
            model.fromMap(value)
            self.securityPolicy = model
        }
        if let value = dict["SessionTimeout"] as? Int32 {
            self.sessionTimeout = value
        }
        if let value = dict["StoragePolicy"] as? [String: Any?] {
            var model = CreateAppInstanceGroupRequest.StoragePolicy()
            model.fromMap(value)
            self.storagePolicy = model
        }
        if let value = dict["SubPayType"] as? String {
            self.subPayType = value
        }
        if let value = dict["UserDefinePolicy"] as? [String: Any?] {
            var model = CreateAppInstanceGroupRequest.UserDefinePolicy()
            model.fromMap(value)
            self.userDefinePolicy = model
        }
        if let value = dict["UserGroupIds"] as? [String] {
            self.userGroupIds = value
        }
        if let value = dict["UserInfo"] as? [String: Any?] {
            var model = CreateAppInstanceGroupRequest.UserInfo()
            model.fromMap(value)
            self.userInfo = model
        }
        if let value = dict["Users"] as? [String] {
            self.users = value
        }
        if let value = dict["VideoPolicy"] as? [String: Any?] {
            var model = CreateAppInstanceGroupRequest.VideoPolicy()
            model.fromMap(value)
            self.videoPolicy = model
        }
    }
}

public class CreateAppInstanceGroupShrinkRequest : Tea.TeaModel {
    public var appCenterImageId: String?

    public var appInstanceGroupName: String?

    public var appPackageType: String?

    public var appPolicyId: String?

    public var authMode: String?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bizRegionId: String?

    public var chargeResourceMode: String?

    public var chargeType: String?

    public var clusterId: String?

    public var networkShrink: String?

    public var nodePoolShrink: String?

    public var period: Int32?

    public var periodUnit: String?

    public var preOpenAppId: String?

    public var productType: String?

    public var promotionId: String?

    public var runtimePolicyShrink: String?

    public var securityPolicyShrink: String?

    public var sessionTimeout: Int32?

    public var storagePolicyShrink: String?

    public var subPayType: String?

    public var userDefinePolicyShrink: String?

    public var userGroupIds: [String]?

    public var userInfoShrink: String?

    public var users: [String]?

    public var videoPolicyShrink: String?

    public override init() {
        super.init()
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
        if self.appPackageType != nil {
            map["AppPackageType"] = self.appPackageType!
        }
        if self.appPolicyId != nil {
            map["AppPolicyId"] = self.appPolicyId!
        }
        if self.authMode != nil {
            map["AuthMode"] = self.authMode!
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if self.runtimePolicyShrink != nil {
            map["RuntimePolicy"] = self.runtimePolicyShrink!
        }
        if self.securityPolicyShrink != nil {
            map["SecurityPolicy"] = self.securityPolicyShrink!
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.storagePolicyShrink != nil {
            map["StoragePolicy"] = self.storagePolicyShrink!
        }
        if self.subPayType != nil {
            map["SubPayType"] = self.subPayType!
        }
        if self.userDefinePolicyShrink != nil {
            map["UserDefinePolicy"] = self.userDefinePolicyShrink!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userInfoShrink != nil {
            map["UserInfo"] = self.userInfoShrink!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        if self.videoPolicyShrink != nil {
            map["VideoPolicy"] = self.videoPolicyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCenterImageId"] as? String {
            self.appCenterImageId = value
        }
        if let value = dict["AppInstanceGroupName"] as? String {
            self.appInstanceGroupName = value
        }
        if let value = dict["AppPackageType"] as? String {
            self.appPackageType = value
        }
        if let value = dict["AppPolicyId"] as? String {
            self.appPolicyId = value
        }
        if let value = dict["AuthMode"] as? String {
            self.authMode = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeResourceMode"] as? String {
            self.chargeResourceMode = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Network"] as? String {
            self.networkShrink = value
        }
        if let value = dict["NodePool"] as? String {
            self.nodePoolShrink = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PreOpenAppId"] as? String {
            self.preOpenAppId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["PromotionId"] as? String {
            self.promotionId = value
        }
        if let value = dict["RuntimePolicy"] as? String {
            self.runtimePolicyShrink = value
        }
        if let value = dict["SecurityPolicy"] as? String {
            self.securityPolicyShrink = value
        }
        if let value = dict["SessionTimeout"] as? Int32 {
            self.sessionTimeout = value
        }
        if let value = dict["StoragePolicy"] as? String {
            self.storagePolicyShrink = value
        }
        if let value = dict["SubPayType"] as? String {
            self.subPayType = value
        }
        if let value = dict["UserDefinePolicy"] as? String {
            self.userDefinePolicyShrink = value
        }
        if let value = dict["UserGroupIds"] as? [String] {
            self.userGroupIds = value
        }
        if let value = dict["UserInfo"] as? String {
            self.userInfoShrink = value
        }
        if let value = dict["Users"] as? [String] {
            self.users = value
        }
        if let value = dict["VideoPolicy"] as? String {
            self.videoPolicyShrink = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["NodePoolId"] as? String {
                self.nodePoolId = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupModel"] as? [String: Any?] {
            var model = CreateAppInstanceGroupResponseBody.AppInstanceGroupModel()
            model.fromMap(value)
            self.appInstanceGroupModel = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAppInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateImageByInstanceRequest : Tea.TeaModel {
    public var autoCleanUserdata: Bool?

    public var bizType: Int32?

    public var description_: String?

    public var diskType: String?

    public var imageName: String?

    public var instanceId: String?

    public var instanceType: String?

    public var productType: String?

    public var subInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCleanUserdata != nil {
            map["AutoCleanUserdata"] = self.autoCleanUserdata!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.subInstanceId != nil {
            map["SubInstanceId"] = self.subInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCleanUserdata"] as? Bool {
            self.autoCleanUserdata = value
        }
        if let value = dict["BizType"] as? Int32 {
            self.bizType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["SubInstanceId"] as? String {
            self.subInstanceId = value
        }
    }
}

public class CreateImageByInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageId: String?

        public var taskId: String?

        public var versionId: String?

        public override init() {
            super.init()
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["VersionId"] as? String {
                self.versionId = value
            }
        }
    }
    public var code: String?

    public var data: CreateImageByInstanceResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateImageByInstanceResponseBody.Data()
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

public class CreateImageByInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageByInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateImageByInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateImageFromAppInstanceGroupRequest : Tea.TeaModel {
    public var appCenterImageName: String?

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
        if self.appCenterImageName != nil {
            map["AppCenterImageName"] = self.appCenterImageName!
        }
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCenterImageName"] as? String {
            self.appCenterImageName = value
        }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class CreateImageFromAppInstanceGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateImageFromAppInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageFromAppInstanceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateImageFromAppInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWuyingServerRequest : Tea.TeaModel {
    public class DataDisk : Tea.TeaModel {
        public var dataDiskCategory: String?

        public var dataDiskPerformanceLevel: String?

        public var dataDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataDiskCategory != nil {
                map["DataDiskCategory"] = self.dataDiskCategory!
            }
            if self.dataDiskPerformanceLevel != nil {
                map["DataDiskPerformanceLevel"] = self.dataDiskPerformanceLevel!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataDiskCategory"] as? String {
                self.dataDiskCategory = value
            }
            if let value = dict["DataDiskPerformanceLevel"] as? String {
                self.dataDiskPerformanceLevel = value
            }
            if let value = dict["DataDiskSize"] as? Int32 {
                self.dataDiskSize = value
            }
        }
    }
    public var amount: Int32?

    public var autoPay: Bool?

    public var autoRenew: Bool?

    public var bandwidth: Int32?

    public var bizRegionId: String?

    public var chargeType: String?

    public var dataDisk: [CreateWuyingServerRequest.DataDisk]?

    public var hostName: String?

    public var idempotenceToken: String?

    public var imageId: String?

    public var maxPrice: Double?

    public var networkStrategyType: String?

    public var officeSiteId: String?

    public var password: String?

    public var period: Int32?

    public var periodUnit: String?

    public var promotionId: String?

    public var savingPlanId: String?

    public var serverInstanceType: String?

    public var serverPortRange: String?

    public var subPayType: String?

    public var systemDiskCategory: String?

    public var systemDiskPerformanceLevel: String?

    public var systemDiskSize: Int32?

    public var vSwitchIds: [String]?

    public var virtualNodePoolId: String?

    public var wuyingServerName: String?

    public override init() {
        super.init()
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
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.dataDisk != nil {
            var tmp : [Any] = []
            for k in self.dataDisk! {
                tmp.append(k.toMap())
            }
            map["DataDisk"] = tmp
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.idempotenceToken != nil {
            map["IdempotenceToken"] = self.idempotenceToken!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.maxPrice != nil {
            map["MaxPrice"] = self.maxPrice!
        }
        if self.networkStrategyType != nil {
            map["NetworkStrategyType"] = self.networkStrategyType!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.savingPlanId != nil {
            map["SavingPlanId"] = self.savingPlanId!
        }
        if self.serverInstanceType != nil {
            map["ServerInstanceType"] = self.serverInstanceType!
        }
        if self.serverPortRange != nil {
            map["ServerPortRange"] = self.serverPortRange!
        }
        if self.subPayType != nil {
            map["SubPayType"] = self.subPayType!
        }
        if self.systemDiskCategory != nil {
            map["SystemDiskCategory"] = self.systemDiskCategory!
        }
        if self.systemDiskPerformanceLevel != nil {
            map["SystemDiskPerformanceLevel"] = self.systemDiskPerformanceLevel!
        }
        if self.systemDiskSize != nil {
            map["SystemDiskSize"] = self.systemDiskSize!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.virtualNodePoolId != nil {
            map["VirtualNodePoolId"] = self.virtualNodePoolId!
        }
        if self.wuyingServerName != nil {
            map["WuyingServerName"] = self.wuyingServerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amount"] as? Int32 {
            self.amount = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["DataDisk"] as? [Any?] {
            var tmp : [CreateWuyingServerRequest.DataDisk] = []
            for v in value {
                if v != nil {
                    var model = CreateWuyingServerRequest.DataDisk()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataDisk = tmp
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["IdempotenceToken"] as? String {
            self.idempotenceToken = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["MaxPrice"] as? Double {
            self.maxPrice = value
        }
        if let value = dict["NetworkStrategyType"] as? String {
            self.networkStrategyType = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PromotionId"] as? String {
            self.promotionId = value
        }
        if let value = dict["SavingPlanId"] as? String {
            self.savingPlanId = value
        }
        if let value = dict["ServerInstanceType"] as? String {
            self.serverInstanceType = value
        }
        if let value = dict["ServerPortRange"] as? String {
            self.serverPortRange = value
        }
        if let value = dict["SubPayType"] as? String {
            self.subPayType = value
        }
        if let value = dict["SystemDiskCategory"] as? String {
            self.systemDiskCategory = value
        }
        if let value = dict["SystemDiskPerformanceLevel"] as? String {
            self.systemDiskPerformanceLevel = value
        }
        if let value = dict["SystemDiskSize"] as? Int32 {
            self.systemDiskSize = value
        }
        if let value = dict["VSwitchIds"] as? [String] {
            self.vSwitchIds = value
        }
        if let value = dict["VirtualNodePoolId"] as? String {
            self.virtualNodePoolId = value
        }
        if let value = dict["WuyingServerName"] as? String {
            self.wuyingServerName = value
        }
    }
}

public class CreateWuyingServerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: String?

        public var wuyingServerIdList: [String]?

        public override init() {
            super.init()
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
            if self.wuyingServerIdList != nil {
                map["WuyingServerIdList"] = self.wuyingServerIdList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["WuyingServerIdList"] as? [String] {
                self.wuyingServerIdList = value
            }
        }
    }
    public var data: CreateWuyingServerResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateWuyingServerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateWuyingServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWuyingServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWuyingServerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAppInstanceGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstanceIds"] as? [String] {
            self.appInstanceIds = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstanceId"] as? String {
                self.appInstanceId = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteAppInstanceModels"] as? [Any?] {
            var tmp : [DeleteAppInstancesResponseBody.DeleteAppInstanceModels] = []
            for v in value {
                if v != nil {
                    var model = DeleteAppInstancesResponseBody.DeleteAppInstanceModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deleteAppInstanceModels = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAppInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteImageRequest : Tea.TeaModel {
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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
    }
}

public class DeleteImageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
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

public class DeleteImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWuyingServerRequest : Tea.TeaModel {
    public var wuyingServerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.wuyingServerId != nil {
            map["WuyingServerId"] = self.wuyingServerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WuyingServerId"] as? String {
            self.wuyingServerId = value
        }
    }
}

public class DeleteWuyingServerResponseBody : Tea.TeaModel {
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

public class DeleteWuyingServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWuyingServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWuyingServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWuyingServerEipInfoRequest : Tea.TeaModel {
    public var isp: String?

    public var wuyingServerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isp != nil {
            map["Isp"] = self.isp!
        }
        if self.wuyingServerId != nil {
            map["WuyingServerId"] = self.wuyingServerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Isp"] as? String {
            self.isp = value
        }
        if let value = dict["WuyingServerId"] as? String {
            self.wuyingServerId = value
        }
    }
}

public class DescribeWuyingServerEipInfoResponseBody : Tea.TeaModel {
    public class EipInfoModel : Tea.TeaModel {
        public var eipId: String?

        public var ipAddress: String?

        public var networkInterfaceId: String?

        public var serverPortRange: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eipId != nil {
                map["EipId"] = self.eipId!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.serverPortRange != nil {
                map["ServerPortRange"] = self.serverPortRange!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EipId"] as? String {
                self.eipId = value
            }
            if let value = dict["IpAddress"] as? String {
                self.ipAddress = value
            }
            if let value = dict["NetworkInterfaceId"] as? String {
                self.networkInterfaceId = value
            }
            if let value = dict["ServerPortRange"] as? String {
                self.serverPortRange = value
            }
        }
    }
    public var eipInfoModel: DescribeWuyingServerEipInfoResponseBody.EipInfoModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.eipInfoModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eipInfoModel != nil {
            map["EipInfoModel"] = self.eipInfoModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EipInfoModel"] as? [String: Any?] {
            var model = DescribeWuyingServerEipInfoResponseBody.EipInfoModel()
            model.fromMap(value)
            self.eipInfoModel = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeWuyingServerEipInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWuyingServerEipInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWuyingServerEipInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class GetAppInstanceGroupResponseBody : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppIcon"] as? String {
                    self.appIcon = value
                }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["AppVersion"] as? String {
                    self.appVersion = value
                }
                if let value = dict["AppVersionName"] as? String {
                    self.appVersionName = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Amount"] as? Int32 {
                            self.amount = value
                        }
                        if let value = dict["EndTime"] as? String {
                            self.endTime = value
                        }
                        if let value = dict["StartTime"] as? String {
                            self.startTime = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RecurrenceType"] as? String {
                        self.recurrenceType = value
                    }
                    if let value = dict["RecurrenceValues"] as? [Int32] {
                        self.recurrenceValues = value
                    }
                    if let value = dict["TimerPeriods"] as? [Any?] {
                        var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods] = []
                        for v in value {
                            if v != nil {
                                var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.timerPeriods = tmp
                    }
                }
            }
            public var amount: Int32?

            public var maxIdleAppInstanceAmount: Int32?

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
                if self.maxIdleAppInstanceAmount != nil {
                    map["MaxIdleAppInstanceAmount"] = self.maxIdleAppInstanceAmount!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Int32 {
                    self.amount = value
                }
                if let value = dict["MaxIdleAppInstanceAmount"] as? Int32 {
                    self.maxIdleAppInstanceAmount = value
                }
                if let value = dict["MaxScalingAmount"] as? Int32 {
                    self.maxScalingAmount = value
                }
                if let value = dict["NodeAmount"] as? Int32 {
                    self.nodeAmount = value
                }
                if let value = dict["NodeCapacity"] as? Int32 {
                    self.nodeCapacity = value
                }
                if let value = dict["NodeInstanceType"] as? String {
                    self.nodeInstanceType = value
                }
                if let value = dict["NodePoolId"] as? String {
                    self.nodePoolId = value
                }
                if let value = dict["NodeTypeName"] as? String {
                    self.nodeTypeName = value
                }
                if let value = dict["NodeUsed"] as? Int32 {
                    self.nodeUsed = value
                }
                if let value = dict["RecurrenceSchedules"] as? [Any?] {
                    var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules] = []
                    for v in value {
                        if v != nil {
                            var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.recurrenceSchedules = tmp
                }
                if let value = dict["ScalingDownAfterIdleMinutes"] as? Int32 {
                    self.scalingDownAfterIdleMinutes = value
                }
                if let value = dict["ScalingNodeAmount"] as? Int32 {
                    self.scalingNodeAmount = value
                }
                if let value = dict["ScalingNodeUsed"] as? Int32 {
                    self.scalingNodeUsed = value
                }
                if let value = dict["ScalingStep"] as? Int32 {
                    self.scalingStep = value
                }
                if let value = dict["ScalingUsageThreshold"] as? String {
                    self.scalingUsageThreshold = value
                }
                if let value = dict["StrategyDisableDate"] as? String {
                    self.strategyDisableDate = value
                }
                if let value = dict["StrategyEnableDate"] as? String {
                    self.strategyEnableDate = value
                }
                if let value = dict["StrategyType"] as? String {
                    self.strategyType = value
                }
                if let value = dict["WarmUp"] as? Bool {
                    self.warmUp = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NewOtaVersion"] as? String {
                    self.newOtaVersion = value
                }
                if let value = dict["OtaVersion"] as? String {
                    self.otaVersion = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var scope: String?

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
                if self.scope != nil {
                    map["Scope"] = self.scope!
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
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var accessType: String?

        public var amount: Int32?

        public var appCenterImageId: String?

        public var appCenterImageName: String?

        public var appInstanceGroupId: String?

        public var appInstanceGroupName: String?

        public var appInstanceType: String?

        public var appInstanceTypeName: String?

        public var appPolicyId: String?

        public var apps: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps]?

        public var authMode: String?

        public var chargeResourceMode: String?

        public var chargeType: String?

        public var expiredTime: String?

        public var gmtCreate: String?

        public var maxAmount: Int32?

        public var minAmount: Int32?

        public var nodePool: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool]?

        public var officeSiteId: String?

        public var osType: String?

        public var otaInfo: GetAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo?

        public var productType: String?

        public var regionId: String?

        public var reserveAmountRatio: String?

        public var reserveMaxAmount: Int32?

        public var reserveMinAmount: Int32?

        public var resourceStatus: String?

        public var scalingDownAfterIdleMinutes: Int32?

        public var scalingStep: Int32?

        public var scalingUsageThreshold: String?

        public var sessionTimeout: String?

        public var sessionType: String?

        public var skipUserAuthCheck: Bool?

        public var specId: String?

        public var status: String?

        public var supportUserGroupMixedAuth: Bool?

        public var tags: [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Tags]?

        public var userGroupAuthMode: String?

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
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
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
            if self.appInstanceTypeName != nil {
                map["AppInstanceTypeName"] = self.appInstanceTypeName!
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
            if self.authMode != nil {
                map["AuthMode"] = self.authMode!
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
            if self.maxAmount != nil {
                map["MaxAmount"] = self.maxAmount!
            }
            if self.minAmount != nil {
                map["MinAmount"] = self.minAmount!
            }
            if self.nodePool != nil {
                var tmp : [Any] = []
                for k in self.nodePool! {
                    tmp.append(k.toMap())
                }
                map["NodePool"] = tmp
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
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
            if self.reserveAmountRatio != nil {
                map["ReserveAmountRatio"] = self.reserveAmountRatio!
            }
            if self.reserveMaxAmount != nil {
                map["ReserveMaxAmount"] = self.reserveMaxAmount!
            }
            if self.reserveMinAmount != nil {
                map["ReserveMinAmount"] = self.reserveMinAmount!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
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
            if self.sessionTimeout != nil {
                map["SessionTimeout"] = self.sessionTimeout!
            }
            if self.sessionType != nil {
                map["SessionType"] = self.sessionType!
            }
            if self.skipUserAuthCheck != nil {
                map["SkipUserAuthCheck"] = self.skipUserAuthCheck!
            }
            if self.specId != nil {
                map["SpecId"] = self.specId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportUserGroupMixedAuth != nil {
                map["SupportUserGroupMixedAuth"] = self.supportUserGroupMixedAuth!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.userGroupAuthMode != nil {
                map["UserGroupAuthMode"] = self.userGroupAuthMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? String {
                self.accessType = value
            }
            if let value = dict["Amount"] as? Int32 {
                self.amount = value
            }
            if let value = dict["AppCenterImageId"] as? String {
                self.appCenterImageId = value
            }
            if let value = dict["AppCenterImageName"] as? String {
                self.appCenterImageName = value
            }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["AppInstanceGroupName"] as? String {
                self.appInstanceGroupName = value
            }
            if let value = dict["AppInstanceType"] as? String {
                self.appInstanceType = value
            }
            if let value = dict["AppInstanceTypeName"] as? String {
                self.appInstanceTypeName = value
            }
            if let value = dict["AppPolicyId"] as? String {
                self.appPolicyId = value
            }
            if let value = dict["Apps"] as? [Any?] {
                var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps] = []
                for v in value {
                    if v != nil {
                        var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.apps = tmp
            }
            if let value = dict["AuthMode"] as? String {
                self.authMode = value
            }
            if let value = dict["ChargeResourceMode"] as? String {
                self.chargeResourceMode = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["MaxAmount"] as? Int32 {
                self.maxAmount = value
            }
            if let value = dict["MinAmount"] as? Int32 {
                self.minAmount = value
            }
            if let value = dict["NodePool"] as? [Any?] {
                var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool] = []
                for v in value {
                    if v != nil {
                        var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodePool = tmp
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["OtaInfo"] as? [String: Any?] {
                var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo()
                model.fromMap(value)
                self.otaInfo = model
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ReserveAmountRatio"] as? String {
                self.reserveAmountRatio = value
            }
            if let value = dict["ReserveMaxAmount"] as? Int32 {
                self.reserveMaxAmount = value
            }
            if let value = dict["ReserveMinAmount"] as? Int32 {
                self.reserveMinAmount = value
            }
            if let value = dict["ResourceStatus"] as? String {
                self.resourceStatus = value
            }
            if let value = dict["ScalingDownAfterIdleMinutes"] as? Int32 {
                self.scalingDownAfterIdleMinutes = value
            }
            if let value = dict["ScalingStep"] as? Int32 {
                self.scalingStep = value
            }
            if let value = dict["ScalingUsageThreshold"] as? String {
                self.scalingUsageThreshold = value
            }
            if let value = dict["SessionTimeout"] as? String {
                self.sessionTimeout = value
            }
            if let value = dict["SessionType"] as? String {
                self.sessionType = value
            }
            if let value = dict["SkipUserAuthCheck"] as? Bool {
                self.skipUserAuthCheck = value
            }
            if let value = dict["SpecId"] as? String {
                self.specId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupportUserGroupMixedAuth"] as? Bool {
                self.supportUserGroupMixedAuth = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UserGroupAuthMode"] as? String {
                self.userGroupAuthMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupModels"] as? [String: Any?] {
            var model = GetAppInstanceGroupResponseBody.AppInstanceGroupModels()
            model.fromMap(value)
            self.appInstanceGroupModels = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAppInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConnectionTicketRequest : Tea.TeaModel {
    public var accessType: String?

    public var appId: String?

    public var appInstanceGroupIdList: [String]?

    public var appInstanceId: String?

    public var appInstancePersistentId: String?

    public var appPolicyId: String?

    public var appStartParam: String?

    public var appVersion: String?

    public var bizRegionId: String?

    public var endUserId: String?

    public var environmentConfig: String?

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
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appInstanceGroupIdList != nil {
            map["AppInstanceGroupIdList"] = self.appInstanceGroupIdList!
        }
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appInstancePersistentId != nil {
            map["AppInstancePersistentId"] = self.appInstancePersistentId!
        }
        if self.appPolicyId != nil {
            map["AppPolicyId"] = self.appPolicyId!
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
        if self.environmentConfig != nil {
            map["EnvironmentConfig"] = self.environmentConfig!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessType"] as? String {
            self.accessType = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppInstanceGroupIdList"] as? [String] {
            self.appInstanceGroupIdList = value
        }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["AppInstancePersistentId"] as? String {
            self.appInstancePersistentId = value
        }
        if let value = dict["AppPolicyId"] as? String {
            self.appPolicyId = value
        }
        if let value = dict["AppStartParam"] as? String {
            self.appStartParam = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["EnvironmentConfig"] as? String {
            self.environmentConfig = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetConnectionTicketResponseBody : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appInstancePersistentId: String?

    public var avatarId: String?

    public var bizRegionId: String?

    public var osType: String?

    public var requestId: String?

    public var taskId: String?

    public var taskStatus: String?

    public var tenantId: Int64?

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
        if self.appInstancePersistentId != nil {
            map["AppInstancePersistentId"] = self.appInstancePersistentId!
        }
        if self.avatarId != nil {
            map["AvatarId"] = self.avatarId!
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["AppInstancePersistentId"] as? String {
            self.appInstancePersistentId = value
        }
        if let value = dict["AvatarId"] as? String {
            self.avatarId = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["TenantId"] as? Int64 {
            self.tenantId = value
        }
        if let value = dict["Ticket"] as? String {
            self.ticket = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConnectionTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDebugAppInstanceRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class GetDebugAppInstanceResponseBody : Tea.TeaModel {
    public var appId: String?

    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appVersion: String?

    public var authCode: String?

    public var requestId: String?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetDebugAppInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDebugAppInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDebugAppInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OtaVersion"] as? String {
            self.otaVersion = value
        }
        if let value = dict["ReleaseNote"] as? String {
            self.releaseNote = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskStartTime"] as? String {
            self.taskStartTime = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOtaTaskByTaskIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourcePriceRequest : Tea.TeaModel {
    public var amount: Int64?

    public var appInstanceType: String?

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
        if self.appInstanceType != nil {
            map["AppInstanceType"] = self.appInstanceType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amount"] as? Int64 {
            self.amount = value
        }
        if let value = dict["AppInstanceType"] as? String {
            self.appInstanceType = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["NodeInstanceType"] as? String {
            self.nodeInstanceType = value
        }
        if let value = dict["Period"] as? Int64 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class GetResourcePriceResponseBody : Tea.TeaModel {
    public class PriceList : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OptionCode"] as? String {
                        self.optionCode = value
                    }
                    if let value = dict["PromotionDesc"] as? String {
                        self.promotionDesc = value
                    }
                    if let value = dict["PromotionId"] as? String {
                        self.promotionId = value
                    }
                    if let value = dict["PromotionName"] as? String {
                        self.promotionName = value
                    }
                    if let value = dict["Selected"] as? Bool {
                        self.selected = value
                    }
                }
            }
            public var currency: String?

            public var discountPrice: String?

            public var originalPrice: String?

            public var promotions: [GetResourcePriceResponseBody.PriceList.Price.Promotions]?

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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Currency"] as? String {
                    self.currency = value
                }
                if let value = dict["DiscountPrice"] as? String {
                    self.discountPrice = value
                }
                if let value = dict["OriginalPrice"] as? String {
                    self.originalPrice = value
                }
                if let value = dict["Promotions"] as? [Any?] {
                    var tmp : [GetResourcePriceResponseBody.PriceList.Price.Promotions] = []
                    for v in value {
                        if v != nil {
                            var model = GetResourcePriceResponseBody.PriceList.Price.Promotions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.promotions = tmp
                }
                if let value = dict["TradePrice"] as? String {
                    self.tradePrice = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
            }
        }
        public var price: GetResourcePriceResponseBody.PriceList.Price?

        public var priceType: String?

        public var rules: [GetResourcePriceResponseBody.PriceList.Rules]?

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
            if self.priceType != nil {
                map["PriceType"] = self.priceType!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Price"] as? [String: Any?] {
                var model = GetResourcePriceResponseBody.PriceList.Price()
                model.fromMap(value)
                self.price = model
            }
            if let value = dict["PriceType"] as? String {
                self.priceType = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [GetResourcePriceResponseBody.PriceList.Rules] = []
                for v in value {
                    if v != nil {
                        var model = GetResourcePriceResponseBody.PriceList.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
        }
    }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OptionCode"] as? String {
                        self.optionCode = value
                    }
                    if let value = dict["PromotionDesc"] as? String {
                        self.promotionDesc = value
                    }
                    if let value = dict["PromotionId"] as? String {
                        self.promotionId = value
                    }
                    if let value = dict["PromotionName"] as? String {
                        self.promotionName = value
                    }
                    if let value = dict["Selected"] as? Bool {
                        self.selected = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Currency"] as? String {
                    self.currency = value
                }
                if let value = dict["DiscountPrice"] as? String {
                    self.discountPrice = value
                }
                if let value = dict["OriginalPrice"] as? String {
                    self.originalPrice = value
                }
                if let value = dict["Promotions"] as? [Any?] {
                    var tmp : [GetResourcePriceResponseBody.PriceModel.Price.Promotions] = []
                    for v in value {
                        if v != nil {
                            var model = GetResourcePriceResponseBody.PriceModel.Price.Promotions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.promotions = tmp
                }
                if let value = dict["TradePrice"] as? String {
                    self.tradePrice = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Price"] as? [String: Any?] {
                var model = GetResourcePriceResponseBody.PriceModel.Price()
                model.fromMap(value)
                self.price = model
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [GetResourcePriceResponseBody.PriceModel.Rules] = []
                for v in value {
                    if v != nil {
                        var model = GetResourcePriceResponseBody.PriceModel.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var priceList: [GetResourcePriceResponseBody.PriceList]?

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
        if self.priceList != nil {
            var tmp : [Any] = []
            for k in self.priceList! {
                tmp.append(k.toMap())
            }
            map["PriceList"] = tmp
        }
        if self.priceModel != nil {
            map["PriceModel"] = self.priceModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PriceList"] as? [Any?] {
            var tmp : [GetResourcePriceResponseBody.PriceList] = []
            for v in value {
                if v != nil {
                    var model = GetResourcePriceResponseBody.PriceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.priceList = tmp
        }
        if let value = dict["PriceModel"] as? [String: Any?] {
            var model = GetResourcePriceResponseBody.PriceModel()
            model.fromMap(value)
            self.priceModel = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetResourcePriceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["Period"] as? Int64 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OptionCode"] as? String {
                        self.optionCode = value
                    }
                    if let value = dict["PromotionDesc"] as? String {
                        self.promotionDesc = value
                    }
                    if let value = dict["PromotionId"] as? String {
                        self.promotionId = value
                    }
                    if let value = dict["PromotionName"] as? String {
                        self.promotionName = value
                    }
                    if let value = dict["Selected"] as? Bool {
                        self.selected = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Currency"] as? String {
                    self.currency = value
                }
                if let value = dict["DiscountPrice"] as? String {
                    self.discountPrice = value
                }
                if let value = dict["OriginalPrice"] as? String {
                    self.originalPrice = value
                }
                if let value = dict["Promotions"] as? [Any?] {
                    var tmp : [GetResourceRenewPriceResponseBody.Data.Price.Promotions] = []
                    for v in value {
                        if v != nil {
                            var model = GetResourceRenewPriceResponseBody.Data.Price.Promotions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.promotions = tmp
                }
                if let value = dict["TradePrice"] as? String {
                    self.tradePrice = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Price"] as? [String: Any?] {
                var model = GetResourceRenewPriceResponseBody.Data.Price()
                model.fromMap(value)
                self.price = model
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [GetResourceRenewPriceResponseBody.Data.Rules] = []
                for v in value {
                    if v != nil {
                        var model = GetResourceRenewPriceResponseBody.Data.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetResourceRenewPriceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetResourceRenewPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppInstanceGroupRequest : Tea.TeaModel {
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
    public var appCenterImageId: String?

    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var bizRegionId: String?

    public var excludedUserGroupIds: [String]?

    public var nodeInstanceType: String?

    public var officeSiteId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

    public var regionId: String?

    public var status: [String]?

    public var tag: [ListAppInstanceGroupRequest.Tag]?

    public var userGroupIds: [String]?

    public override init() {
        super.init()
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
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.excludedUserGroupIds != nil {
            map["ExcludedUserGroupIds"] = self.excludedUserGroupIds!
        }
        if self.nodeInstanceType != nil {
            map["NodeInstanceType"] = self.nodeInstanceType!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCenterImageId"] as? String {
            self.appCenterImageId = value
        }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstanceGroupName"] as? String {
            self.appInstanceGroupName = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ExcludedUserGroupIds"] as? [String] {
            self.excludedUserGroupIds = value
        }
        if let value = dict["NodeInstanceType"] as? String {
            self.nodeInstanceType = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? [String] {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListAppInstanceGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListAppInstanceGroupRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UserGroupIds"] as? [String] {
            self.userGroupIds = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppIcon"] as? String {
                    self.appIcon = value
                }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["AppVersion"] as? String {
                    self.appVersion = value
                }
                if let value = dict["AppVersionName"] as? String {
                    self.appVersionName = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Amount"] as? Int32 {
                            self.amount = value
                        }
                        if let value = dict["EndTime"] as? String {
                            self.endTime = value
                        }
                        if let value = dict["StartTime"] as? String {
                            self.startTime = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RecurrenceType"] as? String {
                        self.recurrenceType = value
                    }
                    if let value = dict["RecurrenceValues"] as? [Int32] {
                        self.recurrenceValues = value
                    }
                    if let value = dict["TimerPeriods"] as? [Any?] {
                        var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods] = []
                        for v in value {
                            if v != nil {
                                var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules.TimerPeriods()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.timerPeriods = tmp
                    }
                }
            }
            public var amount: Int32?

            public var maxIdleAppInstanceAmount: Int32?

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
                if self.maxIdleAppInstanceAmount != nil {
                    map["MaxIdleAppInstanceAmount"] = self.maxIdleAppInstanceAmount!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Amount"] as? Int32 {
                    self.amount = value
                }
                if let value = dict["MaxIdleAppInstanceAmount"] as? Int32 {
                    self.maxIdleAppInstanceAmount = value
                }
                if let value = dict["MaxScalingAmount"] as? Int32 {
                    self.maxScalingAmount = value
                }
                if let value = dict["NodeAmount"] as? Int32 {
                    self.nodeAmount = value
                }
                if let value = dict["NodeCapacity"] as? Int32 {
                    self.nodeCapacity = value
                }
                if let value = dict["NodeInstanceType"] as? String {
                    self.nodeInstanceType = value
                }
                if let value = dict["NodePoolId"] as? String {
                    self.nodePoolId = value
                }
                if let value = dict["NodeTypeName"] as? String {
                    self.nodeTypeName = value
                }
                if let value = dict["NodeUsed"] as? Int32 {
                    self.nodeUsed = value
                }
                if let value = dict["RecurrenceSchedules"] as? [Any?] {
                    var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules] = []
                    for v in value {
                        if v != nil {
                            var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool.RecurrenceSchedules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.recurrenceSchedules = tmp
                }
                if let value = dict["ScalingDownAfterIdleMinutes"] as? Int32 {
                    self.scalingDownAfterIdleMinutes = value
                }
                if let value = dict["ScalingNodeAmount"] as? Int32 {
                    self.scalingNodeAmount = value
                }
                if let value = dict["ScalingNodeUsed"] as? Int32 {
                    self.scalingNodeUsed = value
                }
                if let value = dict["ScalingStep"] as? Int32 {
                    self.scalingStep = value
                }
                if let value = dict["ScalingUsageThreshold"] as? String {
                    self.scalingUsageThreshold = value
                }
                if let value = dict["StrategyDisableDate"] as? String {
                    self.strategyDisableDate = value
                }
                if let value = dict["StrategyEnableDate"] as? String {
                    self.strategyEnableDate = value
                }
                if let value = dict["StrategyType"] as? String {
                    self.strategyType = value
                }
                if let value = dict["WarmUp"] as? Bool {
                    self.warmUp = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NewOtaVersion"] as? String {
                    self.newOtaVersion = value
                }
                if let value = dict["OtaVersion"] as? String {
                    self.otaVersion = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
            }
        }
        public class ResourceTags : Tea.TeaModel {
            public var key: String?

            public var scope: String?

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
                if self.scope != nil {
                    map["Scope"] = self.scope!
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
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var scope: String?

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
                if self.scope != nil {
                    map["Scope"] = self.scope!
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
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var accessType: String?

        public var amount: Int32?

        public var appCenterImageId: String?

        public var appInstanceGroupId: String?

        public var appInstanceGroupName: String?

        public var appInstanceType: String?

        public var appPolicyId: String?

        public var appPolicyImageCheck: Bool?

        public var appPolicyVersion: String?

        public var apps: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps]?

        public var authMode: String?

        public var chargeResourceMode: String?

        public var chargeType: String?

        public var expiredTime: String?

        public var gmtCreate: String?

        public var maxAmount: Int32?

        public var minAmount: Int32?

        public var nodePool: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool]?

        public var officeSiteId: String?

        public var osType: String?

        public var otaInfo: ListAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo?

        public var productType: String?

        public var regionId: String?

        public var reserveAmountRatio: String?

        public var reserveMaxAmount: Int32?

        public var reserveMinAmount: Int32?

        public var resourceStatus: String?

        public var resourceTags: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.ResourceTags]?

        public var scalingDownAfterIdleMinutes: Int32?

        public var scalingStep: Int32?

        public var scalingUsageThreshold: String?

        public var sessionTimeout: String?

        public var skipUserAuthCheck: Bool?

        public var specId: String?

        public var status: String?

        public var supportUserGroupMixedAuth: Bool?

        public var tags: [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Tags]?

        public var userGroupAuthMode: String?

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
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
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
            if self.appPolicyImageCheck != nil {
                map["AppPolicyImageCheck"] = self.appPolicyImageCheck!
            }
            if self.appPolicyVersion != nil {
                map["AppPolicyVersion"] = self.appPolicyVersion!
            }
            if self.apps != nil {
                var tmp : [Any] = []
                for k in self.apps! {
                    tmp.append(k.toMap())
                }
                map["Apps"] = tmp
            }
            if self.authMode != nil {
                map["AuthMode"] = self.authMode!
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
            if self.maxAmount != nil {
                map["MaxAmount"] = self.maxAmount!
            }
            if self.minAmount != nil {
                map["MinAmount"] = self.minAmount!
            }
            if self.nodePool != nil {
                var tmp : [Any] = []
                for k in self.nodePool! {
                    tmp.append(k.toMap())
                }
                map["NodePool"] = tmp
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
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
            if self.reserveAmountRatio != nil {
                map["ReserveAmountRatio"] = self.reserveAmountRatio!
            }
            if self.reserveMaxAmount != nil {
                map["ReserveMaxAmount"] = self.reserveMaxAmount!
            }
            if self.reserveMinAmount != nil {
                map["ReserveMinAmount"] = self.reserveMinAmount!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.resourceTags != nil {
                var tmp : [Any] = []
                for k in self.resourceTags! {
                    tmp.append(k.toMap())
                }
                map["ResourceTags"] = tmp
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
            if self.sessionTimeout != nil {
                map["SessionTimeout"] = self.sessionTimeout!
            }
            if self.skipUserAuthCheck != nil {
                map["SkipUserAuthCheck"] = self.skipUserAuthCheck!
            }
            if self.specId != nil {
                map["SpecId"] = self.specId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportUserGroupMixedAuth != nil {
                map["SupportUserGroupMixedAuth"] = self.supportUserGroupMixedAuth!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.userGroupAuthMode != nil {
                map["UserGroupAuthMode"] = self.userGroupAuthMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? String {
                self.accessType = value
            }
            if let value = dict["Amount"] as? Int32 {
                self.amount = value
            }
            if let value = dict["AppCenterImageId"] as? String {
                self.appCenterImageId = value
            }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["AppInstanceGroupName"] as? String {
                self.appInstanceGroupName = value
            }
            if let value = dict["AppInstanceType"] as? String {
                self.appInstanceType = value
            }
            if let value = dict["AppPolicyId"] as? String {
                self.appPolicyId = value
            }
            if let value = dict["AppPolicyImageCheck"] as? Bool {
                self.appPolicyImageCheck = value
            }
            if let value = dict["AppPolicyVersion"] as? String {
                self.appPolicyVersion = value
            }
            if let value = dict["Apps"] as? [Any?] {
                var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps] = []
                for v in value {
                    if v != nil {
                        var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Apps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.apps = tmp
            }
            if let value = dict["AuthMode"] as? String {
                self.authMode = value
            }
            if let value = dict["ChargeResourceMode"] as? String {
                self.chargeResourceMode = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["MaxAmount"] as? Int32 {
                self.maxAmount = value
            }
            if let value = dict["MinAmount"] as? Int32 {
                self.minAmount = value
            }
            if let value = dict["NodePool"] as? [Any?] {
                var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool] = []
                for v in value {
                    if v != nil {
                        var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.NodePool()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodePool = tmp
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["OtaInfo"] as? [String: Any?] {
                var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.OtaInfo()
                model.fromMap(value)
                self.otaInfo = model
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ReserveAmountRatio"] as? String {
                self.reserveAmountRatio = value
            }
            if let value = dict["ReserveMaxAmount"] as? Int32 {
                self.reserveMaxAmount = value
            }
            if let value = dict["ReserveMinAmount"] as? Int32 {
                self.reserveMinAmount = value
            }
            if let value = dict["ResourceStatus"] as? String {
                self.resourceStatus = value
            }
            if let value = dict["ResourceTags"] as? [Any?] {
                var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.ResourceTags] = []
                for v in value {
                    if v != nil {
                        var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.ResourceTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resourceTags = tmp
            }
            if let value = dict["ScalingDownAfterIdleMinutes"] as? Int32 {
                self.scalingDownAfterIdleMinutes = value
            }
            if let value = dict["ScalingStep"] as? Int32 {
                self.scalingStep = value
            }
            if let value = dict["ScalingUsageThreshold"] as? String {
                self.scalingUsageThreshold = value
            }
            if let value = dict["SessionTimeout"] as? String {
                self.sessionTimeout = value
            }
            if let value = dict["SkipUserAuthCheck"] as? Bool {
                self.skipUserAuthCheck = value
            }
            if let value = dict["SpecId"] as? String {
                self.specId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupportUserGroupMixedAuth"] as? Bool {
                self.supportUserGroupMixedAuth = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UserGroupAuthMode"] as? String {
                self.userGroupAuthMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupModels"] as? [Any?] {
            var tmp : [ListAppInstanceGroupResponseBody.AppInstanceGroupModels] = []
            for v in value {
                if v != nil {
                    var model = ListAppInstanceGroupResponseBody.AppInstanceGroupModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.appInstanceGroupModels = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAppInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppInstancesRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appInstanceIdList: [String]?

    public var includeDeleted: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: [String]?

    public var userIdList: [String]?

    public override init() {
        super.init()
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
        if self.appInstanceIdList != nil {
            map["AppInstanceIdList"] = self.appInstanceIdList!
        }
        if self.includeDeleted != nil {
            map["IncludeDeleted"] = self.includeDeleted!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userIdList != nil {
            map["UserIdList"] = self.userIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["AppInstanceIdList"] as? [String] {
            self.appInstanceIdList = value
        }
        if let value = dict["IncludeDeleted"] as? Bool {
            self.includeDeleted = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? [String] {
            self.status = value
        }
        if let value = dict["UserIdList"] as? [String] {
            self.userIdList = value
        }
    }
}

public class ListAppInstancesResponseBody : Tea.TeaModel {
    public class AppInstanceModels : Tea.TeaModel {
        public class BindInfo : Tea.TeaModel {
            public var endUserId: String?

            public var usageDuration: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.usageDuration != nil {
                    map["UsageDuration"] = self.usageDuration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndUserId"] as? String {
                    self.endUserId = value
                }
                if let value = dict["UsageDuration"] as? Int64 {
                    self.usageDuration = value
                }
            }
        }
        public var appInstanceGroupId: String?

        public var appInstanceId: String?

        public var bindInfo: ListAppInstancesResponseBody.AppInstanceModels.BindInfo?

        public var chargeType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var mainEthPublicIp: String?

        public var networkInterfaceId: String?

        public var networkInterfaceIp: String?

        public var nodeId: String?

        public var sessionStatus: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bindInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
            }
            if self.bindInfo != nil {
                map["BindInfo"] = self.bindInfo?.toMap()
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.mainEthPublicIp != nil {
                map["MainEthPublicIp"] = self.mainEthPublicIp!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.networkInterfaceIp != nil {
                map["NetworkInterfaceIp"] = self.networkInterfaceIp!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.sessionStatus != nil {
                map["SessionStatus"] = self.sessionStatus!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["AppInstanceId"] as? String {
                self.appInstanceId = value
            }
            if let value = dict["BindInfo"] as? [String: Any?] {
                var model = ListAppInstancesResponseBody.AppInstanceModels.BindInfo()
                model.fromMap(value)
                self.bindInfo = model
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["MainEthPublicIp"] as? String {
                self.mainEthPublicIp = value
            }
            if let value = dict["NetworkInterfaceId"] as? String {
                self.networkInterfaceId = value
            }
            if let value = dict["NetworkInterfaceIp"] as? String {
                self.networkInterfaceIp = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
            if let value = dict["SessionStatus"] as? String {
                self.sessionStatus = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var appInstanceModels: [ListAppInstancesResponseBody.AppInstanceModels]?

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
        if self.appInstanceModels != nil {
            var tmp : [Any] = []
            for k in self.appInstanceModels! {
                tmp.append(k.toMap())
            }
            map["AppInstanceModels"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceModels"] as? [Any?] {
            var tmp : [ListAppInstancesResponseBody.AppInstanceModels] = []
            for v in value {
                if v != nil {
                    var model = ListAppInstancesResponseBody.AppInstanceModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.appInstanceModels = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAppInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAppInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAuthorizedUserGroupsRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var groupId: String?

    public var groupName: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class ListAuthorizedUserGroupsResponseBody : Tea.TeaModel {
    public class UserGroups : Tea.TeaModel {
        public var appInstanceGroupId: String?

        public var authMode: String?

        public var groupId: String?

        public var groupName: String?

        public override init() {
            super.init()
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
            if self.authMode != nil {
                map["AuthMode"] = self.authMode!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["AuthMode"] as? String {
                self.authMode = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var userGroups: [ListAuthorizedUserGroupsResponseBody.UserGroups]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.userGroups != nil {
            var tmp : [Any] = []
            for k in self.userGroups! {
                tmp.append(k.toMap())
            }
            map["UserGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["UserGroups"] as? [Any?] {
            var tmp : [ListAuthorizedUserGroupsResponseBody.UserGroups] = []
            for v in value {
                if v != nil {
                    var model = ListAuthorizedUserGroupsResponseBody.UserGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userGroups = tmp
        }
    }
}

public class ListAuthorizedUserGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthorizedUserGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAuthorizedUserGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBindInfoRequest : Tea.TeaModel {
    public var appIdList: [String]?

    public var appInstanceGroupIdList: [String]?

    public var appInstanceIdList: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var userIdList: [String]?

    public var wyIdList: [String]?

    public override init() {
        super.init()
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
        if self.appInstanceGroupIdList != nil {
            map["AppInstanceGroupIdList"] = self.appInstanceGroupIdList!
        }
        if self.appInstanceIdList != nil {
            map["AppInstanceIdList"] = self.appInstanceIdList!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userIdList != nil {
            map["UserIdList"] = self.userIdList!
        }
        if self.wyIdList != nil {
            map["WyIdList"] = self.wyIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIdList"] as? [String] {
            self.appIdList = value
        }
        if let value = dict["AppInstanceGroupIdList"] as? [String] {
            self.appInstanceGroupIdList = value
        }
        if let value = dict["AppInstanceIdList"] as? [String] {
            self.appInstanceIdList = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserIdList"] as? [String] {
            self.userIdList = value
        }
        if let value = dict["WyIdList"] as? [String] {
            self.wyIdList = value
        }
    }
}

public class ListBindInfoResponseBody : Tea.TeaModel {
    public class BindInfoModels : Tea.TeaModel {
        public var accountType: String?

        public var appId: String?

        public var appInstanceGroupId: String?

        public var appInstanceId: String?

        public var appVersion: String?

        public var productType: String?

        public var regionId: String?

        public var userId: String?

        public var wyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.wyId != nil {
                map["WyId"] = self.wyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountType"] as? String {
                self.accountType = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["AppInstanceId"] as? String {
                self.appInstanceId = value
            }
            if let value = dict["AppVersion"] as? String {
                self.appVersion = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["WyId"] as? String {
                self.wyId = value
            }
        }
    }
    public var bindInfoModels: [ListBindInfoResponseBody.BindInfoModels]?

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
        if self.bindInfoModels != nil {
            var tmp : [Any] = []
            for k in self.bindInfoModels! {
                tmp.append(k.toMap())
            }
            map["BindInfoModels"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindInfoModels"] as? [Any?] {
            var tmp : [ListBindInfoResponseBody.BindInfoModels] = []
            for v in value {
                if v != nil {
                    var model = ListBindInfoResponseBody.BindInfoModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.bindInfoModels = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListBindInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBindInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBindInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListImageRequest : Tea.TeaModel {
    public class TagList : Tea.TeaModel {
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
    public var bizRegionIdList: [String]?

    public var bizType: Int32?

    public var bizTypeList: [Int32]?

    public var featureList: [String]?

    public var fotaVersion: String?

    public var imageId: String?

    public var imageName: String?

    public var imageType: String?

    public var languageType: String?

    public var osType: String?

    public var packageType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var platformName: String?

    public var platformNameList: [String]?

    public var productType: String?

    public var productTypeList: [String]?

    public var protocolType: String?

    public var resourceInstanceType: String?

    public var status: String?

    public var tagList: [ListImageRequest.TagList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizRegionIdList != nil {
            map["BizRegionIdList"] = self.bizRegionIdList!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
        }
        if self.featureList != nil {
            map["FeatureList"] = self.featureList!
        }
        if self.fotaVersion != nil {
            map["FotaVersion"] = self.fotaVersion!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.languageType != nil {
            map["LanguageType"] = self.languageType!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.packageType != nil {
            map["PackageType"] = self.packageType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platformName != nil {
            map["PlatformName"] = self.platformName!
        }
        if self.platformNameList != nil {
            map["PlatformNameList"] = self.platformNameList!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.productTypeList != nil {
            map["ProductTypeList"] = self.productTypeList!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.resourceInstanceType != nil {
            map["ResourceInstanceType"] = self.resourceInstanceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagList != nil {
            var tmp : [Any] = []
            for k in self.tagList! {
                tmp.append(k.toMap())
            }
            map["TagList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRegionIdList"] as? [String] {
            self.bizRegionIdList = value
        }
        if let value = dict["BizType"] as? Int32 {
            self.bizType = value
        }
        if let value = dict["BizTypeList"] as? [Int32] {
            self.bizTypeList = value
        }
        if let value = dict["FeatureList"] as? [String] {
            self.featureList = value
        }
        if let value = dict["FotaVersion"] as? String {
            self.fotaVersion = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["LanguageType"] as? String {
            self.languageType = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["PackageType"] as? String {
            self.packageType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlatformName"] as? String {
            self.platformName = value
        }
        if let value = dict["PlatformNameList"] as? [String] {
            self.platformNameList = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ProductTypeList"] as? [String] {
            self.productTypeList = value
        }
        if let value = dict["ProtocolType"] as? String {
            self.protocolType = value
        }
        if let value = dict["ResourceInstanceType"] as? String {
            self.resourceInstanceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TagList"] as? [Any?] {
            var tmp : [ListImageRequest.TagList] = []
            for v in value {
                if v != nil {
                    var model = ListImageRequest.TagList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagList = tmp
        }
    }
}

public class ListImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AppList : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppId"] as? String {
                    self.appId = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
            }
        }
        public class ImageRegionDistributeList : Tea.TeaModel {
            public var imageId: String?

            public var progress: String?

            public var regionId: String?

            public var status: String?

            public var versionId: String?

            public override init() {
                super.init()
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
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["Progress"] as? String {
                    self.progress = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["VersionId"] as? String {
                    self.versionId = value
                }
            }
        }
        public var aliUid: Int64?

        public var appList: [ListImageResponseBody.Data.AppList]?

        public var baseImageId: String?

        public var baseImageVersion: String?

        public var bizType: Int32?

        public var compatibleMode: Bool?

        public var dataDiskSize: Int32?

        public var description_: String?

        public var distro: String?

        public var driverList: [String]?

        public var featureList: [String]?

        public var fotaChannel: String?

        public var fotaVersion: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var imageCreateMode: String?

        public var imageId: String?

        public var imageName: String?

        public var imageRegionDistributeList: [ListImageResponseBody.Data.ImageRegionDistributeList]?

        public var imageRegionList: [String]?

        public var imageType: String?

        public var language: String?

        public var latestVersionId: String?

        public var onlineVersion: Bool?

        public var onlineVersionId: String?

        public var osType: String?

        public var packageType: String?

        public var parentImageId: String?

        public var parentImageVersion: String?

        public var platform: Int32?

        public var platformName: String?

        public var productType: String?

        public var protocolType: String?

        public var resourceInstanceCategory: String?

        public var scene: String?

        public var sessionType: String?

        public var status: String?

        public var supportedLanguageList: [String]?

        public var systemDiskSize: Int32?

        public var versionId: String?

        public var versionName: String?

        public var volumeEncryptionEnabled: Bool?

        public var volumeEncryptionKey: String?

        public override init() {
            super.init()
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
            if self.appList != nil {
                var tmp : [Any] = []
                for k in self.appList! {
                    tmp.append(k.toMap())
                }
                map["AppList"] = tmp
            }
            if self.baseImageId != nil {
                map["BaseImageId"] = self.baseImageId!
            }
            if self.baseImageVersion != nil {
                map["BaseImageVersion"] = self.baseImageVersion!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.compatibleMode != nil {
                map["CompatibleMode"] = self.compatibleMode!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.distro != nil {
                map["Distro"] = self.distro!
            }
            if self.driverList != nil {
                map["DriverList"] = self.driverList!
            }
            if self.featureList != nil {
                map["FeatureList"] = self.featureList!
            }
            if self.fotaChannel != nil {
                map["FotaChannel"] = self.fotaChannel!
            }
            if self.fotaVersion != nil {
                map["FotaVersion"] = self.fotaVersion!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.imageCreateMode != nil {
                map["ImageCreateMode"] = self.imageCreateMode!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.imageRegionDistributeList != nil {
                var tmp : [Any] = []
                for k in self.imageRegionDistributeList! {
                    tmp.append(k.toMap())
                }
                map["ImageRegionDistributeList"] = tmp
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
            if self.latestVersionId != nil {
                map["LatestVersionId"] = self.latestVersionId!
            }
            if self.onlineVersion != nil {
                map["OnlineVersion"] = self.onlineVersion!
            }
            if self.onlineVersionId != nil {
                map["OnlineVersionId"] = self.onlineVersionId!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.packageType != nil {
                map["PackageType"] = self.packageType!
            }
            if self.parentImageId != nil {
                map["ParentImageId"] = self.parentImageId!
            }
            if self.parentImageVersion != nil {
                map["ParentImageVersion"] = self.parentImageVersion!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.platformName != nil {
                map["PlatformName"] = self.platformName!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.resourceInstanceCategory != nil {
                map["ResourceInstanceCategory"] = self.resourceInstanceCategory!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.sessionType != nil {
                map["SessionType"] = self.sessionType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportedLanguageList != nil {
                map["SupportedLanguageList"] = self.supportedLanguageList!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            if self.volumeEncryptionEnabled != nil {
                map["VolumeEncryptionEnabled"] = self.volumeEncryptionEnabled!
            }
            if self.volumeEncryptionKey != nil {
                map["VolumeEncryptionKey"] = self.volumeEncryptionKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["AppList"] as? [Any?] {
                var tmp : [ListImageResponseBody.Data.AppList] = []
                for v in value {
                    if v != nil {
                        var model = ListImageResponseBody.Data.AppList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appList = tmp
            }
            if let value = dict["BaseImageId"] as? String {
                self.baseImageId = value
            }
            if let value = dict["BaseImageVersion"] as? String {
                self.baseImageVersion = value
            }
            if let value = dict["BizType"] as? Int32 {
                self.bizType = value
            }
            if let value = dict["CompatibleMode"] as? Bool {
                self.compatibleMode = value
            }
            if let value = dict["DataDiskSize"] as? Int32 {
                self.dataDiskSize = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Distro"] as? String {
                self.distro = value
            }
            if let value = dict["DriverList"] as? [String] {
                self.driverList = value
            }
            if let value = dict["FeatureList"] as? [String] {
                self.featureList = value
            }
            if let value = dict["FotaChannel"] as? String {
                self.fotaChannel = value
            }
            if let value = dict["FotaVersion"] as? String {
                self.fotaVersion = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ImageCreateMode"] as? String {
                self.imageCreateMode = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["ImageRegionDistributeList"] as? [Any?] {
                var tmp : [ListImageResponseBody.Data.ImageRegionDistributeList] = []
                for v in value {
                    if v != nil {
                        var model = ListImageResponseBody.Data.ImageRegionDistributeList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.imageRegionDistributeList = tmp
            }
            if let value = dict["ImageRegionList"] as? [String] {
                self.imageRegionList = value
            }
            if let value = dict["ImageType"] as? String {
                self.imageType = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["LatestVersionId"] as? String {
                self.latestVersionId = value
            }
            if let value = dict["OnlineVersion"] as? Bool {
                self.onlineVersion = value
            }
            if let value = dict["OnlineVersionId"] as? String {
                self.onlineVersionId = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["PackageType"] as? String {
                self.packageType = value
            }
            if let value = dict["ParentImageId"] as? String {
                self.parentImageId = value
            }
            if let value = dict["ParentImageVersion"] as? String {
                self.parentImageVersion = value
            }
            if let value = dict["Platform"] as? Int32 {
                self.platform = value
            }
            if let value = dict["PlatformName"] as? String {
                self.platformName = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["ResourceInstanceCategory"] as? String {
                self.resourceInstanceCategory = value
            }
            if let value = dict["Scene"] as? String {
                self.scene = value
            }
            if let value = dict["SessionType"] as? String {
                self.sessionType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SupportedLanguageList"] as? [String] {
                self.supportedLanguageList = value
            }
            if let value = dict["SystemDiskSize"] as? Int32 {
                self.systemDiskSize = value
            }
            if let value = dict["VersionId"] as? String {
                self.versionId = value
            }
            if let value = dict["VersionName"] as? String {
                self.versionName = value
            }
            if let value = dict["VolumeEncryptionEnabled"] as? Bool {
                self.volumeEncryptionEnabled = value
            }
            if let value = dict["VolumeEncryptionKey"] as? String {
                self.volumeEncryptionKey = value
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var data: [ListImageResponseBody.Data]?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListImageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListImageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
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
    }
}

public class ListImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNodeInstanceTypeRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var cpu: Double?

    public var gpu: Double?

    public var gpuMemory: Int32?

    public var language: String?

    public var memory: Int32?

    public var nodeInstanceType: String?

    public var nodeInstanceTypeFamily: String?

    public var orderBy: String?

    public var osType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: String?

    public var sortType: String?

    public override init() {
        super.init()
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
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.gpu != nil {
            map["Gpu"] = self.gpu!
        }
        if self.gpuMemory != nil {
            map["GpuMemory"] = self.gpuMemory!
        }
        if self.language != nil {
            map["Language"] = self.language!
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
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
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
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["Cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["Gpu"] as? Double {
            self.gpu = value
        }
        if let value = dict["GpuMemory"] as? Int32 {
            self.gpuMemory = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["Memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["NodeInstanceType"] as? String {
            self.nodeInstanceType = value
        }
        if let value = dict["NodeInstanceTypeFamily"] as? String {
            self.nodeInstanceTypeFamily = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["SortType"] as? String {
            self.sortType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cpu"] as? String {
                self.cpu = value
            }
            if let value = dict["Gpu"] as? String {
                self.gpu = value
            }
            if let value = dict["GpuMemory"] as? Int64 {
                self.gpuMemory = value
            }
            if let value = dict["MaxCapacity"] as? Int32 {
                self.maxCapacity = value
            }
            if let value = dict["Memory"] as? Int64 {
                self.memory = value
            }
            if let value = dict["NodeInstanceType"] as? String {
                self.nodeInstanceType = value
            }
            if let value = dict["NodeInstanceTypeFamily"] as? String {
                self.nodeInstanceTypeFamily = value
            }
            if let value = dict["NodeTypeName"] as? String {
                self.nodeTypeName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeInstanceTypeModels"] as? [Any?] {
            var tmp : [ListNodeInstanceTypeResponseBody.NodeInstanceTypeModels] = []
            for v in value {
                if v != nil {
                    var model = ListNodeInstanceTypeResponseBody.NodeInstanceTypeModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeInstanceTypeModels = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNodeInstanceTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class ListNodesResponseBody : Tea.TeaModel {
    public class NodeModels : Tea.TeaModel {
        public var chargeType: String?

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
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["NodeId"] as? String {
                self.nodeId = value
            }
        }
    }
    public var count: Int32?

    public var nodeModels: [ListNodesResponseBody.NodeModels]?

    public var perPageSize: Int32?

    public var requestId: String?

    public var toPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.nodeModels != nil {
            var tmp : [Any] = []
            for k in self.nodeModels! {
                tmp.append(k.toMap())
            }
            map["NodeModels"] = tmp
        }
        if self.perPageSize != nil {
            map["PerPageSize"] = self.perPageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.toPage != nil {
            map["ToPage"] = self.toPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["NodeModels"] as? [Any?] {
            var tmp : [ListNodesResponseBody.NodeModels] = []
            for v in value {
                if v != nil {
                    var model = ListNodesResponseBody.NodeModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeModels = tmp
        }
        if let value = dict["PerPageSize"] as? Int32 {
            self.perPageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ToPage"] as? Int32 {
            self.toPage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListNodesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["OtaType"] as? String {
            self.otaType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OtaVersion"] as? String {
                self.otaVersion = value
            }
            if let value = dict["TaskDisplayStatus"] as? String {
                self.taskDisplayStatus = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskStartTime"] as? String {
                self.taskStartTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskList"] as? [Any?] {
            var tmp : [ListOtaTaskResponseBody.TaskList] = []
            for v in value {
                if v != nil {
                    var model = ListOtaTaskResponseBody.TaskList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskList = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListOtaTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPersistentAppInstancesRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstancePersistentIds: [String]?

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
        if self.appInstancePersistentIds != nil {
            map["AppInstancePersistentIds"] = self.appInstancePersistentIds!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstancePersistentIds"] as? [String] {
            self.appInstancePersistentIds = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class ListPersistentAppInstancesResponseBody : Tea.TeaModel {
    public class PersistentAppInstanceModels : Tea.TeaModel {
        public var appInstanceGroupId: String?

        public var appInstanceId: String?

        public var appInstancePersistentId: String?

        public var appInstancePersistentName: String?

        public var appInstancePersistentStatus: String?

        public var appInstanceStatus: String?

        public var authorizedUsers: [String]?

        public var gmtCreate: String?

        public override init() {
            super.init()
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
            if self.appInstancePersistentId != nil {
                map["AppInstancePersistentId"] = self.appInstancePersistentId!
            }
            if self.appInstancePersistentName != nil {
                map["AppInstancePersistentName"] = self.appInstancePersistentName!
            }
            if self.appInstancePersistentStatus != nil {
                map["AppInstancePersistentStatus"] = self.appInstancePersistentStatus!
            }
            if self.appInstanceStatus != nil {
                map["AppInstanceStatus"] = self.appInstanceStatus!
            }
            if self.authorizedUsers != nil {
                map["AuthorizedUsers"] = self.authorizedUsers!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstanceGroupId"] as? String {
                self.appInstanceGroupId = value
            }
            if let value = dict["AppInstanceId"] as? String {
                self.appInstanceId = value
            }
            if let value = dict["AppInstancePersistentId"] as? String {
                self.appInstancePersistentId = value
            }
            if let value = dict["AppInstancePersistentName"] as? String {
                self.appInstancePersistentName = value
            }
            if let value = dict["AppInstancePersistentStatus"] as? String {
                self.appInstancePersistentStatus = value
            }
            if let value = dict["AppInstanceStatus"] as? String {
                self.appInstanceStatus = value
            }
            if let value = dict["AuthorizedUsers"] as? [String] {
                self.authorizedUsers = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var persistentAppInstanceModels: [ListPersistentAppInstancesResponseBody.PersistentAppInstanceModels]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.persistentAppInstanceModels != nil {
            var tmp : [Any] = []
            for k in self.persistentAppInstanceModels! {
                tmp.append(k.toMap())
            }
            map["PersistentAppInstanceModels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PersistentAppInstanceModels"] as? [Any?] {
            var tmp : [ListPersistentAppInstancesResponseBody.PersistentAppInstanceModels] = []
            for v in value {
                if v != nil {
                    var model = ListPersistentAppInstancesResponseBody.PersistentAppInstanceModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.persistentAppInstanceModels = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPersistentAppInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPersistentAppInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPersistentAppInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegionsRequest : Tea.TeaModel {
    public var bizSource: String?

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
        if self.bizSource != nil {
            map["BizSource"] = self.bizSource!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizSource"] as? String {
            self.bizSource = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["regionId"] as? String {
                self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionModels"] as? [Any?] {
            var tmp : [ListRegionsResponseBody.RegionModels] = []
            for v in value {
                if v != nil {
                    var model = ListRegionsResponseBody.RegionModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regionModels = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagCloudResourcesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var scope: String?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class ListTagCloudResourcesResponseBody : Tea.TeaModel {
    public class ResourceTags : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var scope: String?

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
                if self.scope != nil {
                    map["Scope"] = self.scope!
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
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var resourceId: String?

        public var resourceType: String?

        public var tags: [ListTagCloudResourcesResponseBody.ResourceTags.Tags]?

        public override init() {
            super.init()
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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
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
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListTagCloudResourcesResponseBody.ResourceTags.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListTagCloudResourcesResponseBody.ResourceTags.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resourceTags: [ListTagCloudResourcesResponseBody.ResourceTags]?

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
        if self.resourceTags != nil {
            var tmp : [Any] = []
            for k in self.resourceTags! {
                tmp.append(k.toMap())
            }
            map["ResourceTags"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if let value = dict["ResourceTags"] as? [Any?] {
            var tmp : [ListTagCloudResourcesResponseBody.ResourceTags] = []
            for v in value {
                if v != nil {
                    var model = ListTagCloudResourcesResponseBody.ResourceTags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTags = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTagCloudResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagCloudResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTagCloudResourcesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppInstanceGroupExpireRemind"] as? Bool {
                self.appInstanceGroupExpireRemind = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TenantConfigModel"] as? [String: Any?] {
            var model = ListTenantConfigResponseBody.TenantConfigModel()
            model.fromMap(value)
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTenantConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWuyingServerRequest : Tea.TeaModel {
    public var addVirtualNodePoolStatusList: [String]?

    public var bizRegionId: String?

    public var chargeType: String?

    public var imageId: String?

    public var officeSiteId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var serverInstanceType: String?

    public var status: String?

    public var virtualNodePoolId: String?

    public var wuyingServerIdList: [String]?

    public var wuyingServerNameOrId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addVirtualNodePoolStatusList != nil {
            map["AddVirtualNodePoolStatusList"] = self.addVirtualNodePoolStatusList!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serverInstanceType != nil {
            map["ServerInstanceType"] = self.serverInstanceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.virtualNodePoolId != nil {
            map["VirtualNodePoolId"] = self.virtualNodePoolId!
        }
        if self.wuyingServerIdList != nil {
            map["WuyingServerIdList"] = self.wuyingServerIdList!
        }
        if self.wuyingServerNameOrId != nil {
            map["WuyingServerNameOrId"] = self.wuyingServerNameOrId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddVirtualNodePoolStatusList"] as? [String] {
            self.addVirtualNodePoolStatusList = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ServerInstanceType"] as? String {
            self.serverInstanceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VirtualNodePoolId"] as? String {
            self.virtualNodePoolId = value
        }
        if let value = dict["WuyingServerIdList"] as? [String] {
            self.wuyingServerIdList = value
        }
        if let value = dict["WuyingServerNameOrId"] as? String {
            self.wuyingServerNameOrId = value
        }
    }
}

public class ListWuyingServerResponseBody : Tea.TeaModel {
    public class WuyingServerList : Tea.TeaModel {
        public class DataDisk : Tea.TeaModel {
            public var dataDiskCategory: String?

            public var dataDiskPerformanceLevel: String?

            public var dataDiskSize: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataDiskCategory != nil {
                    map["DataDiskCategory"] = self.dataDiskCategory!
                }
                if self.dataDiskPerformanceLevel != nil {
                    map["DataDiskPerformanceLevel"] = self.dataDiskPerformanceLevel!
                }
                if self.dataDiskSize != nil {
                    map["DataDiskSize"] = self.dataDiskSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataDiskCategory"] as? String {
                    self.dataDiskCategory = value
                }
                if let value = dict["DataDiskPerformanceLevel"] as? String {
                    self.dataDiskPerformanceLevel = value
                }
                if let value = dict["DataDiskSize"] as? Int32 {
                    self.dataDiskSize = value
                }
            }
        }
        public class InstanceInfoList : Tea.TeaModel {
            public var instanceId: String?

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
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.networkInterfaceId != nil {
                    map["NetworkInterfaceId"] = self.networkInterfaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["NetworkInterfaceId"] as? String {
                    self.networkInterfaceId = value
                }
            }
        }
        public class ServerInstanceTypeInfo : Tea.TeaModel {
            public var cpu: String?

            public var gpu: String?

            public var gpuMemory: Int32?

            public var memory: Int32?

            public var serverInstanceType: String?

            public override init() {
                super.init()
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
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.serverInstanceType != nil {
                    map["ServerInstanceType"] = self.serverInstanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? String {
                    self.cpu = value
                }
                if let value = dict["Gpu"] as? String {
                    self.gpu = value
                }
                if let value = dict["GpuMemory"] as? Int32 {
                    self.gpuMemory = value
                }
                if let value = dict["Memory"] as? Int32 {
                    self.memory = value
                }
                if let value = dict["ServerInstanceType"] as? String {
                    self.serverInstanceType = value
                }
            }
        }
        public var addVirtualNodePoolStatus: String?

        public var bizRegionId: String?

        public var chargeType: String?

        public var createTime: String?

        public var dataDisk: [ListWuyingServerResponseBody.WuyingServerList.DataDisk]?

        public var expiredTime: String?

        public var imageId: String?

        public var imageName: String?

        public var instanceInfoList: [ListWuyingServerResponseBody.WuyingServerList.InstanceInfoList]?

        public var maxPrice: Double?

        public var networkInterfaceIp: String?

        public var officeSiteId: String?

        public var officeSiteName: String?

        public var officeSiteType: String?

        public var osType: String?

        public var securityGroupIds: [String]?

        public var serverInstanceTypeInfo: ListWuyingServerResponseBody.WuyingServerList.ServerInstanceTypeInfo?

        public var status: String?

        public var subPayType: String?

        public var systemDiskCategory: String?

        public var systemDiskPerformanceLevel: String?

        public var systemDiskSize: Int32?

        public var virtualNodePoolId: String?

        public var wuyingServerId: String?

        public var wuyingServerName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.serverInstanceTypeInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addVirtualNodePoolStatus != nil {
                map["AddVirtualNodePoolStatus"] = self.addVirtualNodePoolStatus!
            }
            if self.bizRegionId != nil {
                map["BizRegionId"] = self.bizRegionId!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataDisk != nil {
                var tmp : [Any] = []
                for k in self.dataDisk! {
                    tmp.append(k.toMap())
                }
                map["DataDisk"] = tmp
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.instanceInfoList != nil {
                var tmp : [Any] = []
                for k in self.instanceInfoList! {
                    tmp.append(k.toMap())
                }
                map["InstanceInfoList"] = tmp
            }
            if self.maxPrice != nil {
                map["MaxPrice"] = self.maxPrice!
            }
            if self.networkInterfaceIp != nil {
                map["NetworkInterfaceIp"] = self.networkInterfaceIp!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteName != nil {
                map["OfficeSiteName"] = self.officeSiteName!
            }
            if self.officeSiteType != nil {
                map["OfficeSiteType"] = self.officeSiteType!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.serverInstanceTypeInfo != nil {
                map["ServerInstanceTypeInfo"] = self.serverInstanceTypeInfo?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subPayType != nil {
                map["SubPayType"] = self.subPayType!
            }
            if self.systemDiskCategory != nil {
                map["SystemDiskCategory"] = self.systemDiskCategory!
            }
            if self.systemDiskPerformanceLevel != nil {
                map["SystemDiskPerformanceLevel"] = self.systemDiskPerformanceLevel!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            if self.virtualNodePoolId != nil {
                map["VirtualNodePoolId"] = self.virtualNodePoolId!
            }
            if self.wuyingServerId != nil {
                map["WuyingServerId"] = self.wuyingServerId!
            }
            if self.wuyingServerName != nil {
                map["WuyingServerName"] = self.wuyingServerName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddVirtualNodePoolStatus"] as? String {
                self.addVirtualNodePoolStatus = value
            }
            if let value = dict["BizRegionId"] as? String {
                self.bizRegionId = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DataDisk"] as? [Any?] {
                var tmp : [ListWuyingServerResponseBody.WuyingServerList.DataDisk] = []
                for v in value {
                    if v != nil {
                        var model = ListWuyingServerResponseBody.WuyingServerList.DataDisk()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataDisk = tmp
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["InstanceInfoList"] as? [Any?] {
                var tmp : [ListWuyingServerResponseBody.WuyingServerList.InstanceInfoList] = []
                for v in value {
                    if v != nil {
                        var model = ListWuyingServerResponseBody.WuyingServerList.InstanceInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceInfoList = tmp
            }
            if let value = dict["MaxPrice"] as? Double {
                self.maxPrice = value
            }
            if let value = dict["NetworkInterfaceIp"] as? String {
                self.networkInterfaceIp = value
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["OfficeSiteName"] as? String {
                self.officeSiteName = value
            }
            if let value = dict["OfficeSiteType"] as? String {
                self.officeSiteType = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["SecurityGroupIds"] as? [String] {
                self.securityGroupIds = value
            }
            if let value = dict["ServerInstanceTypeInfo"] as? [String: Any?] {
                var model = ListWuyingServerResponseBody.WuyingServerList.ServerInstanceTypeInfo()
                model.fromMap(value)
                self.serverInstanceTypeInfo = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubPayType"] as? String {
                self.subPayType = value
            }
            if let value = dict["SystemDiskCategory"] as? String {
                self.systemDiskCategory = value
            }
            if let value = dict["SystemDiskPerformanceLevel"] as? String {
                self.systemDiskPerformanceLevel = value
            }
            if let value = dict["SystemDiskSize"] as? Int32 {
                self.systemDiskSize = value
            }
            if let value = dict["VirtualNodePoolId"] as? String {
                self.virtualNodePoolId = value
            }
            if let value = dict["WuyingServerId"] as? String {
                self.wuyingServerId = value
            }
            if let value = dict["WuyingServerName"] as? String {
                self.wuyingServerName = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var wuyingServerList: [ListWuyingServerResponseBody.WuyingServerList]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.wuyingServerList != nil {
            var tmp : [Any] = []
            for k in self.wuyingServerList! {
                tmp.append(k.toMap())
            }
            map["WuyingServerList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["WuyingServerList"] as? [Any?] {
            var tmp : [ListWuyingServerResponseBody.WuyingServerList] = []
            for v in value {
                if v != nil {
                    var model = ListWuyingServerResponseBody.WuyingServerList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wuyingServerList = tmp
        }
    }
}

public class ListWuyingServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWuyingServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWuyingServerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LogOffAllSessionsInAppInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAppInstanceGroupAttributeRequest : Tea.TeaModel {
    public class Network : Tea.TeaModel {
        public class DomainRules : Tea.TeaModel {
            public var domain: String?

            public var policy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["Policy"] as? String {
                    self.policy = value
                }
            }
        }
        public var domainRules: [ModifyAppInstanceGroupAttributeRequest.Network.DomainRules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainRules != nil {
                var tmp : [Any] = []
                for k in self.domainRules! {
                    tmp.append(k.toMap())
                }
                map["DomainRules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainRules"] as? [Any?] {
                var tmp : [ModifyAppInstanceGroupAttributeRequest.Network.DomainRules] = []
                for v in value {
                    if v != nil {
                        var model = ModifyAppInstanceGroupAttributeRequest.Network.DomainRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domainRules = tmp
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeCapacity"] as? Int32 {
                self.nodeCapacity = value
            }
            if let value = dict["NodePoolId"] as? String {
                self.nodePoolId = value
            }
        }
    }
    public class SecurityPolicy : Tea.TeaModel {
        public var resetAfterUnbind: Bool?

        public var skipUserAuthCheck: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resetAfterUnbind != nil {
                map["ResetAfterUnbind"] = self.resetAfterUnbind!
            }
            if self.skipUserAuthCheck != nil {
                map["SkipUserAuthCheck"] = self.skipUserAuthCheck!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResetAfterUnbind"] as? Bool {
                self.resetAfterUnbind = value
            }
            if let value = dict["SkipUserAuthCheck"] as? Bool {
                self.skipUserAuthCheck = value
            }
        }
    }
    public class StoragePolicy : Tea.TeaModel {
        public class UserProfile : Tea.TeaModel {
            public var fileSystemId: String?

            public var userProfileSwitch: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.userProfileSwitch != nil {
                    map["UserProfileSwitch"] = self.userProfileSwitch!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["UserProfileSwitch"] as? Bool {
                    self.userProfileSwitch = value
                }
            }
        }
        public class UserProfileFollow : Tea.TeaModel {
            public var fileSystemId: String?

            public var profileFollowSwitch: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.profileFollowSwitch != nil {
                    map["ProfileFollowSwitch"] = self.profileFollowSwitch!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileSystemId"] as? String {
                    self.fileSystemId = value
                }
                if let value = dict["ProfileFollowSwitch"] as? Bool {
                    self.profileFollowSwitch = value
                }
            }
        }
        public var storageTypeList: [String]?

        public var userProfile: ModifyAppInstanceGroupAttributeRequest.StoragePolicy.UserProfile?

        public var userProfileFollow: ModifyAppInstanceGroupAttributeRequest.StoragePolicy.UserProfileFollow?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.userProfile?.validate()
            try self.userProfileFollow?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.storageTypeList != nil {
                map["StorageTypeList"] = self.storageTypeList!
            }
            if self.userProfile != nil {
                map["UserProfile"] = self.userProfile?.toMap()
            }
            if self.userProfileFollow != nil {
                map["UserProfileFollow"] = self.userProfileFollow?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["StorageTypeList"] as? [String] {
                self.storageTypeList = value
            }
            if let value = dict["UserProfile"] as? [String: Any?] {
                var model = ModifyAppInstanceGroupAttributeRequest.StoragePolicy.UserProfile()
                model.fromMap(value)
                self.userProfile = model
            }
            if let value = dict["UserProfileFollow"] as? [String: Any?] {
                var model = ModifyAppInstanceGroupAttributeRequest.StoragePolicy.UserProfileFollow()
                model.fromMap(value)
                self.userProfileFollow = model
            }
        }
    }
    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var network: ModifyAppInstanceGroupAttributeRequest.Network?

    public var nodePool: ModifyAppInstanceGroupAttributeRequest.NodePool?

    public var perSessionPerApp: Bool?

    public var preOpenAppId: String?

    public var preOpenMode: String?

    public var productType: String?

    public var securityPolicy: ModifyAppInstanceGroupAttributeRequest.SecurityPolicy?

    public var sessionTimeout: Int32?

    public var storagePolicy: ModifyAppInstanceGroupAttributeRequest.StoragePolicy?

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
        try self.securityPolicy?.validate()
        try self.storagePolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceGroupName != nil {
            map["AppInstanceGroupName"] = self.appInstanceGroupName!
        }
        if self.network != nil {
            map["Network"] = self.network?.toMap()
        }
        if self.nodePool != nil {
            map["NodePool"] = self.nodePool?.toMap()
        }
        if self.perSessionPerApp != nil {
            map["PerSessionPerApp"] = self.perSessionPerApp!
        }
        if self.preOpenAppId != nil {
            map["PreOpenAppId"] = self.preOpenAppId!
        }
        if self.preOpenMode != nil {
            map["PreOpenMode"] = self.preOpenMode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.securityPolicy != nil {
            map["SecurityPolicy"] = self.securityPolicy?.toMap()
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.storagePolicy != nil {
            map["StoragePolicy"] = self.storagePolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstanceGroupName"] as? String {
            self.appInstanceGroupName = value
        }
        if let value = dict["Network"] as? [String: Any?] {
            var model = ModifyAppInstanceGroupAttributeRequest.Network()
            model.fromMap(value)
            self.network = model
        }
        if let value = dict["NodePool"] as? [String: Any?] {
            var model = ModifyAppInstanceGroupAttributeRequest.NodePool()
            model.fromMap(value)
            self.nodePool = model
        }
        if let value = dict["PerSessionPerApp"] as? Bool {
            self.perSessionPerApp = value
        }
        if let value = dict["PreOpenAppId"] as? String {
            self.preOpenAppId = value
        }
        if let value = dict["PreOpenMode"] as? String {
            self.preOpenMode = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["SecurityPolicy"] as? [String: Any?] {
            var model = ModifyAppInstanceGroupAttributeRequest.SecurityPolicy()
            model.fromMap(value)
            self.securityPolicy = model
        }
        if let value = dict["SessionTimeout"] as? Int32 {
            self.sessionTimeout = value
        }
        if let value = dict["StoragePolicy"] as? [String: Any?] {
            var model = ModifyAppInstanceGroupAttributeRequest.StoragePolicy()
            model.fromMap(value)
            self.storagePolicy = model
        }
    }
}

public class ModifyAppInstanceGroupAttributeShrinkRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceGroupName: String?

    public var networkShrink: String?

    public var nodePoolShrink: String?

    public var perSessionPerApp: Bool?

    public var preOpenAppId: String?

    public var preOpenMode: String?

    public var productType: String?

    public var securityPolicyShrink: String?

    public var sessionTimeout: Int32?

    public var storagePolicyShrink: String?

    public override init() {
        super.init()
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
        if self.networkShrink != nil {
            map["Network"] = self.networkShrink!
        }
        if self.nodePoolShrink != nil {
            map["NodePool"] = self.nodePoolShrink!
        }
        if self.perSessionPerApp != nil {
            map["PerSessionPerApp"] = self.perSessionPerApp!
        }
        if self.preOpenAppId != nil {
            map["PreOpenAppId"] = self.preOpenAppId!
        }
        if self.preOpenMode != nil {
            map["PreOpenMode"] = self.preOpenMode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.securityPolicyShrink != nil {
            map["SecurityPolicy"] = self.securityPolicyShrink!
        }
        if self.sessionTimeout != nil {
            map["SessionTimeout"] = self.sessionTimeout!
        }
        if self.storagePolicyShrink != nil {
            map["StoragePolicy"] = self.storagePolicyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstanceGroupName"] as? String {
            self.appInstanceGroupName = value
        }
        if let value = dict["Network"] as? String {
            self.networkShrink = value
        }
        if let value = dict["NodePool"] as? String {
            self.nodePoolShrink = value
        }
        if let value = dict["PerSessionPerApp"] as? Bool {
            self.perSessionPerApp = value
        }
        if let value = dict["PreOpenAppId"] as? String {
            self.preOpenAppId = value
        }
        if let value = dict["PreOpenMode"] as? String {
            self.preOpenMode = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["SecurityPolicy"] as? String {
            self.securityPolicyShrink = value
        }
        if let value = dict["SessionTimeout"] as? Int32 {
            self.sessionTimeout = value
        }
        if let value = dict["StoragePolicy"] as? String {
            self.storagePolicyShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAppInstanceGroupAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAppPolicyRequest : Tea.TeaModel {
    public class VideoPolicy : Tea.TeaModel {
        public var frameRate: Int32?

        public var sessionResolutionHeight: Int32?

        public var sessionResolutionWidth: Int32?

        public var streamingMode: String?

        public var terminalResolutionAdaptive: Bool?

        public var visualQualityStrategy: String?

        public var webrtc: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.frameRate != nil {
                map["FrameRate"] = self.frameRate!
            }
            if self.sessionResolutionHeight != nil {
                map["SessionResolutionHeight"] = self.sessionResolutionHeight!
            }
            if self.sessionResolutionWidth != nil {
                map["SessionResolutionWidth"] = self.sessionResolutionWidth!
            }
            if self.streamingMode != nil {
                map["StreamingMode"] = self.streamingMode!
            }
            if self.terminalResolutionAdaptive != nil {
                map["TerminalResolutionAdaptive"] = self.terminalResolutionAdaptive!
            }
            if self.visualQualityStrategy != nil {
                map["VisualQualityStrategy"] = self.visualQualityStrategy!
            }
            if self.webrtc != nil {
                map["Webrtc"] = self.webrtc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FrameRate"] as? Int32 {
                self.frameRate = value
            }
            if let value = dict["SessionResolutionHeight"] as? Int32 {
                self.sessionResolutionHeight = value
            }
            if let value = dict["SessionResolutionWidth"] as? Int32 {
                self.sessionResolutionWidth = value
            }
            if let value = dict["StreamingMode"] as? String {
                self.streamingMode = value
            }
            if let value = dict["TerminalResolutionAdaptive"] as? Bool {
                self.terminalResolutionAdaptive = value
            }
            if let value = dict["VisualQualityStrategy"] as? String {
                self.visualQualityStrategy = value
            }
            if let value = dict["Webrtc"] as? Bool {
                self.webrtc = value
            }
        }
    }
    public var appPolicyId: String?

    public var productType: String?

    public var videoPolicy: ModifyAppPolicyRequest.VideoPolicy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.videoPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appPolicyId != nil {
            map["AppPolicyId"] = self.appPolicyId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.videoPolicy != nil {
            map["VideoPolicy"] = self.videoPolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppPolicyId"] as? String {
            self.appPolicyId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["VideoPolicy"] as? [String: Any?] {
            var model = ModifyAppPolicyRequest.VideoPolicy()
            model.fromMap(value)
            self.videoPolicy = model
        }
    }
}

public class ModifyAppPolicyShrinkRequest : Tea.TeaModel {
    public var appPolicyId: String?

    public var productType: String?

    public var videoPolicyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appPolicyId != nil {
            map["AppPolicyId"] = self.appPolicyId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.videoPolicyShrink != nil {
            map["VideoPolicy"] = self.videoPolicyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppPolicyId"] as? String {
            self.appPolicyId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["VideoPolicy"] as? String {
            self.videoPolicyShrink = value
        }
    }
}

public class ModifyAppPolicyResponseBody : Tea.TeaModel {
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

public class ModifyAppPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAppPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBrowserInstanceGroupRequest : Tea.TeaModel {
    public class BrowserConfig : Tea.TeaModel {
        public class Bookmarks : Tea.TeaModel {
            public var bookmarkFolder: String?

            public var bookmarkId: String?

            public var bookmarkName: String?

            public var bookmarkURL: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bookmarkFolder != nil {
                    map["BookmarkFolder"] = self.bookmarkFolder!
                }
                if self.bookmarkId != nil {
                    map["BookmarkId"] = self.bookmarkId!
                }
                if self.bookmarkName != nil {
                    map["BookmarkName"] = self.bookmarkName!
                }
                if self.bookmarkURL != nil {
                    map["BookmarkURL"] = self.bookmarkURL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BookmarkFolder"] as? String {
                    self.bookmarkFolder = value
                }
                if let value = dict["BookmarkId"] as? String {
                    self.bookmarkId = value
                }
                if let value = dict["BookmarkName"] as? String {
                    self.bookmarkName = value
                }
                if let value = dict["BookmarkURL"] as? String {
                    self.bookmarkURL = value
                }
            }
        }
        public var bookmarks: [ModifyBrowserInstanceGroupRequest.BrowserConfig.Bookmarks]?

        public var browserParam: String?

        public var homepage: String?

        public var removeBookmarks: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bookmarks != nil {
                var tmp : [Any] = []
                for k in self.bookmarks! {
                    tmp.append(k.toMap())
                }
                map["Bookmarks"] = tmp
            }
            if self.browserParam != nil {
                map["BrowserParam"] = self.browserParam!
            }
            if self.homepage != nil {
                map["Homepage"] = self.homepage!
            }
            if self.removeBookmarks != nil {
                map["RemoveBookmarks"] = self.removeBookmarks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bookmarks"] as? [Any?] {
                var tmp : [ModifyBrowserInstanceGroupRequest.BrowserConfig.Bookmarks] = []
                for v in value {
                    if v != nil {
                        var model = ModifyBrowserInstanceGroupRequest.BrowserConfig.Bookmarks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bookmarks = tmp
            }
            if let value = dict["BrowserParam"] as? String {
                self.browserParam = value
            }
            if let value = dict["Homepage"] as? String {
                self.homepage = value
            }
            if let value = dict["RemoveBookmarks"] as? [String] {
                self.removeBookmarks = value
            }
        }
    }
    public class Network : Tea.TeaModel {
        public class RestrictedURLs : Tea.TeaModel {
            public var restrictedURLId: String?

            public var URL: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restrictedURLId != nil {
                    map["RestrictedURLId"] = self.restrictedURLId!
                }
                if self.URL != nil {
                    map["URL"] = self.URL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RestrictedURLId"] as? String {
                    self.restrictedURLId = value
                }
                if let value = dict["URL"] as? String {
                    self.URL = value
                }
            }
        }
        public var accessRestriction: String?

        public var removeRestrictedURLIds: [String]?

        public var restrictedURLs: [ModifyBrowserInstanceGroupRequest.Network.RestrictedURLs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessRestriction != nil {
                map["AccessRestriction"] = self.accessRestriction!
            }
            if self.removeRestrictedURLIds != nil {
                map["RemoveRestrictedURLIds"] = self.removeRestrictedURLIds!
            }
            if self.restrictedURLs != nil {
                var tmp : [Any] = []
                for k in self.restrictedURLs! {
                    tmp.append(k.toMap())
                }
                map["RestrictedURLs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessRestriction"] as? String {
                self.accessRestriction = value
            }
            if let value = dict["RemoveRestrictedURLIds"] as? [String] {
                self.removeRestrictedURLIds = value
            }
            if let value = dict["RestrictedURLs"] as? [Any?] {
                var tmp : [ModifyBrowserInstanceGroupRequest.Network.RestrictedURLs] = []
                for v in value {
                    if v != nil {
                        var model = ModifyBrowserInstanceGroupRequest.Network.RestrictedURLs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.restrictedURLs = tmp
            }
        }
    }
    public class Policy : Tea.TeaModel {
        public class ClipboardPolicy : Tea.TeaModel {
            public var clipboard: String?

            public var clipboardReadLimit: Int32?

            public var clipboardScope: String?

            public var clipboardWriteLimit: Int32?

            public var fileClipboard: String?

            public var richTextClipboard: String?

            public var textClipboard: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clipboard != nil {
                    map["Clipboard"] = self.clipboard!
                }
                if self.clipboardReadLimit != nil {
                    map["ClipboardReadLimit"] = self.clipboardReadLimit!
                }
                if self.clipboardScope != nil {
                    map["ClipboardScope"] = self.clipboardScope!
                }
                if self.clipboardWriteLimit != nil {
                    map["ClipboardWriteLimit"] = self.clipboardWriteLimit!
                }
                if self.fileClipboard != nil {
                    map["FileClipboard"] = self.fileClipboard!
                }
                if self.richTextClipboard != nil {
                    map["RichTextClipboard"] = self.richTextClipboard!
                }
                if self.textClipboard != nil {
                    map["TextClipboard"] = self.textClipboard!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Clipboard"] as? String {
                    self.clipboard = value
                }
                if let value = dict["ClipboardReadLimit"] as? Int32 {
                    self.clipboardReadLimit = value
                }
                if let value = dict["ClipboardScope"] as? String {
                    self.clipboardScope = value
                }
                if let value = dict["ClipboardWriteLimit"] as? Int32 {
                    self.clipboardWriteLimit = value
                }
                if let value = dict["FileClipboard"] as? String {
                    self.fileClipboard = value
                }
                if let value = dict["RichTextClipboard"] as? String {
                    self.richTextClipboard = value
                }
                if let value = dict["TextClipboard"] as? String {
                    self.textClipboard = value
                }
            }
        }
        public class VideoPolicy : Tea.TeaModel {
            public var frameRate: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.frameRate != nil {
                    map["FrameRate"] = self.frameRate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FrameRate"] as? Int32 {
                    self.frameRate = value
                }
            }
        }
        public class WatermarkPolicy : Tea.TeaModel {
            public var watermarkSwitch: String?

            public var watermarkTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.watermarkSwitch != nil {
                    map["WatermarkSwitch"] = self.watermarkSwitch!
                }
                if self.watermarkTypes != nil {
                    map["WatermarkTypes"] = self.watermarkTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["WatermarkSwitch"] as? String {
                    self.watermarkSwitch = value
                }
                if let value = dict["WatermarkTypes"] as? [String] {
                    self.watermarkTypes = value
                }
            }
        }
        public var clipboardPolicy: ModifyBrowserInstanceGroupRequest.Policy.ClipboardPolicy?

        public var disconnectKeepSession: String?

        public var disconnectKeepSessionTime: Int32?

        public var html5FileTransfer: String?

        public var noOperationDisconnect: String?

        public var noOperationDisconnectTime: Int32?

        public var policyId: String?

        public var policyVersion: String?

        public var videoPolicy: ModifyBrowserInstanceGroupRequest.Policy.VideoPolicy?

        public var watermarkPolicy: ModifyBrowserInstanceGroupRequest.Policy.WatermarkPolicy?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.clipboardPolicy?.validate()
            try self.videoPolicy?.validate()
            try self.watermarkPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clipboardPolicy != nil {
                map["ClipboardPolicy"] = self.clipboardPolicy?.toMap()
            }
            if self.disconnectKeepSession != nil {
                map["DisconnectKeepSession"] = self.disconnectKeepSession!
            }
            if self.disconnectKeepSessionTime != nil {
                map["DisconnectKeepSessionTime"] = self.disconnectKeepSessionTime!
            }
            if self.html5FileTransfer != nil {
                map["Html5FileTransfer"] = self.html5FileTransfer!
            }
            if self.noOperationDisconnect != nil {
                map["NoOperationDisconnect"] = self.noOperationDisconnect!
            }
            if self.noOperationDisconnectTime != nil {
                map["NoOperationDisconnectTime"] = self.noOperationDisconnectTime!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyVersion != nil {
                map["PolicyVersion"] = self.policyVersion!
            }
            if self.videoPolicy != nil {
                map["VideoPolicy"] = self.videoPolicy?.toMap()
            }
            if self.watermarkPolicy != nil {
                map["WatermarkPolicy"] = self.watermarkPolicy?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClipboardPolicy"] as? [String: Any?] {
                var model = ModifyBrowserInstanceGroupRequest.Policy.ClipboardPolicy()
                model.fromMap(value)
                self.clipboardPolicy = model
            }
            if let value = dict["DisconnectKeepSession"] as? String {
                self.disconnectKeepSession = value
            }
            if let value = dict["DisconnectKeepSessionTime"] as? Int32 {
                self.disconnectKeepSessionTime = value
            }
            if let value = dict["Html5FileTransfer"] as? String {
                self.html5FileTransfer = value
            }
            if let value = dict["NoOperationDisconnect"] as? String {
                self.noOperationDisconnect = value
            }
            if let value = dict["NoOperationDisconnectTime"] as? Int32 {
                self.noOperationDisconnectTime = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["PolicyVersion"] as? String {
                self.policyVersion = value
            }
            if let value = dict["VideoPolicy"] as? [String: Any?] {
                var model = ModifyBrowserInstanceGroupRequest.Policy.VideoPolicy()
                model.fromMap(value)
                self.videoPolicy = model
            }
            if let value = dict["WatermarkPolicy"] as? [String: Any?] {
                var model = ModifyBrowserInstanceGroupRequest.Policy.WatermarkPolicy()
                model.fromMap(value)
                self.watermarkPolicy = model
            }
        }
    }
    public class Timers : Tea.TeaModel {
        public var interval: Int32?

        public var timerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.timerType != nil {
                map["TimerType"] = self.timerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Interval"] as? Int32 {
                self.interval = value
            }
            if let value = dict["TimerType"] as? String {
                self.timerType = value
            }
        }
    }
    public var browserConfig: ModifyBrowserInstanceGroupRequest.BrowserConfig?

    public var browserInstanceGroupId: String?

    public var cloudBrowserName: String?

    public var network: ModifyBrowserInstanceGroupRequest.Network?

    public var policy: ModifyBrowserInstanceGroupRequest.Policy?

    public var timers: [ModifyBrowserInstanceGroupRequest.Timers]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.browserConfig?.validate()
        try self.network?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.browserConfig != nil {
            map["BrowserConfig"] = self.browserConfig?.toMap()
        }
        if self.browserInstanceGroupId != nil {
            map["BrowserInstanceGroupId"] = self.browserInstanceGroupId!
        }
        if self.cloudBrowserName != nil {
            map["CloudBrowserName"] = self.cloudBrowserName!
        }
        if self.network != nil {
            map["Network"] = self.network?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.timers != nil {
            var tmp : [Any] = []
            for k in self.timers! {
                tmp.append(k.toMap())
            }
            map["Timers"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BrowserConfig"] as? [String: Any?] {
            var model = ModifyBrowserInstanceGroupRequest.BrowserConfig()
            model.fromMap(value)
            self.browserConfig = model
        }
        if let value = dict["BrowserInstanceGroupId"] as? String {
            self.browserInstanceGroupId = value
        }
        if let value = dict["CloudBrowserName"] as? String {
            self.cloudBrowserName = value
        }
        if let value = dict["Network"] as? [String: Any?] {
            var model = ModifyBrowserInstanceGroupRequest.Network()
            model.fromMap(value)
            self.network = model
        }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = ModifyBrowserInstanceGroupRequest.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["Timers"] as? [Any?] {
            var tmp : [ModifyBrowserInstanceGroupRequest.Timers] = []
            for v in value {
                if v != nil {
                    var model = ModifyBrowserInstanceGroupRequest.Timers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.timers = tmp
        }
    }
}

public class ModifyBrowserInstanceGroupShrinkRequest : Tea.TeaModel {
    public var browserConfigShrink: String?

    public var browserInstanceGroupId: String?

    public var cloudBrowserName: String?

    public var networkShrink: String?

    public var policyShrink: String?

    public var timersShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.browserConfigShrink != nil {
            map["BrowserConfig"] = self.browserConfigShrink!
        }
        if self.browserInstanceGroupId != nil {
            map["BrowserInstanceGroupId"] = self.browserInstanceGroupId!
        }
        if self.cloudBrowserName != nil {
            map["CloudBrowserName"] = self.cloudBrowserName!
        }
        if self.networkShrink != nil {
            map["Network"] = self.networkShrink!
        }
        if self.policyShrink != nil {
            map["Policy"] = self.policyShrink!
        }
        if self.timersShrink != nil {
            map["Timers"] = self.timersShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BrowserConfig"] as? String {
            self.browserConfigShrink = value
        }
        if let value = dict["BrowserInstanceGroupId"] as? String {
            self.browserInstanceGroupId = value
        }
        if let value = dict["CloudBrowserName"] as? String {
            self.cloudBrowserName = value
        }
        if let value = dict["Network"] as? String {
            self.networkShrink = value
        }
        if let value = dict["Policy"] as? String {
            self.policyShrink = value
        }
        if let value = dict["Timers"] as? String {
            self.timersShrink = value
        }
    }
}

public class ModifyBrowserInstanceGroupResponseBody : Tea.TeaModel {
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

public class ModifyBrowserInstanceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBrowserInstanceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyBrowserInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyNodePoolAmountRequest : Tea.TeaModel {
    public class NodePool : Tea.TeaModel {
        public var nodeAmount: Int32?

        public var prePaidNodeAmountModifyMode: String?

        public var prePaidNodeAmountModifyNodeIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeAmount != nil {
                map["NodeAmount"] = self.nodeAmount!
            }
            if self.prePaidNodeAmountModifyMode != nil {
                map["PrePaidNodeAmountModifyMode"] = self.prePaidNodeAmountModifyMode!
            }
            if self.prePaidNodeAmountModifyNodeIds != nil {
                map["PrePaidNodeAmountModifyNodeIds"] = self.prePaidNodeAmountModifyNodeIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeAmount"] as? Int32 {
                self.nodeAmount = value
            }
            if let value = dict["PrePaidNodeAmountModifyMode"] as? String {
                self.prePaidNodeAmountModifyMode = value
            }
            if let value = dict["PrePaidNodeAmountModifyNodeIds"] as? [String] {
                self.prePaidNodeAmountModifyNodeIds = value
            }
        }
    }
    public var appInstanceGroupId: String?

    public var nodePool: ModifyNodePoolAmountRequest.NodePool?

    public var productType: String?

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
        if self.nodePool != nil {
            map["NodePool"] = self.nodePool?.toMap()
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["NodePool"] as? [String: Any?] {
            var model = ModifyNodePoolAmountRequest.NodePool()
            model.fromMap(value)
            self.nodePool = model
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class ModifyNodePoolAmountShrinkRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var nodePoolShrink: String?

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
        if self.nodePoolShrink != nil {
            map["NodePool"] = self.nodePoolShrink!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["NodePool"] as? String {
            self.nodePoolShrink = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class ModifyNodePoolAmountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
        }
    }
    public var data: ModifyNodePoolAmountResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyNodePoolAmountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyNodePoolAmountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodePoolAmountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyNodePoolAmountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyNodePoolAttributeRequest : Tea.TeaModel {
    public class NodePoolStrategy : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Amount"] as? Int32 {
                        self.amount = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                }
            }
            public var recurrenceType: String?

            public var recurrenceValues: [Int32]?

            public var timerPeriods: [ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules.TimerPeriods]?

            public override init() {
                super.init()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RecurrenceType"] as? String {
                    self.recurrenceType = value
                }
                if let value = dict["RecurrenceValues"] as? [Int32] {
                    self.recurrenceValues = value
                }
                if let value = dict["TimerPeriods"] as? [Any?] {
                    var tmp : [ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules.TimerPeriods] = []
                    for v in value {
                        if v != nil {
                            var model = ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules.TimerPeriods()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.timerPeriods = tmp
                }
            }
        }
        public var maxIdleAppInstanceAmount: Int32?

        public var maxScalingAmount: Int32?

        public var nodeAmount: Int32?

        public var recurrenceSchedules: [ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules]?

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
            if self.maxIdleAppInstanceAmount != nil {
                map["MaxIdleAppInstanceAmount"] = self.maxIdleAppInstanceAmount!
            }
            if self.maxScalingAmount != nil {
                map["MaxScalingAmount"] = self.maxScalingAmount!
            }
            if self.nodeAmount != nil {
                map["NodeAmount"] = self.nodeAmount!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxIdleAppInstanceAmount"] as? Int32 {
                self.maxIdleAppInstanceAmount = value
            }
            if let value = dict["MaxScalingAmount"] as? Int32 {
                self.maxScalingAmount = value
            }
            if let value = dict["NodeAmount"] as? Int32 {
                self.nodeAmount = value
            }
            if let value = dict["RecurrenceSchedules"] as? [Any?] {
                var tmp : [ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules] = []
                for v in value {
                    if v != nil {
                        var model = ModifyNodePoolAttributeRequest.NodePoolStrategy.RecurrenceSchedules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.recurrenceSchedules = tmp
            }
            if let value = dict["ScalingDownAfterIdleMinutes"] as? Int32 {
                self.scalingDownAfterIdleMinutes = value
            }
            if let value = dict["ScalingStep"] as? Int32 {
                self.scalingStep = value
            }
            if let value = dict["ScalingUsageThreshold"] as? String {
                self.scalingUsageThreshold = value
            }
            if let value = dict["StrategyDisableDate"] as? String {
                self.strategyDisableDate = value
            }
            if let value = dict["StrategyEnableDate"] as? String {
                self.strategyEnableDate = value
            }
            if let value = dict["StrategyType"] as? String {
                self.strategyType = value
            }
            if let value = dict["WarmUp"] as? Bool {
                self.warmUp = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["NodeCapacity"] as? Int32 {
            self.nodeCapacity = value
        }
        if let value = dict["NodePoolStrategy"] as? [String: Any?] {
            var model = ModifyNodePoolAttributeRequest.NodePoolStrategy()
            model.fromMap(value)
            self.nodePoolStrategy = model
        }
        if let value = dict["PoolId"] as? String {
            self.poolId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["NodeCapacity"] as? Int32 {
            self.nodeCapacity = value
        }
        if let value = dict["NodePoolStrategy"] as? String {
            self.nodePoolStrategyShrink = value
        }
        if let value = dict["PoolId"] as? String {
            self.poolId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyNodePoolAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupExpireRemind"] as? Bool {
            self.appInstanceGroupExpireRemind = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyTenantConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWuyingServerAttributeRequest : Tea.TeaModel {
    public var password: String?

    public var wuyingServerId: String?

    public var wuyingServerName: String?

    public override init() {
        super.init()
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
        if self.wuyingServerId != nil {
            map["WuyingServerId"] = self.wuyingServerId!
        }
        if self.wuyingServerName != nil {
            map["WuyingServerName"] = self.wuyingServerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["WuyingServerId"] as? String {
            self.wuyingServerId = value
        }
        if let value = dict["WuyingServerName"] as? String {
            self.wuyingServerName = value
        }
    }
}

public class ModifyWuyingServerAttributeResponseBody : Tea.TeaModel {
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

public class ModifyWuyingServerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWuyingServerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWuyingServerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Users"] as? [String] {
            self.users = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PageListAppInstanceGroupUserResponseBody()
            model.fromMap(value)
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

    public var renewAmount: Int32?

    public var renewMode: String?

    public var renewNodes: [String]?

    public override init() {
        super.init()
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
        if self.renewAmount != nil {
            map["RenewAmount"] = self.renewAmount!
        }
        if self.renewMode != nil {
            map["RenewMode"] = self.renewMode!
        }
        if self.renewNodes != nil {
            map["RenewNodes"] = self.renewNodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["PromotionId"] as? String {
            self.promotionId = value
        }
        if let value = dict["RenewAmount"] as? Int32 {
            self.renewAmount = value
        }
        if let value = dict["RenewMode"] as? String {
            self.renewMode = value
        }
        if let value = dict["RenewNodes"] as? [String] {
            self.renewNodes = value
        }
    }
}

public class RenewAppInstanceGroupShrinkRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var autoPay: Bool?

    public var period: Int32?

    public var periodUnit: String?

    public var productType: String?

    public var promotionId: String?

    public var renewAmount: Int32?

    public var renewMode: String?

    public var renewNodesShrink: String?

    public override init() {
        super.init()
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
        if self.renewAmount != nil {
            map["RenewAmount"] = self.renewAmount!
        }
        if self.renewMode != nil {
            map["RenewMode"] = self.renewMode!
        }
        if self.renewNodesShrink != nil {
            map["RenewNodes"] = self.renewNodesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["PromotionId"] as? String {
            self.promotionId = value
        }
        if let value = dict["RenewAmount"] as? Int32 {
            self.renewAmount = value
        }
        if let value = dict["RenewMode"] as? String {
            self.renewMode = value
        }
        if let value = dict["RenewNodes"] as? String {
            self.renewNodesShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenewAppInstanceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewWuyingServerRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var period: Int32?

    public var periodUnit: String?

    public var promotionId: String?

    public var wuyingServerId: String?

    public override init() {
        super.init()
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
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.wuyingServerId != nil {
            map["WuyingServerId"] = self.wuyingServerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PromotionId"] as? String {
            self.promotionId = value
        }
        if let value = dict["WuyingServerId"] as? String {
            self.wuyingServerId = value
        }
    }
}

public class RenewWuyingServerResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RenewWuyingServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewWuyingServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenewWuyingServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartWuyingServerRequest : Tea.TeaModel {
    public var wuyingServerIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.wuyingServerIdList != nil {
            map["WuyingServerIdList"] = self.wuyingServerIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WuyingServerIdList"] as? [String] {
            self.wuyingServerIdList = value
        }
    }
}

public class RestartWuyingServerResponseBody : Tea.TeaModel {
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

public class RestartWuyingServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartWuyingServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartWuyingServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartTaskForDistributeImageRequest : Tea.TeaModel {
    public var destinationRegionList: [String]?

    public var imageId: String?

    public var productType: String?

    public var retryType: String?

    public var sourceRegion: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationRegionList != nil {
            map["DestinationRegionList"] = self.destinationRegionList!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.retryType != nil {
            map["RetryType"] = self.retryType!
        }
        if self.sourceRegion != nil {
            map["SourceRegion"] = self.sourceRegion!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationRegionList"] as? [String] {
            self.destinationRegionList = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RetryType"] as? String {
            self.retryType = value
        }
        if let value = dict["SourceRegion"] as? String {
            self.sourceRegion = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class StartTaskForDistributeImageResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
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

public class StartTaskForDistributeImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartTaskForDistributeImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartTaskForDistributeImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartWuyingServerRequest : Tea.TeaModel {
    public var wuyingServerIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.wuyingServerIdList != nil {
            map["WuyingServerIdList"] = self.wuyingServerIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WuyingServerIdList"] as? [String] {
            self.wuyingServerIdList = value
        }
    }
}

public class StartWuyingServerResponseBody : Tea.TeaModel {
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

public class StartWuyingServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartWuyingServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartWuyingServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopWuyingServerRequest : Tea.TeaModel {
    public var force: Bool?

    public var wuyingServerIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.wuyingServerIdList != nil {
            map["WuyingServerIdList"] = self.wuyingServerIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["WuyingServerIdList"] as? [String] {
            self.wuyingServerIdList = value
        }
    }
}

public class StopWuyingServerResponseBody : Tea.TeaModel {
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

public class StopWuyingServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopWuyingServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopWuyingServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagCloudResourcesRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var resourceIds: [String]?

    public var resourceType: String?

    public var tags: [TagCloudResourcesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [TagCloudResourcesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = TagCloudResourcesRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class TagCloudResourcesResponseBody : Tea.TeaModel {
    public class FailedResources : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var scope: String?

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
                if self.scope != nil {
                    map["Scope"] = self.scope!
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
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var code: String?

        public var message: String?

        public var resourceId: String?

        public var resourceType: String?

        public var tags: [TagCloudResourcesResponseBody.FailedResources.Tags]?

        public override init() {
            super.init()
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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [TagCloudResourcesResponseBody.FailedResources.Tags] = []
                for v in value {
                    if v != nil {
                        var model = TagCloudResourcesResponseBody.FailedResources.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var failedResources: [TagCloudResourcesResponseBody.FailedResources]?

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
        if self.failedResources != nil {
            var tmp : [Any] = []
            for k in self.failedResources! {
                tmp.append(k.toMap())
            }
            map["FailedResources"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailedResources"] as? [Any?] {
            var tmp : [TagCloudResourcesResponseBody.FailedResources] = []
            for v in value {
                if v != nil {
                    var model = TagCloudResourcesResponseBody.FailedResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failedResources = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class TagCloudResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagCloudResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TagCloudResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appInstancePersistentId: String?

    public var endUserId: String?

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
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appInstancePersistentId != nil {
            map["AppInstancePersistentId"] = self.appInstancePersistentId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["AppInstancePersistentId"] as? String {
            self.appInstancePersistentId = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class UnbindResponseBody : Tea.TeaModel {
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

public class UnbindResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagCloudResourcesRequest : Tea.TeaModel {
    public var resourceIds: [String]?

    public var resourceType: String?

    public var tagKeys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKeys"] as? [String] {
            self.tagKeys = value
        }
    }
}

public class UntagCloudResourcesResponseBody : Tea.TeaModel {
    public class FailedResources : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var key: String?

            public var scope: String?

            public override init() {
                super.init()
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
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
            }
        }
        public var code: String?

        public var message: String?

        public var resourceId: String?

        public var resourceType: String?

        public var tags: [UntagCloudResourcesResponseBody.FailedResources.Tags]?

        public override init() {
            super.init()
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
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [UntagCloudResourcesResponseBody.FailedResources.Tags] = []
                for v in value {
                    if v != nil {
                        var model = UntagCloudResourcesResponseBody.FailedResources.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var failedResources: [UntagCloudResourcesResponseBody.FailedResources]?

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
        if self.failedResources != nil {
            var tmp : [Any] = []
            for k in self.failedResources! {
                tmp.append(k.toMap())
            }
            map["FailedResources"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailedResources"] as? [Any?] {
            var tmp : [UntagCloudResourcesResponseBody.FailedResources] = []
            for v in value {
                if v != nil {
                    var model = UntagCloudResourcesResponseBody.FailedResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failedResources = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UntagCloudResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagCloudResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UntagCloudResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppCenterImageId"] as? String {
            self.appCenterImageId = value
        }
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAppInstanceGroupImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWuyingServerImageRequest : Tea.TeaModel {
    public var imageId: String?

    public var productType: String?

    public var wuyingServerId: String?

    public override init() {
        super.init()
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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.wuyingServerId != nil {
            map["WuyingServerId"] = self.wuyingServerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["WuyingServerId"] as? String {
            self.wuyingServerId = value
        }
    }
}

public class UpdateWuyingServerImageResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpdateWuyingServerImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWuyingServerImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateWuyingServerImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
