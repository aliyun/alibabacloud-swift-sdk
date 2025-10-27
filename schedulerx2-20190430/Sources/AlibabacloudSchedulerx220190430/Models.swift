import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchDeleteJobsRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobIdList: [Int64]?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobIdList != nil {
            map["JobIdList"] = self.jobIdList!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobIdList"] as? [Int64] {
            self.jobIdList = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class BatchDeleteJobsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class BatchDeleteJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteJobsResponseBody?

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
            var model = BatchDeleteJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchDeleteRouteStrategyRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobIdList: [Int64]?

    public var namespace: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobIdList != nil {
            map["JobIdList"] = self.jobIdList!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobIdList"] as? [Int64] {
            self.jobIdList = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class BatchDeleteRouteStrategyResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class BatchDeleteRouteStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteRouteStrategyResponseBody?

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
            var model = BatchDeleteRouteStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchDisableJobsRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobIdList: [Int64]?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobIdList != nil {
            map["JobIdList"] = self.jobIdList!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobIdList"] as? [Int64] {
            self.jobIdList = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class BatchDisableJobsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class BatchDisableJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDisableJobsResponseBody?

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
            var model = BatchDisableJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchEnableJobsRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobIdList: [Int64]?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobIdList != nil {
            map["JobIdList"] = self.jobIdList!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobIdList"] as? [Int64] {
            self.jobIdList = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class BatchEnableJobsResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class BatchEnableJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchEnableJobsResponseBody?

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
            var model = BatchEnableJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppGroupRequest : Tea.TeaModel {
    public var appKey: String?

    public var appName: String?

    public var appType: Int32?

    public var appVersion: Int32?

    public var description_: String?

    public var enableLog: Bool?

    public var groupId: String?

    public var maxJobs: Int32?

    public var monitorConfigJson: String?

    public var monitorContactsJson: String?

    public var namespace: String?

    public var namespaceName: String?

    public var namespaceSource: String?

    public var notificationPolicyName: String?

    public var regionId: String?

    public var scheduleBusyWorkers: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableLog != nil {
            map["EnableLog"] = self.enableLog!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.maxJobs != nil {
            map["MaxJobs"] = self.maxJobs!
        }
        if self.monitorConfigJson != nil {
            map["MonitorConfigJson"] = self.monitorConfigJson!
        }
        if self.monitorContactsJson != nil {
            map["MonitorContactsJson"] = self.monitorContactsJson!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.notificationPolicyName != nil {
            map["NotificationPolicyName"] = self.notificationPolicyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scheduleBusyWorkers != nil {
            map["ScheduleBusyWorkers"] = self.scheduleBusyWorkers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppType"] as? Int32 {
            self.appType = value
        }
        if let value = dict["AppVersion"] as? Int32 {
            self.appVersion = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableLog"] as? Bool {
            self.enableLog = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["MaxJobs"] as? Int32 {
            self.maxJobs = value
        }
        if let value = dict["MonitorConfigJson"] as? String {
            self.monitorConfigJson = value
        }
        if let value = dict["MonitorContactsJson"] as? String {
            self.monitorContactsJson = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["NotificationPolicyName"] as? String {
            self.notificationPolicyName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ScheduleBusyWorkers"] as? Bool {
            self.scheduleBusyWorkers = value
        }
    }
}

public class CreateAppGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appGroupId: Int64?

        public var appKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appGroupId != nil {
                map["AppGroupId"] = self.appGroupId!
            }
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppGroupId"] as? Int64 {
                self.appGroupId = value
            }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
        }
    }
    public var code: Int32?

    public var data: CreateAppGroupResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateAppGroupResponseBody.Data()
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

public class CreateAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppGroupResponseBody?

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
            var model = CreateAppGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
    public class ContactInfo : Tea.TeaModel {
        public var ding: String?

        public var userMail: String?

        public var userName: String?

        public var userPhone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ding != nil {
                map["Ding"] = self.ding!
            }
            if self.userMail != nil {
                map["UserMail"] = self.userMail!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userPhone != nil {
                map["UserPhone"] = self.userPhone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ding"] as? String {
                self.ding = value
            }
            if let value = dict["UserMail"] as? String {
                self.userMail = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["UserPhone"] as? String {
                self.userPhone = value
            }
        }
    }
    public var attemptInterval: Int32?

    public var calendar: String?

    public var className: String?

    public var consumerSize: Int32?

    public var contactInfo: [CreateJobRequest.ContactInfo]?

    public var content: String?

    public var dataOffset: Int32?

    public var description_: String?

    public var dispatcherSize: Int32?

    public var executeMode: String?

    public var failEnable: Bool?

    public var failTimes: Int32?

    public var groupId: String?

    public var jobType: String?

    public var maxAttempt: Int32?

    public var maxConcurrency: Int32?

    public var missWorkerEnable: Bool?

    public var name: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var pageSize: Int32?

    public var parameters: String?

    public var priority: Int32?

    public var queueSize: Int32?

    public var regionId: String?

    public var sendChannel: String?

    public var status: Int32?

    public var successNoticeEnable: Bool?

    public var taskAttemptInterval: Int32?

    public var taskMaxAttempt: Int32?

    public var timeExpression: String?

    public var timeType: Int32?

    public var timeout: Int64?

    public var timeoutEnable: Bool?

    public var timeoutKillEnable: Bool?

    public var timezone: String?

    public var XAttrs: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attemptInterval != nil {
            map["AttemptInterval"] = self.attemptInterval!
        }
        if self.calendar != nil {
            map["Calendar"] = self.calendar!
        }
        if self.className != nil {
            map["ClassName"] = self.className!
        }
        if self.consumerSize != nil {
            map["ConsumerSize"] = self.consumerSize!
        }
        if self.contactInfo != nil {
            var tmp : [Any] = []
            for k in self.contactInfo! {
                tmp.append(k.toMap())
            }
            map["ContactInfo"] = tmp
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.dataOffset != nil {
            map["DataOffset"] = self.dataOffset!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dispatcherSize != nil {
            map["DispatcherSize"] = self.dispatcherSize!
        }
        if self.executeMode != nil {
            map["ExecuteMode"] = self.executeMode!
        }
        if self.failEnable != nil {
            map["FailEnable"] = self.failEnable!
        }
        if self.failTimes != nil {
            map["FailTimes"] = self.failTimes!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.maxAttempt != nil {
            map["MaxAttempt"] = self.maxAttempt!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.missWorkerEnable != nil {
            map["MissWorkerEnable"] = self.missWorkerEnable!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.queueSize != nil {
            map["QueueSize"] = self.queueSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sendChannel != nil {
            map["SendChannel"] = self.sendChannel!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.successNoticeEnable != nil {
            map["SuccessNoticeEnable"] = self.successNoticeEnable!
        }
        if self.taskAttemptInterval != nil {
            map["TaskAttemptInterval"] = self.taskAttemptInterval!
        }
        if self.taskMaxAttempt != nil {
            map["TaskMaxAttempt"] = self.taskMaxAttempt!
        }
        if self.timeExpression != nil {
            map["TimeExpression"] = self.timeExpression!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.timeoutEnable != nil {
            map["TimeoutEnable"] = self.timeoutEnable!
        }
        if self.timeoutKillEnable != nil {
            map["TimeoutKillEnable"] = self.timeoutKillEnable!
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        if self.XAttrs != nil {
            map["XAttrs"] = self.XAttrs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttemptInterval"] as? Int32 {
            self.attemptInterval = value
        }
        if let value = dict["Calendar"] as? String {
            self.calendar = value
        }
        if let value = dict["ClassName"] as? String {
            self.className = value
        }
        if let value = dict["ConsumerSize"] as? Int32 {
            self.consumerSize = value
        }
        if let value = dict["ContactInfo"] as? [Any?] {
            var tmp : [CreateJobRequest.ContactInfo] = []
            for v in value {
                if v != nil {
                    var model = CreateJobRequest.ContactInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contactInfo = tmp
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DataOffset"] as? Int32 {
            self.dataOffset = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DispatcherSize"] as? Int32 {
            self.dispatcherSize = value
        }
        if let value = dict["ExecuteMode"] as? String {
            self.executeMode = value
        }
        if let value = dict["FailEnable"] as? Bool {
            self.failEnable = value
        }
        if let value = dict["FailTimes"] as? Int32 {
            self.failTimes = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["MaxAttempt"] as? Int32 {
            self.maxAttempt = value
        }
        if let value = dict["MaxConcurrency"] as? Int32 {
            self.maxConcurrency = value
        }
        if let value = dict["MissWorkerEnable"] as? Bool {
            self.missWorkerEnable = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["QueueSize"] as? Int32 {
            self.queueSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SendChannel"] as? String {
            self.sendChannel = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["SuccessNoticeEnable"] as? Bool {
            self.successNoticeEnable = value
        }
        if let value = dict["TaskAttemptInterval"] as? Int32 {
            self.taskAttemptInterval = value
        }
        if let value = dict["TaskMaxAttempt"] as? Int32 {
            self.taskMaxAttempt = value
        }
        if let value = dict["TimeExpression"] as? String {
            self.timeExpression = value
        }
        if let value = dict["TimeType"] as? Int32 {
            self.timeType = value
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
        if let value = dict["TimeoutEnable"] as? Bool {
            self.timeoutEnable = value
        }
        if let value = dict["TimeoutKillEnable"] as? Bool {
            self.timeoutKillEnable = value
        }
        if let value = dict["Timezone"] as? String {
            self.timezone = value
        }
        if let value = dict["XAttrs"] as? String {
            self.XAttrs = value
        }
    }
}

public class CreateJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobId"] as? Int64 {
                self.jobId = value
            }
        }
    }
    public var code: Int32?

    public var data: CreateJobResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateJobResponseBody.Data()
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

public class CreateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobResponseBody?

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
            var model = CreateJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNamespaceRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var uid: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Uid"] as? String {
            self.uid = value
        }
    }
}

public class CreateNamespaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var namespaceUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespaceUid != nil {
                map["NamespaceUid"] = self.namespaceUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NamespaceUid"] as? String {
                self.namespaceUid = value
            }
        }
    }
    public var code: Int32?

    public var data: CreateNamespaceResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateNamespaceResponseBody.Data()
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

public class CreateNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNamespaceResponseBody?

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
            var model = CreateNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRouteStrategyRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var name: String?

    public var namespace: String?

    public var regionId: String?

    public var status: Int32?

    public var strategyContent: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.strategyContent != nil {
            map["StrategyContent"] = self.strategyContent!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["StrategyContent"] as? String {
            self.strategyContent = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
    }
}

public class CreateRouteStrategyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
        }
    }
    public var code: Int32?

    public var data: CreateRouteStrategyResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateRouteStrategyResponseBody.Data()
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

public class CreateRouteStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRouteStrategyResponseBody?

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
            var model = CreateRouteStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkflowRequest : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var maxConcurrency: Int32?

    public var name: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var timeExpression: String?

    public var timeType: Int32?

    public var timezone: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.timeExpression != nil {
            map["TimeExpression"] = self.timeExpression!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["MaxConcurrency"] as? Int32 {
            self.maxConcurrency = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TimeExpression"] as? String {
            self.timeExpression = value
        }
        if let value = dict["TimeType"] as? Int32 {
            self.timeType = value
        }
        if let value = dict["Timezone"] as? String {
            self.timezone = value
        }
    }
}

public class CreateWorkflowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var workflowId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.workflowId != nil {
                map["WorkflowId"] = self.workflowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WorkflowId"] as? Int64 {
                self.workflowId = value
            }
        }
    }
    public var code: String?

    public var data: CreateWorkflowResponseBody.Data?

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
            var model = CreateWorkflowResponseBody.Data()
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

public class CreateWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkflowResponseBody?

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
            var model = CreateWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAppGroupRequest : Tea.TeaModel {
    public var deleteJobs: Bool?

    public var groupId: String?

    public var namespace: String?

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
        if self.deleteJobs != nil {
            map["DeleteJobs"] = self.deleteJobs!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteJobs"] as? Bool {
            self.deleteJobs = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteAppGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class DeleteAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppGroupResponseBody?

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
            var model = DeleteAppGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteJobRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class DeleteJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobResponseBody?

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
            var model = DeleteJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNamespaceRequest : Tea.TeaModel {
    public var namespace: String?

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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteNamespaceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class DeleteNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNamespaceResponseBody?

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
            var model = DeleteNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRouteStrategyRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteRouteStrategyResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class DeleteRouteStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRouteStrategyResponseBody?

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
            var model = DeleteRouteStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWorkflowRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WorkflowId"] as? Int64 {
            self.workflowId = value
        }
    }
}

public class DeleteWorkflowResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class DeleteWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkflowResponseBody?

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
            var model = DeleteWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

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
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["RegionEndpoint"] as? String {
                self.regionEndpoint = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DesignateWorkersRequest : Tea.TeaModel {
    public var designateType: Int32?

    public var groupId: String?

    public var jobId: Int64?

    public var labels: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var transferable: Bool?

    public var workers: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.designateType != nil {
            map["DesignateType"] = self.designateType!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.transferable != nil {
            map["Transferable"] = self.transferable!
        }
        if self.workers != nil {
            map["Workers"] = self.workers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DesignateType"] as? Int32 {
            self.designateType = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Transferable"] as? Bool {
            self.transferable = value
        }
        if let value = dict["Workers"] as? String {
            self.workers = value
        }
    }
}

public class DesignateWorkersResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class DesignateWorkersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DesignateWorkersResponseBody?

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
            var model = DesignateWorkersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableJobRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DisableJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class DisableJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableJobResponseBody?

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
            var model = DisableJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableWorkflowRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WorkflowId"] as? Int64 {
            self.workflowId = value
        }
    }
}

public class DisableWorkflowResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class DisableWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableWorkflowResponseBody?

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
            var model = DisableWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableJobRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class EnableJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class EnableJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableJobResponseBody?

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
            var model = EnableJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableWorkflowRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WorkflowId"] as? Int64 {
            self.workflowId = value
        }
    }
}

public class EnableWorkflowResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class EnableWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableWorkflowResponseBody?

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
            var model = EnableWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteJobRequest : Tea.TeaModel {
    public var checkJobStatus: Bool?

    public var designateType: Int32?

    public var groupId: String?

    public var instanceParameters: String?

    public var jobId: Int64?

    public var label: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var worker: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkJobStatus != nil {
            map["CheckJobStatus"] = self.checkJobStatus!
        }
        if self.designateType != nil {
            map["DesignateType"] = self.designateType!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceParameters != nil {
            map["InstanceParameters"] = self.instanceParameters!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.worker != nil {
            map["Worker"] = self.worker!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckJobStatus"] as? Bool {
            self.checkJobStatus = value
        }
        if let value = dict["DesignateType"] as? Int32 {
            self.designateType = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceParameters"] as? String {
            self.instanceParameters = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Worker"] as? String {
            self.worker = value
        }
    }
}

public class ExecuteJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobInstanceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobInstanceId != nil {
                map["JobInstanceId"] = self.jobInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobInstanceId"] as? Int64 {
                self.jobInstanceId = value
            }
        }
    }
    public var code: Int32?

    public var data: ExecuteJobResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ExecuteJobResponseBody.Data()
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

