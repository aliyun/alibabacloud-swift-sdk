import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetConnectionTicketRequest : Tea.TeaModel {
    public var accessType: String?

    public var appId: String?

    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appPolicyId: String?

    public var appVersion: String?

    public var autoConnectInQueue: Bool?

    public var bizRegionId: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientType: String?

    public var clientVersion: String?

    public var connectionProperties: String?

    public var endUserId: String?

    public var environmentConfig: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var param: String?

    public var productType: String?

    public var resourceId: String?

    public var sessionId: String?

    public var taskId: String?

    public var tenantId: String?

    public var uuid: String?

    public override init() {
        super.init()
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
        if self.appInstanceGroupId != nil {
            map["AppInstanceGroupId"] = self.appInstanceGroupId!
        }
        if self.appInstanceId != nil {
            map["AppInstanceId"] = self.appInstanceId!
        }
        if self.appPolicyId != nil {
            map["AppPolicyId"] = self.appPolicyId!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.autoConnectInQueue != nil {
            map["AutoConnectInQueue"] = self.autoConnectInQueue!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.connectionProperties != nil {
            map["ConnectionProperties"] = self.connectionProperties!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.environmentConfig != nil {
            map["EnvironmentConfig"] = self.environmentConfig!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.param != nil {
            map["Param"] = self.param!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
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
        if let value = dict["AppInstanceGroupId"] as? String {
            self.appInstanceGroupId = value
        }
        if let value = dict["AppInstanceId"] as? String {
            self.appInstanceId = value
        }
        if let value = dict["AppPolicyId"] as? String {
            self.appPolicyId = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["AutoConnectInQueue"] as? Bool {
            self.autoConnectInQueue = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["ConnectionProperties"] as? String {
            self.connectionProperties = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["EnvironmentConfig"] as? String {
            self.environmentConfig = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["Param"] as? String {
            self.param = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class GetConnectionTicketResponseBody : Tea.TeaModel {
    public class BindQueueInfo : Tea.TeaModel {
        public var queueStatus: String?

        public var rank: Int32?

        public var readyTimeout: Int64?

        public var remainingTime: Int64?

        public var requestKey: String?

        public var targetId: String?

        public var waitTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.queueStatus != nil {
                map["QueueStatus"] = self.queueStatus!
            }
            if self.rank != nil {
                map["Rank"] = self.rank!
            }
            if self.readyTimeout != nil {
                map["ReadyTimeout"] = self.readyTimeout!
            }
            if self.remainingTime != nil {
                map["RemainingTime"] = self.remainingTime!
            }
            if self.requestKey != nil {
                map["RequestKey"] = self.requestKey!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.waitTime != nil {
                map["WaitTime"] = self.waitTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["QueueStatus"] as? String {
                self.queueStatus = value
            }
            if let value = dict["Rank"] as? Int32 {
                self.rank = value
            }
            if let value = dict["ReadyTimeout"] as? Int64 {
                self.readyTimeout = value
            }
            if let value = dict["RemainingTime"] as? Int64 {
                self.remainingTime = value
            }
            if let value = dict["RequestKey"] as? String {
                self.requestKey = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["WaitTime"] as? Int64 {
                self.waitTime = value
            }
        }
    }
    public class Policy : Tea.TeaModel {
        public var resolutionAdaptive: String?

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
            if self.resolutionAdaptive != nil {
                map["ResolutionAdaptive"] = self.resolutionAdaptive!
            }
            if self.resolutionHeight != nil {
                map["ResolutionHeight"] = self.resolutionHeight!
            }
            if self.resolutionWidth != nil {
                map["ResolutionWidth"] = self.resolutionWidth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResolutionAdaptive"] as? String {
                self.resolutionAdaptive = value
            }
            if let value = dict["ResolutionHeight"] as? Int32 {
                self.resolutionHeight = value
            }
            if let value = dict["ResolutionWidth"] as? Int32 {
                self.resolutionWidth = value
            }
        }
    }
    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var appInstancePersistentId: String?

    public var avatarId: String?

    public var bindQueueInfo: GetConnectionTicketResponseBody.BindQueueInfo?

    public var code: String?

    public var loginToken: String?

    public var message: String?

    public var nextPollIntervalMs: Int32?

    public var osType: String?

    public var policy: GetConnectionTicketResponseBody.Policy?

    public var regionId: String?

    public var requestId: String?

    public var retryTimes: Int32?

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
        try self.bindQueueInfo?.validate()
        try self.policy?.validate()
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
        if self.bindQueueInfo != nil {
            map["BindQueueInfo"] = self.bindQueueInfo?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPollIntervalMs != nil {
            map["NextPollIntervalMs"] = self.nextPollIntervalMs!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.retryTimes != nil {
            map["RetryTimes"] = self.retryTimes!
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
        if let value = dict["BindQueueInfo"] as? [String: Any?] {
            var model = GetConnectionTicketResponseBody.BindQueueInfo()
            model.fromMap(value)
            self.bindQueueInfo = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPollIntervalMs"] as? Int32 {
            self.nextPollIntervalMs = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = GetConnectionTicketResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RetryTimes"] as? Int32 {
            self.retryTimes = value
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

public class ListPublishedAppInfoRequest : Tea.TeaModel {
    public var appName: String?

    public var bizRegionId: String?

    public var categoryId: Int64?

    public var categoryType: Int64?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var orderParam: String?

    public var productType: String?

    public var sessionId: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.orderParam != nil {
            map["OrderParam"] = self.orderParam!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["CategoryType"] as? Int64 {
            self.categoryType = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OrderParam"] as? String {
            self.orderParam = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SortType"] as? String {
            self.sortType = value
        }
    }
}

public class ListPublishedAppInfoResponseBody : Tea.TeaModel {
    public class AppModels : Tea.TeaModel {
        public var appCenterImageId: String?

        public var appId: String?

        public var appName: String?

        public var appThemeColor: String?

        public var appVersion: String?

        public var appVersionName: String?

        public var authTime: String?

        public var categoryId: Int64?

        public var categoryType: Int64?

        public var iconUrl: String?

        public var isAuth: Bool?

        public var usedInSession: Bool?

        public override init() {
            super.init()
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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appThemeColor != nil {
                map["AppThemeColor"] = self.appThemeColor!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.appVersionName != nil {
                map["AppVersionName"] = self.appVersionName!
            }
            if self.authTime != nil {
                map["AuthTime"] = self.authTime!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.iconUrl != nil {
                map["IconUrl"] = self.iconUrl!
            }
            if self.isAuth != nil {
                map["IsAuth"] = self.isAuth!
            }
            if self.usedInSession != nil {
                map["UsedInSession"] = self.usedInSession!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppCenterImageId"] as? String {
                self.appCenterImageId = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AppThemeColor"] as? String {
                self.appThemeColor = value
            }
            if let value = dict["AppVersion"] as? String {
                self.appVersion = value
            }
            if let value = dict["AppVersionName"] as? String {
                self.appVersionName = value
            }
            if let value = dict["AuthTime"] as? String {
                self.authTime = value
            }
            if let value = dict["CategoryId"] as? Int64 {
                self.categoryId = value
            }
            if let value = dict["CategoryType"] as? Int64 {
                self.categoryType = value
            }
            if let value = dict["IconUrl"] as? String {
                self.iconUrl = value
            }
            if let value = dict["IsAuth"] as? Bool {
                self.isAuth = value
            }
            if let value = dict["UsedInSession"] as? Bool {
                self.usedInSession = value
            }
        }
    }
    public var appModels: [ListPublishedAppInfoResponseBody.AppModels]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appModels != nil {
            var tmp : [Any] = []
            for k in self.appModels! {
                tmp.append(k.toMap())
            }
            map["AppModels"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppModels"] as? [Any?] {
            var tmp : [ListPublishedAppInfoResponseBody.AppModels] = []
            for v in value {
                if v != nil {
                    var model = ListPublishedAppInfoResponseBody.AppModels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.appModels = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPublishedAppInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublishedAppInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPublishedAppInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRunningAppsRequest : Tea.TeaModel {
    public var bizRegionId: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var productType: String?

    public var sessionId: String?

    public var tenantId: String?

    public var uuid: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class ListRunningAppsResponseBody : Tea.TeaModel {
    public class RunningCloudApps : Tea.TeaModel {
        public var appId: String?

        public var appInstanceGroupId: String?

        public var appInstanceId: String?

        public var appName: String?

        public var appVersion: String?

        public var appVersionName: String?

        public var duration: Int64?

        public var iconUrl: String?

        public var osType: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appInstanceGroupId != nil {
                map["AppInstanceGroupId"] = self.appInstanceGroupId!
            }
            if self.appInstanceId != nil {
                map["AppInstanceId"] = self.appInstanceId!
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
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.iconUrl != nil {
                map["IconUrl"] = self.iconUrl!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
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
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AppVersion"] as? String {
                self.appVersion = value
            }
            if let value = dict["AppVersionName"] as? String {
                self.appVersionName = value
            }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["IconUrl"] as? String {
                self.iconUrl = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var requestId: String?

    public var runningCloudApps: [ListRunningAppsResponseBody.RunningCloudApps]?

    public override init() {
        super.init()
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
        if self.runningCloudApps != nil {
            var tmp : [Any] = []
            for k in self.runningCloudApps! {
                tmp.append(k.toMap())
            }
            map["RunningCloudApps"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RunningCloudApps"] as? [Any?] {
            var tmp : [ListRunningAppsResponseBody.RunningCloudApps] = []
            for v in value {
                if v != nil {
                    var model = ListRunningAppsResponseBody.RunningCloudApps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.runningCloudApps = tmp
        }
    }
}

public class ListRunningAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRunningAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRunningAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetAppResourcesRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var bizRegionId: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var productType: String?

    public var resourceIds: [String]?

    public var sessionId: String?

    public var uuid: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
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
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class ResetAppResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class ResetAppResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAppResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetAppResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartAppResourcesRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var bizRegionId: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var productType: String?

    public var resourceIds: [String]?

    public var sessionId: String?

    public var uuid: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
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
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class RestartAppResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class RestartAppResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartAppResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartAppResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartAppResourcesRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var bizRegionId: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var productType: String?

    public var resourceIds: [String]?

    public var sessionId: String?

    public var uuid: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
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
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class StartAppResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class StartAppResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAppResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartAppResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopAppRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var apiType: String?

    public var appId: String?

    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var bizRegionId: String?

    public var clientChannel: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var forceStop: Bool?

    public var idpId: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var productType: String?

    public var regionId: String?

    public var sessionId: String?

    public var uuid: String?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
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
        if self.bizRegionId != nil {
            map["BizRegionId"] = self.bizRegionId!
        }
        if self.clientChannel != nil {
            map["ClientChannel"] = self.clientChannel!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.forceStop != nil {
            map["ForceStop"] = self.forceStop!
        }
        if self.idpId != nil {
            map["IdpId"] = self.idpId!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        if self.wyId != nil {
            map["WyId"] = self.wyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["ApiType"] as? String {
            self.apiType = value
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
        if let value = dict["BizRegionId"] as? String {
            self.bizRegionId = value
        }
        if let value = dict["ClientChannel"] as? String {
            self.clientChannel = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["ForceStop"] as? Bool {
            self.forceStop = value
        }
        if let value = dict["IdpId"] as? String {
            self.idpId = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
        if let value = dict["WyId"] as? String {
            self.wyId = value
        }
    }
}

public class StopAppResponseBody : Tea.TeaModel {
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

public class StopAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopAppResourcesRequest : Tea.TeaModel {
    public var appInstanceGroupId: String?

    public var bizRegionId: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var productType: String?

    public var resourceIds: [String]?

    public var sessionId: String?

    public var uuid: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
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
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class StopAppResourcesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class StopAppResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAppResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopAppResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindRequest : Tea.TeaModel {
    public var appId: String?

    public var appInstanceGroupId: String?

    public var appInstanceId: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var productType: String?

    public var sessionId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
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
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TenantId"] as? Int64 {
            self.tenantId = value
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