public class ExecuteJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteJobResponseBody?

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
            var model = ExecuteJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteWorkflowRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceParameters: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceParameters != nil {
            map["InstanceParameters"] = self.instanceParameters!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceParameters"] as? String {
            self.instanceParameters = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WorkflowId"] as? Int64 {
            self.workflowId = value
        }
    }
}

public class ExecuteWorkflowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var wfInstanceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wfInstanceId != nil {
                map["WfInstanceId"] = self.wfInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WfInstanceId"] as? Int64 {
                self.wfInstanceId = value
            }
        }
    }
    public var code: Int32?

    public var data: ExecuteWorkflowResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ExecuteWorkflowResponseBody.Data()
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

public class ExecuteWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteWorkflowResponseBody?

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
            var model = ExecuteWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetAppGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appKey: String?

        public var appName: String?

        public var appVersion: String?

        public var curJobs: Int32?

        public var description_: String?

        public var groupId: String?

        public var maxJobs: Int32?

        public var monitorConfigJson: String?

        public var monitorContactsJson: String?

        public var namespace: String?

        public var notificationPolicyName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.curJobs != nil {
                map["CurJobs"] = self.curJobs!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.maxJobs != nil {
                map["MaxJobs"] = self.maxJobs!
            }
            if self.monitorConfigJson != nil {
                map["MonitorConfigJson"] = self.monitorConfigJson!
            }
            if self.monitorContactsJson != nil {
                map["MonitorContactsJson"] = self.monitorContactsJson!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.notificationPolicyName != nil {
                map["NotificationPolicyName"] = self.notificationPolicyName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppKey"] as? String {
                self.appKey = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AppVersion"] as? String {
                self.appVersion = value
            }
            if let value = dict["CurJobs"] as? Int32 {
                self.curJobs = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["MaxJobs"] as? Int32 {
                self.maxJobs = value
            }
            if let value = dict["MonitorConfigJson"] as? String {
                self.monitorConfigJson = value
            }
            if let value = dict["MonitorContactsJson"] as? String {
                self.monitorContactsJson = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["NotificationPolicyName"] as? String {
                self.notificationPolicyName = value
            }
        }
    }
    public var code: Int32?

    public var data: GetAppGroupResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAppGroupResponseBody.Data()
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

public class GetAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppGroupResponseBody?

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
            var model = GetAppGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobInfoRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var jobName: String?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetJobInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobConfigInfo : Tea.TeaModel {
            public class JobMonitorInfo : Tea.TeaModel {
                public class ContactInfo : Tea.TeaModel {
                    public var ding: String?

                    public var userMail: String?

                    public var userName: String?

                    public var userPhone: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.ding != nil {
                            map["Ding"] = self.ding!
                        }
                        if self.userMail != nil {
                            map["UserMail"] = self.userMail!
                        }
                        if self.userName != nil {
                            map["UserName"] = self.userName!
                        }
                        if self.userPhone != nil {
                            map["UserPhone"] = self.userPhone!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Ding"] as? String {
                            self.ding = value
                        }
                        if let value = dict["UserMail"] as? String {
                            self.userMail = value
                        }
                        if let value = dict["UserName"] as? String {
                            self.userName = value
                        }
                        if let value = dict["UserPhone"] as? String {
                            self.userPhone = value
                        }
                    }
                }
                public class MonitorConfig : Tea.TeaModel {
                    public var failEnable: Bool?

                    public var missWorkerEnable: Bool?

                    public var sendChannel: String?

                    public var timeout: Int64?

                    public var timeoutEnable: Bool?

                    public var timeoutKillEnable: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failEnable != nil {
                            map["FailEnable"] = self.failEnable!
                        }
                        if self.missWorkerEnable != nil {
                            map["MissWorkerEnable"] = self.missWorkerEnable!
                        }
                        if self.sendChannel != nil {
                            map["SendChannel"] = self.sendChannel!
                        }
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        if self.timeoutEnable != nil {
                            map["TimeoutEnable"] = self.timeoutEnable!
                        }
                        if self.timeoutKillEnable != nil {
                            map["TimeoutKillEnable"] = self.timeoutKillEnable!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FailEnable"] as? Bool {
                            self.failEnable = value
                        }
                        if let value = dict["MissWorkerEnable"] as? Bool {
                            self.missWorkerEnable = value
                        }
                        if let value = dict["SendChannel"] as? String {
                            self.sendChannel = value
                        }
                        if let value = dict["Timeout"] as? Int64 {
                            self.timeout = value
                        }
                        if let value = dict["TimeoutEnable"] as? Bool {
                            self.timeoutEnable = value
                        }
                        if let value = dict["TimeoutKillEnable"] as? Bool {
                            self.timeoutKillEnable = value
                        }
                    }
                }
                public var contactInfo: [GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.ContactInfo]?

                public var monitorConfig: GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.MonitorConfig?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.monitorConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.contactInfo != nil {
                        var tmp : [Any] = []
                        for k in self.contactInfo! {
                            tmp.append(k.toMap())
                        }
                        map["ContactInfo"] = tmp
                    }
                    if self.monitorConfig != nil {
                        map["MonitorConfig"] = self.monitorConfig?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ContactInfo"] as? [Any?] {
                        var tmp : [GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.ContactInfo] = []
                        for v in value {
                            if v != nil {
                                var model = GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.ContactInfo()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.contactInfo = tmp
                    }
                    if let value = dict["MonitorConfig"] as? [String: Any?] {
                        var model = GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo.MonitorConfig()
                        model.fromMap(value)
                        self.monitorConfig = model
                    }
                }
            }
            public class MapTaskXAttrs : Tea.TeaModel {
                public var consumerSize: Int32?

                public var dispatcherSize: Int32?

                public var pageSize: Int32?

                public var queueSize: Int32?

                public var taskAttemptInterval: Int32?

                public var taskMaxAttempt: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.consumerSize != nil {
                        map["ConsumerSize"] = self.consumerSize!
                    }
                    if self.dispatcherSize != nil {
                        map["DispatcherSize"] = self.dispatcherSize!
                    }
                    if self.pageSize != nil {
                        map["PageSize"] = self.pageSize!
                    }
                    if self.queueSize != nil {
                        map["QueueSize"] = self.queueSize!
                    }
                    if self.taskAttemptInterval != nil {
                        map["TaskAttemptInterval"] = self.taskAttemptInterval!
                    }
                    if self.taskMaxAttempt != nil {
                        map["TaskMaxAttempt"] = self.taskMaxAttempt!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConsumerSize"] as? Int32 {
                        self.consumerSize = value
                    }
                    if let value = dict["DispatcherSize"] as? Int32 {
                        self.dispatcherSize = value
                    }
                    if let value = dict["PageSize"] as? Int32 {
                        self.pageSize = value
                    }
                    if let value = dict["QueueSize"] as? Int32 {
                        self.queueSize = value
                    }
                    if let value = dict["TaskAttemptInterval"] as? Int32 {
                        self.taskAttemptInterval = value
                    }
                    if let value = dict["TaskMaxAttempt"] as? Int32 {
                        self.taskMaxAttempt = value
                    }
                }
            }
            public class TimeConfig : Tea.TeaModel {
                public var calendar: String?

                public var dataOffset: Int32?

                public var timeExpression: String?

                public var timeType: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.calendar != nil {
                        map["Calendar"] = self.calendar!
                    }
                    if self.dataOffset != nil {
                        map["DataOffset"] = self.dataOffset!
                    }
                    if self.timeExpression != nil {
                        map["TimeExpression"] = self.timeExpression!
                    }
                    if self.timeType != nil {
                        map["TimeType"] = self.timeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Calendar"] as? String {
                        self.calendar = value
                    }
                    if let value = dict["DataOffset"] as? Int32 {
                        self.dataOffset = value
                    }
                    if let value = dict["TimeExpression"] as? String {
                        self.timeExpression = value
                    }
                    if let value = dict["TimeType"] as? Int32 {
                        self.timeType = value
                    }
                }
            }
            public var attemptInterval: Int32?

            public var className: String?

            public var content: String?

            public var description_: String?

            public var executeMode: String?

            public var jarUrl: String?

            public var jobId: Int64?

            public var jobMonitorInfo: GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo?

            public var jobType: String?

            public var mapTaskXAttrs: GetJobInfoResponseBody.Data.JobConfigInfo.MapTaskXAttrs?

            public var maxAttempt: Int32?

            public var maxConcurrency: String?

            public var name: String?

            public var parameters: String?

            public var status: Int32?

            public var timeConfig: GetJobInfoResponseBody.Data.JobConfigInfo.TimeConfig?

            public var XAttrs: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.jobMonitorInfo?.validate()
                try self.mapTaskXAttrs?.validate()
                try self.timeConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attemptInterval != nil {
                    map["AttemptInterval"] = self.attemptInterval!
                }
                if self.className != nil {
                    map["ClassName"] = self.className!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.executeMode != nil {
                    map["ExecuteMode"] = self.executeMode!
                }
                if self.jarUrl != nil {
                    map["JarUrl"] = self.jarUrl!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobMonitorInfo != nil {
                    map["JobMonitorInfo"] = self.jobMonitorInfo?.toMap()
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.mapTaskXAttrs != nil {
                    map["MapTaskXAttrs"] = self.mapTaskXAttrs?.toMap()
                }
                if self.maxAttempt != nil {
                    map["MaxAttempt"] = self.maxAttempt!
                }
                if self.maxConcurrency != nil {
                    map["MaxConcurrency"] = self.maxConcurrency!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeConfig != nil {
                    map["TimeConfig"] = self.timeConfig?.toMap()
                }
                if self.XAttrs != nil {
                    map["XAttrs"] = self.XAttrs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttemptInterval"] as? Int32 {
                    self.attemptInterval = value
                }
                if let value = dict["ClassName"] as? String {
                    self.className = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ExecuteMode"] as? String {
                    self.executeMode = value
                }
                if let value = dict["JarUrl"] as? String {
                    self.jarUrl = value
                }
                if let value = dict["JobId"] as? Int64 {
                    self.jobId = value
                }
                if let value = dict["JobMonitorInfo"] as? [String: Any?] {
                    var model = GetJobInfoResponseBody.Data.JobConfigInfo.JobMonitorInfo()
                    model.fromMap(value)
                    self.jobMonitorInfo = model
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["MapTaskXAttrs"] as? [String: Any?] {
                    var model = GetJobInfoResponseBody.Data.JobConfigInfo.MapTaskXAttrs()
                    model.fromMap(value)
                    self.mapTaskXAttrs = model
                }
                if let value = dict["MaxAttempt"] as? Int32 {
                    self.maxAttempt = value
                }
                if let value = dict["MaxConcurrency"] as? String {
                    self.maxConcurrency = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Parameters"] as? String {
                    self.parameters = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["TimeConfig"] as? [String: Any?] {
                    var model = GetJobInfoResponseBody.Data.JobConfigInfo.TimeConfig()
                    model.fromMap(value)
                    self.timeConfig = model
                }
                if let value = dict["XAttrs"] as? String {
                    self.XAttrs = value
                }
            }
        }
        public var jobConfigInfo: GetJobInfoResponseBody.Data.JobConfigInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobConfigInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobConfigInfo != nil {
                map["JobConfigInfo"] = self.jobConfigInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobConfigInfo"] as? [String: Any?] {
                var model = GetJobInfoResponseBody.Data.JobConfigInfo()
                model.fromMap(value)
                self.jobConfigInfo = model
            }
        }
    }
    public var code: Int32?

    public var data: GetJobInfoResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetJobInfoResponseBody.Data()
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

public class GetJobInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobInfoResponseBody?

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
            var model = GetJobInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var jobInstanceId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobInstanceId != nil {
            map["JobInstanceId"] = self.jobInstanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["JobInstanceId"] as? Int64 {
            self.jobInstanceId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetJobInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobInstanceDetail : Tea.TeaModel {
            public var dataTime: String?

            public var endTime: String?

            public var executor: String?

            public var instanceId: Int64?

            public var jobId: Int64?

            public var jobName: String?

            public var parameters: String?

            public var progress: String?

            public var result: String?

            public var scheduleTime: String?

            public var startTime: String?

            public var status: Int32?

            public var timeType: Int32?

            public var traceId: String?

            public var triggerType: Int32?

            public var workAddr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataTime != nil {
                    map["DataTime"] = self.dataTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.executor != nil {
                    map["Executor"] = self.executor!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobName != nil {
                    map["JobName"] = self.jobName!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeType != nil {
                    map["TimeType"] = self.timeType!
                }
                if self.traceId != nil {
                    map["TraceId"] = self.traceId!
                }
                if self.triggerType != nil {
                    map["TriggerType"] = self.triggerType!
                }
                if self.workAddr != nil {
                    map["WorkAddr"] = self.workAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataTime"] as? String {
                    self.dataTime = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Executor"] as? String {
                    self.executor = value
                }
                if let value = dict["InstanceId"] as? Int64 {
                    self.instanceId = value
                }
                if let value = dict["JobId"] as? Int64 {
                    self.jobId = value
                }
                if let value = dict["JobName"] as? String {
                    self.jobName = value
                }
                if let value = dict["Parameters"] as? String {
                    self.parameters = value
                }
                if let value = dict["Progress"] as? String {
                    self.progress = value
                }
                if let value = dict["Result"] as? String {
                    self.result = value
                }
                if let value = dict["ScheduleTime"] as? String {
                    self.scheduleTime = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["TimeType"] as? Int32 {
                    self.timeType = value
                }
                if let value = dict["TraceId"] as? String {
                    self.traceId = value
                }
                if let value = dict["TriggerType"] as? Int32 {
                    self.triggerType = value
                }
                if let value = dict["WorkAddr"] as? String {
                    self.workAddr = value
                }
            }
        }
        public var jobInstanceDetail: GetJobInstanceResponseBody.Data.JobInstanceDetail?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobInstanceDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobInstanceDetail != nil {
                map["JobInstanceDetail"] = self.jobInstanceDetail?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobInstanceDetail"] as? [String: Any?] {
                var model = GetJobInstanceResponseBody.Data.JobInstanceDetail()
                model.fromMap(value)
                self.jobInstanceDetail = model
            }
        }
    }
    public var code: Int32?

    public var data: GetJobInstanceResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetJobInstanceResponseBody.Data()
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

public class GetJobInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobInstanceResponseBody?

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
            var model = GetJobInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobInstanceListRequest : Tea.TeaModel {
    public var endTimestamp: Int64?

    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTimestamp: Int64?

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
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTimestamp"] as? Int64 {
            self.endTimestamp = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class GetJobInstanceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobInstanceDetails : Tea.TeaModel {
            public var dataTime: String?

            public var endTime: String?

            public var executor: String?

            public var instanceId: Int64?

            public var jobId: Int64?

            public var progress: String?

            public var result: String?

            public var scheduleTime: String?

            public var startTime: String?

            public var status: Int32?

            public var timeType: Int32?

            public var triggerType: Int32?

            public var workAddr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataTime != nil {
                    map["DataTime"] = self.dataTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.executor != nil {
                    map["Executor"] = self.executor!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeType != nil {
                    map["TimeType"] = self.timeType!
                }
                if self.triggerType != nil {
                    map["TriggerType"] = self.triggerType!
                }
                if self.workAddr != nil {
                    map["WorkAddr"] = self.workAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataTime"] as? String {
                    self.dataTime = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Executor"] as? String {
                    self.executor = value
                }
                if let value = dict["InstanceId"] as? Int64 {
                    self.instanceId = value
                }
                if let value = dict["JobId"] as? Int64 {
                    self.jobId = value
                }
                if let value = dict["Progress"] as? String {
                    self.progress = value
                }
                if let value = dict["Result"] as? String {
                    self.result = value
                }
                if let value = dict["ScheduleTime"] as? String {
                    self.scheduleTime = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["TimeType"] as? Int32 {
                    self.timeType = value
                }
                if let value = dict["TriggerType"] as? Int32 {
                    self.triggerType = value
                }
                if let value = dict["WorkAddr"] as? String {
                    self.workAddr = value
                }
            }
        }
        public var jobInstanceDetails: [GetJobInstanceListResponseBody.Data.JobInstanceDetails]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobInstanceDetails != nil {
                var tmp : [Any] = []
                for k in self.jobInstanceDetails! {
                    tmp.append(k.toMap())
                }
                map["JobInstanceDetails"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobInstanceDetails"] as? [Any?] {
                var tmp : [GetJobInstanceListResponseBody.Data.JobInstanceDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetJobInstanceListResponseBody.Data.JobInstanceDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.jobInstanceDetails = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetJobInstanceListResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetJobInstanceListResponseBody.Data()
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

public class GetJobInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobInstanceListResponseBody?

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
            var model = GetJobInstanceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogRequest : Tea.TeaModel {
    public var endTimestamp: Int64?

    public var groupId: String?

    public var jobId: String?

    public var jobInstanceId: String?

    public var keyword: String?

    public var line: Int32?

    public var namespace: String?

    public var namespaceSource: String?

    public var offset: Int32?

    public var regionId: String?

    public var reverse: Bool?

    public var startTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobInstanceId != nil {
            map["JobInstanceId"] = self.jobInstanceId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.line != nil {
            map["Line"] = self.line!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTimestamp"] as? Int64 {
            self.endTimestamp = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobInstanceId"] as? String {
            self.jobInstanceId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Line"] as? Int32 {
            self.line = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["Offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Reverse"] as? Bool {
            self.reverse = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
    }
}

public class GetLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var logs: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logs != nil {
                map["Logs"] = self.logs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Logs"] as? [String] {
                self.logs = value
            }
        }
    }
    public var code: Int32?

    public var data: GetLogResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetLogResponseBody.Data()
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

public class GetLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogResponseBody?

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
            var model = GetLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOverviewRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var groupId: String?

    public var metricType: Int32?

    public var namespace: String?

    public var namespaceSource: String?

    public var operate: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.operate != nil {
            map["Operate"] = self.operate!
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
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["MetricType"] as? Int32 {
            self.metricType = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["Operate"] as? String {
            self.operate = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class GetOverviewResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        if let value = dict["Code"] as? Int32 {
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

public class GetOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOverviewResponseBody?

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
            var model = GetOverviewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkFlowRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WorkflowId"] as? Int64 {
            self.workflowId = value
        }
    }
}

public class GetWorkFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WorkFlowInfo : Tea.TeaModel {
            public var description_: String?

            public var groupId: String?

            public var maxConcurrency: String?

            public var name: String?

            public var namespace: String?

            public var status: String?

            public var timeExpression: String?

            public var timeType: String?

            public var workflowId: Int64?

            public override init() {
                super.init()
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
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.maxConcurrency != nil {
                    map["MaxConcurrency"] = self.maxConcurrency!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.namespace != nil {
                    map["Namespace"] = self.namespace!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeExpression != nil {
                    map["TimeExpression"] = self.timeExpression!
                }
                if self.timeType != nil {
                    map["TimeType"] = self.timeType!
                }
                if self.workflowId != nil {
                    map["WorkflowId"] = self.workflowId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["MaxConcurrency"] as? String {
                    self.maxConcurrency = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Namespace"] as? String {
                    self.namespace = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TimeExpression"] as? String {
                    self.timeExpression = value
                }
                if let value = dict["TimeType"] as? String {
                    self.timeType = value
                }
                if let value = dict["WorkflowId"] as? Int64 {
                    self.workflowId = value
                }
            }
        }
        public class WorkFlowNodeInfo : Tea.TeaModel {
            public class Edges : Tea.TeaModel {
                public var source: Int64?

                public var target: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.target != nil {
                        map["Target"] = self.target!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Source"] as? Int64 {
                        self.source = value
                    }
                    if let value = dict["Target"] as? Int64 {
                        self.target = value
                    }
                }
            }
            public class Nodes : Tea.TeaModel {
                public var id: Int64?

                public var label: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Status"] as? Int32 {
                        self.status = value
                    }
                }
            }
            public var edges: [GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Edges]?

            public var nodes: [GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Nodes]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.edges != nil {
                    var tmp : [Any] = []
                    for k in self.edges! {
                        tmp.append(k.toMap())
                    }
                    map["Edges"] = tmp
                }
                if self.nodes != nil {
                    var tmp : [Any] = []
                    for k in self.nodes! {
                        tmp.append(k.toMap())
                    }
                    map["Nodes"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Edges"] as? [Any?] {
                    var tmp : [GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Edges] = []
                    for v in value {
                        if v != nil {
                            var model = GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Edges()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.edges = tmp
                }
                if let value = dict["Nodes"] as? [Any?] {
                    var tmp : [GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Nodes] = []
                    for v in value {
                        if v != nil {
                            var model = GetWorkFlowResponseBody.Data.WorkFlowNodeInfo.Nodes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.nodes = tmp
                }
            }
        }
        public var workFlowInfo: GetWorkFlowResponseBody.Data.WorkFlowInfo?

        public var workFlowNodeInfo: GetWorkFlowResponseBody.Data.WorkFlowNodeInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.workFlowInfo?.validate()
            try self.workFlowNodeInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.workFlowInfo != nil {
                map["WorkFlowInfo"] = self.workFlowInfo?.toMap()
            }
            if self.workFlowNodeInfo != nil {
                map["WorkFlowNodeInfo"] = self.workFlowNodeInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WorkFlowInfo"] as? [String: Any?] {
                var model = GetWorkFlowResponseBody.Data.WorkFlowInfo()
                model.fromMap(value)
                self.workFlowInfo = model
            }
            if let value = dict["WorkFlowNodeInfo"] as? [String: Any?] {
                var model = GetWorkFlowResponseBody.Data.WorkFlowNodeInfo()
                model.fromMap(value)
                self.workFlowNodeInfo = model
            }
        }
    }
    public var code: Int32?

    public var data: GetWorkFlowResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWorkFlowResponseBody.Data()
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

public class GetWorkFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkFlowResponseBody?

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
            var model = GetWorkFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkerListRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetWorkerListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WorkerInfos : Tea.TeaModel {
            public var ip: String?

            public var label: String?

            public var port: Int32?

            public var starter: String?

            public var version: String?

            public var workerAddress: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.starter != nil {
                    map["Starter"] = self.starter!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.workerAddress != nil {
                    map["WorkerAddress"] = self.workerAddress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Starter"] as? String {
                    self.starter = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
                if let value = dict["WorkerAddress"] as? String {
                    self.workerAddress = value
                }
            }
        }
        public var workerInfos: [GetWorkerListResponseBody.Data.WorkerInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.workerInfos != nil {
                var tmp : [Any] = []
                for k in self.workerInfos! {
                    tmp.append(k.toMap())
                }
                map["WorkerInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WorkerInfos"] as? [Any?] {
                var tmp : [GetWorkerListResponseBody.Data.WorkerInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkerListResponseBody.Data.WorkerInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.workerInfos = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetWorkerListResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWorkerListResponseBody.Data()
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

public class GetWorkerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkerListResponseBody?

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
            var model = GetWorkerListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkflowInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var wfInstanceId: Int64?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wfInstanceId != nil {
            map["WfInstanceId"] = self.wfInstanceId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WfInstanceId"] as? Int64 {
            self.wfInstanceId = value
        }
        if let value = dict["WorkflowId"] as? Int64 {
            self.workflowId = value
        }
    }
}

public class GetWorkflowInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WfInstanceDag : Tea.TeaModel {
            public class Edges : Tea.TeaModel {
                public var source: Int64?

                public var target: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    if self.target != nil {
                        map["Target"] = self.target!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Source"] as? Int64 {
                        self.source = value
                    }
                    if let value = dict["Target"] as? Int64 {
                        self.target = value
                    }
                }
            }
            public class Nodes : Tea.TeaModel {
                public var attempt: Int32?

                public var dataTime: String?

                public var endTime: String?

                public var jobId: Int64?

                public var jobInstanceId: Int64?

                public var jobName: String?

                public var result: String?

                public var scheduleTime: String?

                public var startTime: String?

                public var status: Int32?

                public var workAddr: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attempt != nil {
                        map["Attempt"] = self.attempt!
                    }
                    if self.dataTime != nil {
                        map["DataTime"] = self.dataTime!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.jobId != nil {
                        map["JobId"] = self.jobId!
                    }
                    if self.jobInstanceId != nil {
                        map["JobInstanceId"] = self.jobInstanceId!
                    }
                    if self.jobName != nil {
                        map["JobName"] = self.jobName!
                    }
                    if self.result != nil {
                        map["Result"] = self.result!
                    }
                    if self.scheduleTime != nil {
                        map["ScheduleTime"] = self.scheduleTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.workAddr != nil {
                        map["WorkAddr"] = self.workAddr!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Attempt"] as? Int32 {
                        self.attempt = value
                    }
                    if let value = dict["DataTime"] as? String {
                        self.dataTime = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["JobId"] as? Int64 {
                        self.jobId = value
                    }
                    if let value = dict["JobInstanceId"] as? Int64 {
                        self.jobInstanceId = value
                    }
                    if let value = dict["JobName"] as? String {
                        self.jobName = value
                    }
                    if let value = dict["Result"] as? String {
                        self.result = value
                    }
                    if let value = dict["ScheduleTime"] as? String {
                        self.scheduleTime = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["WorkAddr"] as? String {
                        self.workAddr = value
                    }
                }
            }
            public var edges: [GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Edges]?

            public var nodes: [GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Nodes]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.edges != nil {
                    var tmp : [Any] = []
                    for k in self.edges! {
                        tmp.append(k.toMap())
                    }
                    map["Edges"] = tmp
                }
                if self.nodes != nil {
                    var tmp : [Any] = []
                    for k in self.nodes! {
                        tmp.append(k.toMap())
                    }
                    map["Nodes"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Edges"] as? [Any?] {
                    var tmp : [GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Edges] = []
                    for v in value {
                        if v != nil {
                            var model = GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Edges()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.edges = tmp
                }
                if let value = dict["Nodes"] as? [Any?] {
                    var tmp : [GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Nodes] = []
                    for v in value {
                        if v != nil {
                            var model = GetWorkflowInstanceResponseBody.Data.WfInstanceDag.Nodes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.nodes = tmp
                }
            }
        }
        public class WfInstanceInfo : Tea.TeaModel {
            public var dataTime: String?

            public var endTime: String?

            public var scheduleTime: String?

            public var startTime: String?

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
                if self.dataTime != nil {
                    map["DataTime"] = self.dataTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataTime"] as? String {
                    self.dataTime = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["ScheduleTime"] as? String {
                    self.scheduleTime = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
            }
        }
        public var wfInstanceDag: GetWorkflowInstanceResponseBody.Data.WfInstanceDag?

        public var wfInstanceInfo: GetWorkflowInstanceResponseBody.Data.WfInstanceInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.wfInstanceDag?.validate()
            try self.wfInstanceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wfInstanceDag != nil {
                map["WfInstanceDag"] = self.wfInstanceDag?.toMap()
            }
            if self.wfInstanceInfo != nil {
                map["WfInstanceInfo"] = self.wfInstanceInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WfInstanceDag"] as? [String: Any?] {
                var model = GetWorkflowInstanceResponseBody.Data.WfInstanceDag()
                model.fromMap(value)
                self.wfInstanceDag = model
            }
            if let value = dict["WfInstanceInfo"] as? [String: Any?] {
                var model = GetWorkflowInstanceResponseBody.Data.WfInstanceInfo()
                model.fromMap(value)
                self.wfInstanceInfo = model
            }
        }
    }
    public var code: Int32?

    public var data: GetWorkflowInstanceResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWorkflowInstanceResponseBody.Data()
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

public class GetWorkflowInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkflowInstanceResponseBody?

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
            var model = GetWorkflowInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantPermissionRequest : Tea.TeaModel {
    public var grantOption: Bool?

    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var userId: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.grantOption != nil {
            map["GrantOption"] = self.grantOption!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GrantOption"] as? Bool {
            self.grantOption = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class GrantPermissionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class GrantPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantPermissionResponseBody?

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
            var model = GrantPermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var appGroupName: String?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.appGroupName != nil {
            map["AppGroupName"] = self.appGroupName!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppGroupName"] as? String {
            self.appGroupName = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AppGroups : Tea.TeaModel {
            public var appGroupId: Int64?

            public var appKey: String?

            public var appName: String?

            public var appVersion: Int32?

            public var description_: String?

            public var groupId: String?

            public var namespace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appGroupId != nil {
                    map["AppGroupId"] = self.appGroupId!
                }
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appVersion != nil {
                    map["AppVersion"] = self.appVersion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.namespace != nil {
                    map["Namespace"] = self.namespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppGroupId"] as? Int64 {
                    self.appGroupId = value
                }
                if let value = dict["AppKey"] as? String {
                    self.appKey = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["AppVersion"] as? Int32 {
                    self.appVersion = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["Namespace"] as? String {
                    self.namespace = value
                }
            }
        }
        public var appGroups: [ListGroupsResponseBody.Data.AppGroups]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appGroups != nil {
                var tmp : [Any] = []
                for k in self.appGroups! {
                    tmp.append(k.toMap())
                }
                map["AppGroups"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppGroups"] as? [Any?] {
                var tmp : [ListGroupsResponseBody.Data.AppGroups] = []
                for v in value {
                    if v != nil {
                        var model = ListGroupsResponseBody.Data.AppGroups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appGroups = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListGroupsResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListGroupsResponseBody.Data()
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

public class ListGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsResponseBody?

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
            var model = ListGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobScriptHistoryRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListJobScriptHistoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class JobScriptHistoryInfos : Tea.TeaModel {
            public var createTime: String?

            public var creator: String?

            public var scriptContent: String?

            public var versionesDescription: String?

            public override init() {
                super.init()
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
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.scriptContent != nil {
                    map["ScriptContent"] = self.scriptContent!
                }
                if self.versionesDescription != nil {
                    map["VersionesDescription"] = self.versionesDescription!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["ScriptContent"] as? String {
                    self.scriptContent = value
                }
                if let value = dict["VersionesDescription"] as? String {
                    self.versionesDescription = value
                }
            }
        }
        public var jobScriptHistoryInfos: [ListJobScriptHistoryResponseBody.Data.JobScriptHistoryInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobScriptHistoryInfos != nil {
                var tmp : [Any] = []
                for k in self.jobScriptHistoryInfos! {
                    tmp.append(k.toMap())
                }
                map["JobScriptHistoryInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobScriptHistoryInfos"] as? [Any?] {
                var tmp : [ListJobScriptHistoryResponseBody.Data.JobScriptHistoryInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListJobScriptHistoryResponseBody.Data.JobScriptHistoryInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.jobScriptHistoryInfos = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListJobScriptHistoryResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListJobScriptHistoryResponseBody.Data()
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

public class ListJobScriptHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobScriptHistoryResponseBody?

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
            var model = ListJobScriptHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobName: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Jobs : Tea.TeaModel {
            public class JobMonitorInfo : Tea.TeaModel {
                public class ContactInfo : Tea.TeaModel {
                    public var ding: String?

                    public var userMail: String?

                    public var userName: String?

                    public var userPhone: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.ding != nil {
                            map["Ding"] = self.ding!
                        }
                        if self.userMail != nil {
                            map["UserMail"] = self.userMail!
                        }
                        if self.userName != nil {
                            map["UserName"] = self.userName!
                        }
                        if self.userPhone != nil {
                            map["UserPhone"] = self.userPhone!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Ding"] as? String {
                            self.ding = value
                        }
                        if let value = dict["UserMail"] as? String {
                            self.userMail = value
                        }
                        if let value = dict["UserName"] as? String {
                            self.userName = value
                        }
                        if let value = dict["UserPhone"] as? String {
                            self.userPhone = value
                        }
                    }
                }
                public class MonitorConfig : Tea.TeaModel {
                    public var failEnable: Bool?

                    public var missWorkerEnable: Bool?

                    public var sendChannel: String?

                    public var timeout: Int64?

                    public var timeoutEnable: Bool?

                    public var timeoutKillEnable: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.failEnable != nil {
                            map["FailEnable"] = self.failEnable!
                        }
                        if self.missWorkerEnable != nil {
                            map["MissWorkerEnable"] = self.missWorkerEnable!
                        }
                        if self.sendChannel != nil {
                            map["SendChannel"] = self.sendChannel!
                        }
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        if self.timeoutEnable != nil {
                            map["TimeoutEnable"] = self.timeoutEnable!
                        }
                        if self.timeoutKillEnable != nil {
                            map["TimeoutKillEnable"] = self.timeoutKillEnable!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FailEnable"] as? Bool {
                            self.failEnable = value
                        }
                        if let value = dict["MissWorkerEnable"] as? Bool {
                            self.missWorkerEnable = value
                        }
                        if let value = dict["SendChannel"] as? String {
                            self.sendChannel = value
                        }
                        if let value = dict["Timeout"] as? Int64 {
                            self.timeout = value
                        }
                        if let value = dict["TimeoutEnable"] as? Bool {
                            self.timeoutEnable = value
                        }
                        if let value = dict["TimeoutKillEnable"] as? Bool {
                            self.timeoutKillEnable = value
                        }
                    }
                }
                public var contactInfo: [ListJobsResponseBody.Data.Jobs.JobMonitorInfo.ContactInfo]?

                public var monitorConfig: ListJobsResponseBody.Data.Jobs.JobMonitorInfo.MonitorConfig?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.monitorConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.contactInfo != nil {
                        var tmp : [Any] = []
                        for k in self.contactInfo! {
                            tmp.append(k.toMap())
                        }
                        map["ContactInfo"] = tmp
                    }
                    if self.monitorConfig != nil {
                        map["MonitorConfig"] = self.monitorConfig?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ContactInfo"] as? [Any?] {
                        var tmp : [ListJobsResponseBody.Data.Jobs.JobMonitorInfo.ContactInfo] = []
                        for v in value {
                            if v != nil {
                                var model = ListJobsResponseBody.Data.Jobs.JobMonitorInfo.ContactInfo()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.contactInfo = tmp
                    }
                    if let value = dict["MonitorConfig"] as? [String: Any?] {
                        var model = ListJobsResponseBody.Data.Jobs.JobMonitorInfo.MonitorConfig()
                        model.fromMap(value)
                        self.monitorConfig = model
                    }
                }
            }
            public class MapTaskXAttrs : Tea.TeaModel {
                public var consumerSize: Int32?

                public var dispatcherSize: Int32?

                public var pageSize: Int32?

                public var queueSize: Int32?

                public var taskAttemptInterval: Int32?

                public var taskMaxAttempt: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.consumerSize != nil {
                        map["ConsumerSize"] = self.consumerSize!
                    }
                    if self.dispatcherSize != nil {
                        map["DispatcherSize"] = self.dispatcherSize!
                    }
                    if self.pageSize != nil {
                        map["PageSize"] = self.pageSize!
                    }
                    if self.queueSize != nil {
                        map["QueueSize"] = self.queueSize!
                    }
                    if self.taskAttemptInterval != nil {
                        map["TaskAttemptInterval"] = self.taskAttemptInterval!
                    }
                    if self.taskMaxAttempt != nil {
                        map["TaskMaxAttempt"] = self.taskMaxAttempt!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConsumerSize"] as? Int32 {
                        self.consumerSize = value
                    }
                    if let value = dict["DispatcherSize"] as? Int32 {
                        self.dispatcherSize = value
                    }
                    if let value = dict["PageSize"] as? Int32 {
                        self.pageSize = value
                    }
                    if let value = dict["QueueSize"] as? Int32 {
                        self.queueSize = value
                    }
                    if let value = dict["TaskAttemptInterval"] as? Int32 {
                        self.taskAttemptInterval = value
                    }
                    if let value = dict["TaskMaxAttempt"] as? Int32 {
                        self.taskMaxAttempt = value
                    }
                }
            }
            public class TimeConfig : Tea.TeaModel {
                public var calendar: String?

                public var dataOffset: Int32?

                public var timeExpression: String?

                public var timeType: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.calendar != nil {
                        map["Calendar"] = self.calendar!
                    }
                    if self.dataOffset != nil {
                        map["DataOffset"] = self.dataOffset!
                    }
                    if self.timeExpression != nil {
                        map["TimeExpression"] = self.timeExpression!
                    }
                    if self.timeType != nil {
                        map["TimeType"] = self.timeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Calendar"] as? String {
                        self.calendar = value
                    }
                    if let value = dict["DataOffset"] as? Int32 {
                        self.dataOffset = value
                    }
                    if let value = dict["TimeExpression"] as? String {
                        self.timeExpression = value
                    }
                    if let value = dict["TimeType"] as? Int32 {
                        self.timeType = value
                    }
                }
            }
            public var attemptInterval: Int32?

            public var className: String?

            public var content: String?

            public var description_: String?

            public var executeMode: String?

            public var jarUrl: String?

            public var jobId: Int64?

            public var jobMonitorInfo: ListJobsResponseBody.Data.Jobs.JobMonitorInfo?

            public var jobType: String?

            public var mapTaskXAttrs: ListJobsResponseBody.Data.Jobs.MapTaskXAttrs?

            public var maxAttempt: Int32?

            public var maxConcurrency: String?

            public var name: String?

            public var parameters: String?

            public var status: Int32?

            public var timeConfig: ListJobsResponseBody.Data.Jobs.TimeConfig?

            public var XAttrs: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.jobMonitorInfo?.validate()
                try self.mapTaskXAttrs?.validate()
                try self.timeConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attemptInterval != nil {
                    map["AttemptInterval"] = self.attemptInterval!
                }
                if self.className != nil {
                    map["ClassName"] = self.className!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.executeMode != nil {
                    map["ExecuteMode"] = self.executeMode!
                }
                if self.jarUrl != nil {
                    map["JarUrl"] = self.jarUrl!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobMonitorInfo != nil {
                    map["JobMonitorInfo"] = self.jobMonitorInfo?.toMap()
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.mapTaskXAttrs != nil {
                    map["MapTaskXAttrs"] = self.mapTaskXAttrs?.toMap()
                }
                if self.maxAttempt != nil {
                    map["MaxAttempt"] = self.maxAttempt!
                }
                if self.maxConcurrency != nil {
                    map["MaxConcurrency"] = self.maxConcurrency!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeConfig != nil {
                    map["TimeConfig"] = self.timeConfig?.toMap()
                }
                if self.XAttrs != nil {
                    map["XAttrs"] = self.XAttrs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttemptInterval"] as? Int32 {
                    self.attemptInterval = value
                }
                if let value = dict["ClassName"] as? String {
                    self.className = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ExecuteMode"] as? String {
                    self.executeMode = value
                }
                if let value = dict["JarUrl"] as? String {
                    self.jarUrl = value
                }
                if let value = dict["JobId"] as? Int64 {
                    self.jobId = value
                }
                if let value = dict["JobMonitorInfo"] as? [String: Any?] {
                    var model = ListJobsResponseBody.Data.Jobs.JobMonitorInfo()
                    model.fromMap(value)
                    self.jobMonitorInfo = model
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["MapTaskXAttrs"] as? [String: Any?] {
                    var model = ListJobsResponseBody.Data.Jobs.MapTaskXAttrs()
                    model.fromMap(value)
                    self.mapTaskXAttrs = model
                }
                if let value = dict["MaxAttempt"] as? Int32 {
                    self.maxAttempt = value
                }
                if let value = dict["MaxConcurrency"] as? String {
                    self.maxConcurrency = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Parameters"] as? String {
                    self.parameters = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["TimeConfig"] as? [String: Any?] {
                    var model = ListJobsResponseBody.Data.Jobs.TimeConfig()
                    model.fromMap(value)
                    self.timeConfig = model
                }
                if let value = dict["XAttrs"] as? String {
                    self.XAttrs = value
                }
            }
        }
        public var jobs: [ListJobsResponseBody.Data.Jobs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobs != nil {
                var tmp : [Any] = []
                for k in self.jobs! {
                    tmp.append(k.toMap())
                }
                map["Jobs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Jobs"] as? [Any?] {
                var tmp : [ListJobsResponseBody.Data.Jobs] = []
                for v in value {
                    if v != nil {
                        var model = ListJobsResponseBody.Data.Jobs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.jobs = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListJobsResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListJobsResponseBody.Data()
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

public class ListJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobsResponseBody?

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
            var model = ListJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNamespacesRequest : Tea.TeaModel {
    public var namespace: String?

    public var namespaceName: String?

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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListNamespacesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Namespaces : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var UId: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.UId != nil {
                    map["UId"] = self.UId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["UId"] as? String {
                    self.UId = value
                }
            }
        }
        public var namespaces: [ListNamespacesResponseBody.Data.Namespaces]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespaces != nil {
                var tmp : [Any] = []
                for k in self.namespaces! {
                    tmp.append(k.toMap())
                }
                map["Namespaces"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Namespaces"] as? [Any?] {
                var tmp : [ListNamespacesResponseBody.Data.Namespaces] = []
                for v in value {
                    if v != nil {
                        var model = ListNamespacesResponseBody.Data.Namespaces()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.namespaces = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListNamespacesResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListNamespacesResponseBody.Data()
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

public class ListNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNamespacesResponseBody?

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
            var model = ListNamespacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkflowInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WorkflowId"] as? String {
            self.workflowId = value
        }
    }
}

public class ListWorkflowInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WfInstanceInfos : Tea.TeaModel {
            public var dataTime: String?

            public var endTime: String?

            public var scheduleTime: String?

            public var startTime: String?

            public var status: Int32?

            public var wfInstanceId: Int64?

            public var workflowId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataTime != nil {
                    map["DataTime"] = self.dataTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.wfInstanceId != nil {
                    map["WfInstanceId"] = self.wfInstanceId!
                }
                if self.workflowId != nil {
                    map["WorkflowId"] = self.workflowId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataTime"] as? String {
                    self.dataTime = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["ScheduleTime"] as? String {
                    self.scheduleTime = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["WfInstanceId"] as? Int64 {
                    self.wfInstanceId = value
                }
                if let value = dict["WorkflowId"] as? Int64 {
                    self.workflowId = value
                }
            }
        }
        public var wfInstanceInfos: [ListWorkflowInstanceResponseBody.Data.WfInstanceInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.wfInstanceInfos != nil {
                var tmp : [Any] = []
                for k in self.wfInstanceInfos! {
                    tmp.append(k.toMap())
                }
                map["WfInstanceInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WfInstanceInfos"] as? [Any?] {
                var tmp : [ListWorkflowInstanceResponseBody.Data.WfInstanceInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListWorkflowInstanceResponseBody.Data.WfInstanceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wfInstanceInfos = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListWorkflowInstanceResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListWorkflowInstanceResponseBody.Data()
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

public class ListWorkflowInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkflowInstanceResponseBody?

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
            var model = ListWorkflowInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ManageSchedulerxJobSyncRequest : Tea.TeaModel {
    public var jobIdList: [Int64]?

    public var namespaceSource: String?

    public var originalGroupId: String?

    public var originalNamespace: String?

    public var regionId: String?

    public var targetGroupId: String?

    public var targetNamespace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobIdList != nil {
            map["JobIdList"] = self.jobIdList!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.originalGroupId != nil {
            map["OriginalGroupId"] = self.originalGroupId!
        }
        if self.originalNamespace != nil {
            map["OriginalNamespace"] = self.originalNamespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.targetGroupId != nil {
            map["TargetGroupId"] = self.targetGroupId!
        }
        if self.targetNamespace != nil {
            map["TargetNamespace"] = self.targetNamespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobIdList"] as? [Int64] {
            self.jobIdList = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["OriginalGroupId"] as? String {
            self.originalGroupId = value
        }
        if let value = dict["OriginalNamespace"] as? String {
            self.originalNamespace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TargetGroupId"] as? String {
            self.targetGroupId = value
        }
        if let value = dict["TargetNamespace"] as? String {
            self.targetNamespace = value
        }
    }
}

public class ManageSchedulerxJobSyncShrinkRequest : Tea.TeaModel {
    public var jobIdListShrink: String?

    public var namespaceSource: String?

    public var originalGroupId: String?

    public var originalNamespace: String?

    public var regionId: String?

    public var targetGroupId: String?

    public var targetNamespace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobIdListShrink != nil {
            map["JobIdList"] = self.jobIdListShrink!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.originalGroupId != nil {
            map["OriginalGroupId"] = self.originalGroupId!
        }
        if self.originalNamespace != nil {
            map["OriginalNamespace"] = self.originalNamespace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.targetGroupId != nil {
            map["TargetGroupId"] = self.targetGroupId!
        }
        if self.targetNamespace != nil {
            map["TargetNamespace"] = self.targetNamespace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobIdList"] as? String {
            self.jobIdListShrink = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["OriginalGroupId"] as? String {
            self.originalGroupId = value
        }
        if let value = dict["OriginalNamespace"] as? String {
            self.originalNamespace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TargetGroupId"] as? String {
            self.targetGroupId = value
        }
        if let value = dict["TargetNamespace"] as? String {
            self.targetNamespace = value
        }
    }
}

public class ManageSchedulerxJobSyncResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class ManageSchedulerxJobSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManageSchedulerxJobSyncResponseBody?

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
            var model = ManageSchedulerxJobSyncResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadSchedulerxDesignateDetailRequest : Tea.TeaModel {
    public var designateType: Int32?

    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.designateType != nil {
            map["DesignateType"] = self.designateType!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DesignateType"] as? Int32 {
            self.designateType = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ReadSchedulerxDesignateDetailResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthAction"] as? String {
                self.authAction = value
            }
            if let value = dict["AuthPrincipalDisplayName"] as? String {
                self.authPrincipalDisplayName = value
            }
            if let value = dict["AuthPrincipalOwnerId"] as? String {
                self.authPrincipalOwnerId = value
            }
            if let value = dict["AuthPrincipalType"] as? String {
                self.authPrincipalType = value
            }
            if let value = dict["EncodedDiagnosticMessage"] as? String {
                self.encodedDiagnosticMessage = value
            }
            if let value = dict["NoPermissionType"] as? String {
                self.noPermissionType = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
        }
    }
    public class Data : Tea.TeaModel {
        public class DesignateDetailVos : Tea.TeaModel {
            public class Metrics : Tea.TeaModel {
                public var cpuLoad1: Double?

                public var cpuLoad5: Double?

                public var cpuProcessors: Int32?

                public var diskMax: Int32?

                public var diskUsage: Double?

                public var diskUsed: Int32?

                public var execCount: Int64?

                public var heap1Usage: Double?

                public var heap1Used: Double?

                public var heap5Usage: Double?

                public var heapMax: Int32?

                public var sharePoolAvailableSize: Int32?

                public var sharePoolQueueSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cpuLoad1 != nil {
                        map["CpuLoad1"] = self.cpuLoad1!
                    }
                    if self.cpuLoad5 != nil {
                        map["CpuLoad5"] = self.cpuLoad5!
                    }
                    if self.cpuProcessors != nil {
                        map["CpuProcessors"] = self.cpuProcessors!
                    }
                    if self.diskMax != nil {
                        map["DiskMax"] = self.diskMax!
                    }
                    if self.diskUsage != nil {
                        map["DiskUsage"] = self.diskUsage!
                    }
                    if self.diskUsed != nil {
                        map["DiskUsed"] = self.diskUsed!
                    }
                    if self.execCount != nil {
                        map["ExecCount"] = self.execCount!
                    }
                    if self.heap1Usage != nil {
                        map["Heap1Usage"] = self.heap1Usage!
                    }
                    if self.heap1Used != nil {
                        map["Heap1Used"] = self.heap1Used!
                    }
                    if self.heap5Usage != nil {
                        map["Heap5Usage"] = self.heap5Usage!
                    }
                    if self.heapMax != nil {
                        map["HeapMax"] = self.heapMax!
                    }
                    if self.sharePoolAvailableSize != nil {
                        map["SharePoolAvailableSize"] = self.sharePoolAvailableSize!
                    }
                    if self.sharePoolQueueSize != nil {
                        map["SharePoolQueueSize"] = self.sharePoolQueueSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CpuLoad1"] as? Double {
                        self.cpuLoad1 = value
                    }
                    if let value = dict["CpuLoad5"] as? Double {
                        self.cpuLoad5 = value
                    }
                    if let value = dict["CpuProcessors"] as? Int32 {
                        self.cpuProcessors = value
                    }
                    if let value = dict["DiskMax"] as? Int32 {
                        self.diskMax = value
                    }
                    if let value = dict["DiskUsage"] as? Double {
                        self.diskUsage = value
                    }
                    if let value = dict["DiskUsed"] as? Int32 {
                        self.diskUsed = value
                    }
                    if let value = dict["ExecCount"] as? Int64 {
                        self.execCount = value
                    }
                    if let value = dict["Heap1Usage"] as? Double {
                        self.heap1Usage = value
                    }
                    if let value = dict["Heap1Used"] as? Double {
                        self.heap1Used = value
                    }
                    if let value = dict["Heap5Usage"] as? Double {
                        self.heap5Usage = value
                    }
                    if let value = dict["HeapMax"] as? Int32 {
                        self.heapMax = value
                    }
                    if let value = dict["SharePoolAvailableSize"] as? Int32 {
                        self.sharePoolAvailableSize = value
                    }
                    if let value = dict["SharePoolQueueSize"] as? Int32 {
                        self.sharePoolQueueSize = value
                    }
                }
            }
            public var busy: String?

            public var checked: Bool?

            public var key: String?

            public var metrics: ReadSchedulerxDesignateDetailResponseBody.Data.DesignateDetailVos.Metrics?

            public var offline: Bool?

            public var size: Int32?

            public var starter: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.metrics?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.busy != nil {
                    map["Busy"] = self.busy!
                }
                if self.checked != nil {
                    map["Checked"] = self.checked!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.metrics != nil {
                    map["Metrics"] = self.metrics?.toMap()
                }
                if self.offline != nil {
                    map["Offline"] = self.offline!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.starter != nil {
                    map["Starter"] = self.starter!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Busy"] as? String {
                    self.busy = value
                }
                if let value = dict["Checked"] as? Bool {
                    self.checked = value
                }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Metrics"] as? [String: Any?] {
                    var model = ReadSchedulerxDesignateDetailResponseBody.Data.DesignateDetailVos.Metrics()
                    model.fromMap(value)
                    self.metrics = model
                }
                if let value = dict["Offline"] as? Bool {
                    self.offline = value
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
                }
                if let value = dict["Starter"] as? String {
                    self.starter = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var designateDetailVos: [ReadSchedulerxDesignateDetailResponseBody.Data.DesignateDetailVos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.designateDetailVos != nil {
                var tmp : [Any] = []
                for k in self.designateDetailVos! {
                    tmp.append(k.toMap())
                }
                map["DesignateDetailVos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DesignateDetailVos"] as? [Any?] {
                var tmp : [ReadSchedulerxDesignateDetailResponseBody.Data.DesignateDetailVos] = []
                for v in value {
                    if v != nil {
                        var model = ReadSchedulerxDesignateDetailResponseBody.Data.DesignateDetailVos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.designateDetailVos = tmp
            }
        }
    }
    public var accessDeniedDetail: ReadSchedulerxDesignateDetailResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: ReadSchedulerxDesignateDetailResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
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
        if let value = dict["AccessDeniedDetail"] as? [String: Any?] {
            var model = ReadSchedulerxDesignateDetailResponseBody.AccessDeniedDetail()
            model.fromMap(value)
            self.accessDeniedDetail = model
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReadSchedulerxDesignateDetailResponseBody.Data()
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

public class ReadSchedulerxDesignateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadSchedulerxDesignateDetailResponseBody?

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
            var model = ReadSchedulerxDesignateDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadSchedulerxDesignateInfoRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ReadSchedulerxDesignateInfoResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthAction"] as? String {
                self.authAction = value
            }
            if let value = dict["AuthPrincipalDisplayName"] as? String {
                self.authPrincipalDisplayName = value
            }
            if let value = dict["AuthPrincipalOwnerId"] as? String {
                self.authPrincipalOwnerId = value
            }
            if let value = dict["AuthPrincipalType"] as? String {
                self.authPrincipalType = value
            }
            if let value = dict["EncodedDiagnosticMessage"] as? String {
                self.encodedDiagnosticMessage = value
            }
            if let value = dict["NoPermissionType"] as? String {
                self.noPermissionType = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
        }
    }
    public class Data : Tea.TeaModel {
        public class DesignateDetailVos : Tea.TeaModel {
            public class Metrics : Tea.TeaModel {
                public var cpuLoad1: Double?

                public var cpuLoad5: Double?

                public var cpuProcessors: Int32?

                public var diskMax: Int32?

                public var diskUsage: Double?

                public var diskUsed: Int32?

                public var execCount: Int64?

                public var heap1Usage: Double?

                public var heap1Used: Double?

                public var heap5Usage: Double?

                public var heapMax: Int32?

                public var sharePoolAvailableSize: Int32?

                public var sharePoolQueueSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cpuLoad1 != nil {
                        map["CpuLoad1"] = self.cpuLoad1!
                    }
                    if self.cpuLoad5 != nil {
                        map["CpuLoad5"] = self.cpuLoad5!
                    }
                    if self.cpuProcessors != nil {
                        map["CpuProcessors"] = self.cpuProcessors!
                    }
                    if self.diskMax != nil {
                        map["DiskMax"] = self.diskMax!
                    }
                    if self.diskUsage != nil {
                        map["DiskUsage"] = self.diskUsage!
                    }
                    if self.diskUsed != nil {
                        map["DiskUsed"] = self.diskUsed!
                    }
                    if self.execCount != nil {
                        map["ExecCount"] = self.execCount!
                    }
                    if self.heap1Usage != nil {
                        map["Heap1Usage"] = self.heap1Usage!
                    }
                    if self.heap1Used != nil {
                        map["Heap1Used"] = self.heap1Used!
                    }
                    if self.heap5Usage != nil {
                        map["Heap5Usage"] = self.heap5Usage!
                    }
                    if self.heapMax != nil {
                        map["HeapMax"] = self.heapMax!
                    }
                    if self.sharePoolAvailableSize != nil {
                        map["SharePoolAvailableSize"] = self.sharePoolAvailableSize!
                    }
                    if self.sharePoolQueueSize != nil {
                        map["SharePoolQueueSize"] = self.sharePoolQueueSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CpuLoad1"] as? Double {
                        self.cpuLoad1 = value
                    }
                    if let value = dict["CpuLoad5"] as? Double {
                        self.cpuLoad5 = value
                    }
                    if let value = dict["CpuProcessors"] as? Int32 {
                        self.cpuProcessors = value
                    }
                    if let value = dict["DiskMax"] as? Int32 {
                        self.diskMax = value
                    }
                    if let value = dict["DiskUsage"] as? Double {
                        self.diskUsage = value
                    }
                    if let value = dict["DiskUsed"] as? Int32 {
                        self.diskUsed = value
                    }
                    if let value = dict["ExecCount"] as? Int64 {
                        self.execCount = value
                    }
                    if let value = dict["Heap1Usage"] as? Double {
                        self.heap1Usage = value
                    }
                    if let value = dict["Heap1Used"] as? Double {
                        self.heap1Used = value
                    }
                    if let value = dict["Heap5Usage"] as? Double {
                        self.heap5Usage = value
                    }
                    if let value = dict["HeapMax"] as? Int32 {
                        self.heapMax = value
                    }
                    if let value = dict["SharePoolAvailableSize"] as? Int32 {
                        self.sharePoolAvailableSize = value
                    }
                    if let value = dict["SharePoolQueueSize"] as? Int32 {
                        self.sharePoolQueueSize = value
                    }
                }
            }
            public var busy: String?

            public var checked: Bool?

            public var key: String?

            public var metrics: ReadSchedulerxDesignateInfoResponseBody.Data.DesignateDetailVos.Metrics?

            public var offline: Bool?

            public var size: Int32?

            public var starter: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.metrics?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.busy != nil {
                    map["Busy"] = self.busy!
                }
                if self.checked != nil {
                    map["Checked"] = self.checked!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.metrics != nil {
                    map["Metrics"] = self.metrics?.toMap()
                }
                if self.offline != nil {
                    map["Offline"] = self.offline!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.starter != nil {
                    map["Starter"] = self.starter!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Busy"] as? String {
                    self.busy = value
                }
                if let value = dict["Checked"] as? Bool {
                    self.checked = value
                }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Metrics"] as? [String: Any?] {
                    var model = ReadSchedulerxDesignateInfoResponseBody.Data.DesignateDetailVos.Metrics()
                    model.fromMap(value)
                    self.metrics = model
                }
                if let value = dict["Offline"] as? Bool {
                    self.offline = value
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
                }
                if let value = dict["Starter"] as? String {
                    self.starter = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var designateDetailVos: [ReadSchedulerxDesignateInfoResponseBody.Data.DesignateDetailVos]?

        public var designateType: Int32?

        public var transferable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.designateDetailVos != nil {
                var tmp : [Any] = []
                for k in self.designateDetailVos! {
                    tmp.append(k.toMap())
                }
                map["DesignateDetailVos"] = tmp
            }
            if self.designateType != nil {
                map["DesignateType"] = self.designateType!
            }
            if self.transferable != nil {
                map["Transferable"] = self.transferable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DesignateDetailVos"] as? [Any?] {
                var tmp : [ReadSchedulerxDesignateInfoResponseBody.Data.DesignateDetailVos] = []
                for v in value {
                    if v != nil {
                        var model = ReadSchedulerxDesignateInfoResponseBody.Data.DesignateDetailVos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.designateDetailVos = tmp
            }
            if let value = dict["DesignateType"] as? Int32 {
                self.designateType = value
            }
            if let value = dict["Transferable"] as? Bool {
                self.transferable = value
            }
        }
    }
    public var accessDeniedDetail: ReadSchedulerxDesignateInfoResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var data: ReadSchedulerxDesignateInfoResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
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
        if let value = dict["AccessDeniedDetail"] as? [String: Any?] {
            var model = ReadSchedulerxDesignateInfoResponseBody.AccessDeniedDetail()
            model.fromMap(value)
            self.accessDeniedDetail = model
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReadSchedulerxDesignateInfoResponseBody.Data()
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

public class ReadSchedulerxDesignateInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadSchedulerxDesignateInfoResponseBody?

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
            var model = ReadSchedulerxDesignateInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RerunJobRequest : Tea.TeaModel {
    public var dataTime: String?

    public var endDate: Int64?

    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var startDate: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataTime != nil {
            map["DataTime"] = self.dataTime!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataTime"] as? String {
            self.dataTime = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
    }
}

public class RerunJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class RerunJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RerunJobResponseBody?

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
            var model = RerunJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryJobInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var jobInstanceId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobInstanceId != nil {
            map["JobInstanceId"] = self.jobInstanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["JobInstanceId"] as? Int64 {
            self.jobInstanceId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RetryJobInstanceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class RetryJobInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryJobInstanceResponseBody?

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
            var model = RetryJobInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokePermissionRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class RevokePermissionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class RevokePermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokePermissionResponseBody?

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
            var model = RevokePermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetJobInstanceSuccessRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var jobInstanceId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobInstanceId != nil {
            map["JobInstanceId"] = self.jobInstanceId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["JobInstanceId"] as? Int64 {
            self.jobInstanceId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class SetJobInstanceSuccessResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class SetJobInstanceSuccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetJobInstanceSuccessResponseBody?

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
            var model = SetJobInstanceSuccessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetWfInstanceSuccessRequest : Tea.TeaModel {
    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var wfInstanceId: Int64?

    public var workflowId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.wfInstanceId != nil {
            map["WfInstanceId"] = self.wfInstanceId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WfInstanceId"] as? Int64 {
            self.wfInstanceId = value
        }
        if let value = dict["WorkflowId"] as? Int64 {
            self.workflowId = value
        }
    }
}

public class SetWfInstanceSuccessResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class SetWfInstanceSuccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetWfInstanceSuccessResponseBody?

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
            var model = SetWfInstanceSuccessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopInstanceRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: Int64?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["InstanceId"] as? Int64 {
            self.instanceId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StopInstanceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class StopInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstanceResponseBody?

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
            var model = StopInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAppGroupRequest : Tea.TeaModel {
    public var appVersion: Int32?

    public var description_: String?

    public var groupId: String?

    public var maxConcurrency: Int32?

    public var monitorConfigJson: String?

    public var monitorContactsJson: String?

    public var namespace: String?

    public var notificationPolicyName: String?

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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.monitorConfigJson != nil {
            map["MonitorConfigJson"] = self.monitorConfigJson!
        }
        if self.monitorContactsJson != nil {
            map["MonitorContactsJson"] = self.monitorContactsJson!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.notificationPolicyName != nil {
            map["NotificationPolicyName"] = self.notificationPolicyName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppVersion"] as? Int32 {
            self.appVersion = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["MaxConcurrency"] as? Int32 {
            self.maxConcurrency = value
        }
        if let value = dict["MonitorConfigJson"] as? String {
            self.monitorConfigJson = value
        }
        if let value = dict["MonitorContactsJson"] as? String {
            self.monitorContactsJson = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NotificationPolicyName"] as? String {
            self.notificationPolicyName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateAppGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class UpdateAppGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppGroupResponseBody?

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
            var model = UpdateAppGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateJobRequest : Tea.TeaModel {
    public class ContactInfo : Tea.TeaModel {
        public var ding: String?

        public var userMail: String?

        public var userName: String?

        public var userPhone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ding != nil {
                map["Ding"] = self.ding!
            }
            if self.userMail != nil {
                map["UserMail"] = self.userMail!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userPhone != nil {
                map["UserPhone"] = self.userPhone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ding"] as? String {
                self.ding = value
            }
            if let value = dict["UserMail"] as? String {
                self.userMail = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["UserPhone"] as? String {
                self.userPhone = value
            }
        }
    }
    public var attemptInterval: Int32?

    public var calendar: String?

    public var className: String?

    public var consumerSize: Int32?

    public var contactInfo: [UpdateJobRequest.ContactInfo]?

    public var content: String?

    public var dataOffset: Int32?

    public var description_: String?

    public var dispatcherSize: Int32?

    public var executeMode: String?

    public var failEnable: Bool?

    public var failTimes: Int32?

    public var groupId: String?

    public var jobId: Int64?

    public var maxAttempt: Int32?

    public var maxConcurrency: Int32?

    public var missWorkerEnable: Bool?

    public var name: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var pageSize: Int32?

    public var parameters: String?

    public var priority: Int32?

    public var queueSize: Int32?

    public var regionId: String?

    public var sendChannel: String?

    public var successNoticeEnable: Bool?

    public var taskAttemptInterval: Int32?

    public var taskDispatchMode: String?

    public var taskMaxAttempt: Int32?

    public var template: String?

    public var timeExpression: String?

    public var timeType: Int32?

    public var timeout: Int64?

    public var timeoutEnable: Bool?

    public var timeoutKillEnable: Bool?

    public var timezone: String?

    public var XAttrs: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attemptInterval != nil {
            map["AttemptInterval"] = self.attemptInterval!
        }
        if self.calendar != nil {
            map["Calendar"] = self.calendar!
        }
        if self.className != nil {
            map["ClassName"] = self.className!
        }
        if self.consumerSize != nil {
            map["ConsumerSize"] = self.consumerSize!
        }
        if self.contactInfo != nil {
            var tmp : [Any] = []
            for k in self.contactInfo! {
                tmp.append(k.toMap())
            }
            map["ContactInfo"] = tmp
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.dataOffset != nil {
            map["DataOffset"] = self.dataOffset!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dispatcherSize != nil {
            map["DispatcherSize"] = self.dispatcherSize!
        }
        if self.executeMode != nil {
            map["ExecuteMode"] = self.executeMode!
        }
        if self.failEnable != nil {
            map["FailEnable"] = self.failEnable!
        }
        if self.failTimes != nil {
            map["FailTimes"] = self.failTimes!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.maxAttempt != nil {
            map["MaxAttempt"] = self.maxAttempt!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.missWorkerEnable != nil {
            map["MissWorkerEnable"] = self.missWorkerEnable!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.queueSize != nil {
            map["QueueSize"] = self.queueSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sendChannel != nil {
            map["SendChannel"] = self.sendChannel!
        }
        if self.successNoticeEnable != nil {
            map["SuccessNoticeEnable"] = self.successNoticeEnable!
        }
        if self.taskAttemptInterval != nil {
            map["TaskAttemptInterval"] = self.taskAttemptInterval!
        }
        if self.taskDispatchMode != nil {
            map["TaskDispatchMode"] = self.taskDispatchMode!
        }
        if self.taskMaxAttempt != nil {
            map["TaskMaxAttempt"] = self.taskMaxAttempt!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        if self.timeExpression != nil {
            map["TimeExpression"] = self.timeExpression!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.timeoutEnable != nil {
            map["TimeoutEnable"] = self.timeoutEnable!
        }
        if self.timeoutKillEnable != nil {
            map["TimeoutKillEnable"] = self.timeoutKillEnable!
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        if self.XAttrs != nil {
            map["XAttrs"] = self.XAttrs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttemptInterval"] as? Int32 {
            self.attemptInterval = value
        }
        if let value = dict["Calendar"] as? String {
            self.calendar = value
        }
        if let value = dict["ClassName"] as? String {
            self.className = value
        }
        if let value = dict["ConsumerSize"] as? Int32 {
            self.consumerSize = value
        }
        if let value = dict["ContactInfo"] as? [Any?] {
            var tmp : [UpdateJobRequest.ContactInfo] = []
            for v in value {
                if v != nil {
                    var model = UpdateJobRequest.ContactInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contactInfo = tmp
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DataOffset"] as? Int32 {
            self.dataOffset = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DispatcherSize"] as? Int32 {
            self.dispatcherSize = value
        }
        if let value = dict["ExecuteMode"] as? String {
            self.executeMode = value
        }
        if let value = dict["FailEnable"] as? Bool {
            self.failEnable = value
        }
        if let value = dict["FailTimes"] as? Int32 {
            self.failTimes = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["MaxAttempt"] as? Int32 {
            self.maxAttempt = value
        }
        if let value = dict["MaxConcurrency"] as? Int32 {
            self.maxConcurrency = value
        }
        if let value = dict["MissWorkerEnable"] as? Bool {
            self.missWorkerEnable = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["QueueSize"] as? Int32 {
            self.queueSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SendChannel"] as? String {
            self.sendChannel = value
        }
        if let value = dict["SuccessNoticeEnable"] as? Bool {
            self.successNoticeEnable = value
        }
        if let value = dict["TaskAttemptInterval"] as? Int32 {
            self.taskAttemptInterval = value
        }
        if let value = dict["TaskDispatchMode"] as? String {
            self.taskDispatchMode = value
        }
        if let value = dict["TaskMaxAttempt"] as? Int32 {
            self.taskMaxAttempt = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
        if let value = dict["TimeExpression"] as? String {
            self.timeExpression = value
        }
        if let value = dict["TimeType"] as? Int32 {
            self.timeType = value
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
        if let value = dict["TimeoutEnable"] as? Bool {
            self.timeoutEnable = value
        }
        if let value = dict["TimeoutKillEnable"] as? Bool {
            self.timeoutKillEnable = value
        }
        if let value = dict["Timezone"] as? String {
            self.timezone = value
        }
        if let value = dict["XAttrs"] as? String {
            self.XAttrs = value
        }
    }
}

public class UpdateJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class UpdateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateJobResponseBody?

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
            var model = UpdateJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateJobScriptRequest : Tea.TeaModel {
    public var groupId: String?

    public var jobId: Int64?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var scriptContent: String?

    public var versionDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scriptContent != nil {
            map["ScriptContent"] = self.scriptContent!
        }
        if self.versionDescription != nil {
            map["VersionDescription"] = self.versionDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ScriptContent"] as? String {
            self.scriptContent = value
        }
        if let value = dict["VersionDescription"] as? String {
            self.versionDescription = value
        }
    }
}

public class UpdateJobScriptResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class UpdateJobScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateJobScriptResponseBody?

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
            var model = UpdateJobScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateNamespaceRequest : Tea.TeaModel {
    public var description_: String?

    public var namespace: String?

    public var namespaceName: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceName != nil {
            map["NamespaceName"] = self.namespaceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceName"] as? String {
            self.namespaceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateNamespaceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class UpdateNamespaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNamespaceResponseBody?

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
            var model = UpdateNamespaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkflowRequest : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var name: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var timeExpression: String?

    public var timeType: Int32?

    public var workflowId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.timeExpression != nil {
            map["TimeExpression"] = self.timeExpression!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TimeExpression"] as? String {
            self.timeExpression = value
        }
        if let value = dict["TimeType"] as? Int32 {
            self.timeType = value
        }
        if let value = dict["WorkflowId"] as? String {
            self.workflowId = value
        }
    }
}

public class UpdateWorkflowResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class UpdateWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkflowResponseBody?

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
            var model = UpdateWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkflowDagRequest : Tea.TeaModel {
    public var dagJson: String?

    public var groupId: String?

    public var namespace: String?

    public var namespaceSource: String?

    public var regionId: String?

    public var workflowId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dagJson != nil {
            map["DagJson"] = self.dagJson!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.namespaceSource != nil {
            map["NamespaceSource"] = self.namespaceSource!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DagJson"] as? String {
            self.dagJson = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["NamespaceSource"] as? String {
            self.namespaceSource = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WorkflowId"] as? String {
            self.workflowId = value
        }
    }
}

public class UpdateWorkflowDagResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class UpdateWorkflowDagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkflowDagResponseBody?

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
            var model = UpdateWorkflowDagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
