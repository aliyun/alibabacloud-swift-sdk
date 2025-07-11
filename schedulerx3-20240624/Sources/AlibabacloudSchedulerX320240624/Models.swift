import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAppRequest : Tea.TeaModel {
    public var accessToken: String?

    public var appName: String?

    public var clusterId: String?

    public var enableLog: Bool?

    public var labelRouteStrategy: Int32?

    public var maxConcurrency: Int32?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.enableLog != nil {
            map["EnableLog"] = self.enableLog!
        }
        if self.labelRouteStrategy != nil {
            map["LabelRouteStrategy"] = self.labelRouteStrategy!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["EnableLog"] as? Bool {
            self.enableLog = value
        }
        if let value = dict["LabelRouteStrategy"] as? Int32 {
            self.labelRouteStrategy = value
        }
        if let value = dict["MaxConcurrency"] as? Int32 {
            self.maxConcurrency = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessToken: String?

        public var appGroupId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessToken != nil {
                map["AccessToken"] = self.accessToken!
            }
            if self.appGroupId != nil {
                map["AppGroupId"] = self.appGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessToken"] as? String {
                self.accessToken = value
            }
            if let value = dict["AppGroupId"] as? Int64 {
                self.appGroupId = value
            }
        }
    }
    public var code: Int32?

    public var data: CreateAppResponseBody.Data?

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
            var model = CreateAppResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
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
    public class VSwitches : Tea.TeaModel {
        public var vSwitchId: String?

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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var clusterName: String?

    public var clusterSpec: String?

    public var engineType: String?

    public var tag: [CreateClusterRequest.Tag]?

    public var vSwitches: [CreateClusterRequest.VSwitches]?

    public var vpcId: String?

    public override init() {
        super.init()
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
        if self.clusterSpec != nil {
            map["ClusterSpec"] = self.clusterSpec!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitches != nil {
            var tmp : [Any] = []
            for k in self.vSwitches! {
                tmp.append(k.toMap())
            }
            map["VSwitches"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ClusterSpec"] as? String {
            self.clusterSpec = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateClusterRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitches"] as? [Any?] {
            var tmp : [CreateClusterRequest.VSwitches] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterRequest.VSwitches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vSwitches = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateClusterShrinkRequest : Tea.TeaModel {
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
    public var clusterName: String?

    public var clusterSpec: String?

    public var engineType: String?

    public var tag: [CreateClusterShrinkRequest.Tag]?

    public var vSwitchesShrink: String?

    public var vpcId: String?

    public override init() {
        super.init()
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
        if self.clusterSpec != nil {
            map["ClusterSpec"] = self.clusterSpec!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchesShrink != nil {
            map["VSwitches"] = self.vSwitchesShrink!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ClusterSpec"] as? String {
            self.clusterSpec = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateClusterShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitches"] as? String {
            self.vSwitchesShrink = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
        }
    }
    public var code: Int32?

    public var data: CreateClusterResponseBody.Data?

    public var errorCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
            var model = CreateClusterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
    public class NoticeConfig : Tea.TeaModel {
        public var failEnable: Bool?

        public var failLimitTimes: Int32?

        public var missWorkerEnable: Bool?

        public var sendChannel: String?

        public var successNotice: Bool?

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
            if self.failLimitTimes != nil {
                map["FailLimitTimes"] = self.failLimitTimes!
            }
            if self.missWorkerEnable != nil {
                map["MissWorkerEnable"] = self.missWorkerEnable!
            }
            if self.sendChannel != nil {
                map["SendChannel"] = self.sendChannel!
            }
            if self.successNotice != nil {
                map["SuccessNotice"] = self.successNotice!
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
            if let value = dict["FailLimitTimes"] as? Int32 {
                self.failLimitTimes = value
            }
            if let value = dict["MissWorkerEnable"] as? Bool {
                self.missWorkerEnable = value
            }
            if let value = dict["SendChannel"] as? String {
                self.sendChannel = value
            }
            if let value = dict["SuccessNotice"] as? Bool {
                self.successNotice = value
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
    public class NoticeContacts : Tea.TeaModel {
        public var contactType: Int32?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactType != nil {
                map["ContactType"] = self.contactType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactType"] as? Int32 {
                self.contactType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var appName: String?

    public var attemptInterval: Int32?

    public var calendar: String?

    public var childJobId: String?

    public var clusterId: String?

    public var description_: String?

    public var executorBlockStrategy: Int32?

    public var jobHandler: String?

    public var jobType: String?

    public var maxAttempt: Int32?

    public var maxConcurrency: Int32?

    public var name: String?

    public var noticeConfig: CreateJobRequest.NoticeConfig?

    public var noticeContacts: [CreateJobRequest.NoticeContacts]?

    public var parameters: String?

    public var priority: Int32?

    public var routeStrategy: Int32?

    public var script: String?

    public var startTime: Int64?

    public var status: Int32?

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
        try self.noticeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.attemptInterval != nil {
            map["AttemptInterval"] = self.attemptInterval!
        }
        if self.calendar != nil {
            map["Calendar"] = self.calendar!
        }
        if self.childJobId != nil {
            map["ChildJobId"] = self.childJobId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executorBlockStrategy != nil {
            map["ExecutorBlockStrategy"] = self.executorBlockStrategy!
        }
        if self.jobHandler != nil {
            map["JobHandler"] = self.jobHandler!
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.noticeConfig != nil {
            map["NoticeConfig"] = self.noticeConfig?.toMap()
        }
        if self.noticeContacts != nil {
            var tmp : [Any] = []
            for k in self.noticeContacts! {
                tmp.append(k.toMap())
            }
            map["NoticeContacts"] = tmp
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.routeStrategy != nil {
            map["RouteStrategy"] = self.routeStrategy!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
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
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AttemptInterval"] as? Int32 {
            self.attemptInterval = value
        }
        if let value = dict["Calendar"] as? String {
            self.calendar = value
        }
        if let value = dict["ChildJobId"] as? String {
            self.childJobId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutorBlockStrategy"] as? Int32 {
            self.executorBlockStrategy = value
        }
        if let value = dict["JobHandler"] as? String {
            self.jobHandler = value
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
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NoticeConfig"] as? [String: Any?] {
            var model = CreateJobRequest.NoticeConfig()
            model.fromMap(value)
            self.noticeConfig = model
        }
        if let value = dict["NoticeContacts"] as? [Any?] {
            var tmp : [CreateJobRequest.NoticeContacts] = []
            for v in value {
                if v != nil {
                    var model = CreateJobRequest.NoticeContacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.noticeContacts = tmp
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RouteStrategy"] as? Int32 {
            self.routeStrategy = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
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

public class CreateJobShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var attemptInterval: Int32?

    public var calendar: String?

    public var childJobId: String?

    public var clusterId: String?

    public var description_: String?

    public var executorBlockStrategy: Int32?

    public var jobHandler: String?

    public var jobType: String?

    public var maxAttempt: Int32?

    public var maxConcurrency: Int32?

    public var name: String?

    public var noticeConfigShrink: String?

    public var noticeContactsShrink: String?

    public var parameters: String?

    public var priority: Int32?

    public var routeStrategy: Int32?

    public var script: String?

    public var startTime: Int64?

    public var status: Int32?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.attemptInterval != nil {
            map["AttemptInterval"] = self.attemptInterval!
        }
        if self.calendar != nil {
            map["Calendar"] = self.calendar!
        }
        if self.childJobId != nil {
            map["ChildJobId"] = self.childJobId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executorBlockStrategy != nil {
            map["ExecutorBlockStrategy"] = self.executorBlockStrategy!
        }
        if self.jobHandler != nil {
            map["JobHandler"] = self.jobHandler!
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.noticeConfigShrink != nil {
            map["NoticeConfig"] = self.noticeConfigShrink!
        }
        if self.noticeContactsShrink != nil {
            map["NoticeContacts"] = self.noticeContactsShrink!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.routeStrategy != nil {
            map["RouteStrategy"] = self.routeStrategy!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
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
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AttemptInterval"] as? Int32 {
            self.attemptInterval = value
        }
        if let value = dict["Calendar"] as? String {
            self.calendar = value
        }
        if let value = dict["ChildJobId"] as? String {
            self.childJobId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutorBlockStrategy"] as? Int32 {
            self.executorBlockStrategy = value
        }
        if let value = dict["JobHandler"] as? String {
            self.jobHandler = value
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
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NoticeConfig"] as? String {
            self.noticeConfigShrink = value
        }
        if let value = dict["NoticeContacts"] as? String {
            self.noticeContactsShrink = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RouteStrategy"] as? Int32 {
            self.routeStrategy = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
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

public class DeleteAppRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
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

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

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
            var model = DeleteAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DeleteClusterResponseBody : Tea.TeaModel {
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

public class DeleteClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClusterResponseBody?

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
            var model = DeleteClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteJobsRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobIds: [Int64]?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobIds"] as? [Int64] {
            self.jobIds = value
        }
    }
}

public class DeleteJobsShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobIdsShrink: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobIdsShrink != nil {
            map["JobIds"] = self.jobIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobIds"] as? String {
            self.jobIdsShrink = value
        }
    }
}

public class DeleteJobsResponseBody : Tea.TeaModel {
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

public class DeleteJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobsResponseBody?

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
            var model = DeleteJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportJobsRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var exportJobType: Int32?

    public var jobIds: [Int64]?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.exportJobType != nil {
            map["ExportJobType"] = self.exportJobType!
        }
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ExportJobType"] as? Int32 {
            self.exportJobType = value
        }
        if let value = dict["JobIds"] as? [Int64] {
            self.jobIds = value
        }
    }
}

public class ExportJobsShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var exportJobType: Int32?

    public var jobIdsShrink: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.exportJobType != nil {
            map["ExportJobType"] = self.exportJobType!
        }
        if self.jobIdsShrink != nil {
            map["JobIds"] = self.jobIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ExportJobType"] as? Int32 {
            self.exportJobType = value
        }
        if let value = dict["JobIds"] as? String {
            self.jobIdsShrink = value
        }
    }
}

public class ExportJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [UInt8]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
        if let value = dict["body"] as? [UInt8] {
            self.body = value
        }
    }
}

public class GetAppRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class GetAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessToken: String?

        public var appName: String?

        public var creator: String?

        public var enableLog: Bool?

        public var executorNum: Int64?

        public var id: Int64?

        public var jobNum: Int32?

        public var labelRouteStrategy: Int32?

        public var leader: String?

        public var maxConcurrency: Int32?

        public var maxJobs: Int32?

        public var title: String?

        public var updater: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessToken != nil {
                map["AccessToken"] = self.accessToken!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.enableLog != nil {
                map["EnableLog"] = self.enableLog!
            }
            if self.executorNum != nil {
                map["ExecutorNum"] = self.executorNum!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.jobNum != nil {
                map["JobNum"] = self.jobNum!
            }
            if self.labelRouteStrategy != nil {
                map["LabelRouteStrategy"] = self.labelRouteStrategy!
            }
            if self.leader != nil {
                map["Leader"] = self.leader!
            }
            if self.maxConcurrency != nil {
                map["MaxConcurrency"] = self.maxConcurrency!
            }
            if self.maxJobs != nil {
                map["MaxJobs"] = self.maxJobs!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updater != nil {
                map["Updater"] = self.updater!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessToken"] as? String {
                self.accessToken = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["EnableLog"] as? Bool {
                self.enableLog = value
            }
            if let value = dict["ExecutorNum"] as? Int64 {
                self.executorNum = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["JobNum"] as? Int32 {
                self.jobNum = value
            }
            if let value = dict["LabelRouteStrategy"] as? Int32 {
                self.labelRouteStrategy = value
            }
            if let value = dict["Leader"] as? String {
                self.leader = value
            }
            if let value = dict["MaxConcurrency"] as? Int32 {
                self.maxConcurrency = value
            }
            if let value = dict["MaxJobs"] as? Int32 {
                self.maxJobs = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Updater"] as? String {
                self.updater = value
            }
        }
    }
    public var code: Int32?

    public var data: GetAppResponseBody.Data?

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
            var model = GetAppResponseBody.Data()
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

public class GetAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppResponseBody?

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
            var model = GetAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class GetClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VSwitches : Tea.TeaModel {
            public var vSwitchId: String?

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
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var chargeType: String?

        public var clusterId: String?

        public var clusterName: String?

        public var clusterSpec: String?

        public var createTime: String?

        public var endTime: String?

        public var engineType: String?

        public var engineVersion: String?

        public var internetDomain: String?

        public var intranetDomain: String?

        public var jobNum: Int32?

        public var kubeConfig: String?

        public var maxJobNum: Int32?

        public var productType: Int32?

        public var spm: Int32?

        public var status: Int32?

        public var tags: [String: Any]?

        public var vSwitches: [GetClusterResponseBody.Data.VSwitches]?

        public var versionLifecycle: String?

        public var vpcId: String?

        public var workerNum: Int32?

        public var zones: [String]?

        public override init() {
            super.init()
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
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.clusterSpec != nil {
                map["ClusterSpec"] = self.clusterSpec!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.internetDomain != nil {
                map["InternetDomain"] = self.internetDomain!
            }
            if self.intranetDomain != nil {
                map["IntranetDomain"] = self.intranetDomain!
            }
            if self.jobNum != nil {
                map["JobNum"] = self.jobNum!
            }
            if self.kubeConfig != nil {
                map["KubeConfig"] = self.kubeConfig!
            }
            if self.maxJobNum != nil {
                map["MaxJobNum"] = self.maxJobNum!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.spm != nil {
                map["Spm"] = self.spm!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.vSwitches != nil {
                var tmp : [Any] = []
                for k in self.vSwitches! {
                    tmp.append(k.toMap())
                }
                map["VSwitches"] = tmp
            }
            if self.versionLifecycle != nil {
                map["VersionLifecycle"] = self.versionLifecycle!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.workerNum != nil {
                map["WorkerNum"] = self.workerNum!
            }
            if self.zones != nil {
                map["Zones"] = self.zones!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["ClusterSpec"] as? String {
                self.clusterSpec = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["InternetDomain"] as? String {
                self.internetDomain = value
            }
            if let value = dict["IntranetDomain"] as? String {
                self.intranetDomain = value
            }
            if let value = dict["JobNum"] as? Int32 {
                self.jobNum = value
            }
            if let value = dict["KubeConfig"] as? String {
                self.kubeConfig = value
            }
            if let value = dict["MaxJobNum"] as? Int32 {
                self.maxJobNum = value
            }
            if let value = dict["ProductType"] as? Int32 {
                self.productType = value
            }
            if let value = dict["Spm"] as? Int32 {
                self.spm = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Tags"] as? [String: Any] {
                self.tags = value
            }
            if let value = dict["VSwitches"] as? [Any?] {
                var tmp : [GetClusterResponseBody.Data.VSwitches] = []
                for v in value {
                    if v != nil {
                        var model = GetClusterResponseBody.Data.VSwitches()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vSwitches = tmp
            }
            if let value = dict["VersionLifecycle"] as? String {
                self.versionLifecycle = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["WorkerNum"] as? Int32 {
                self.workerNum = value
            }
            if let value = dict["Zones"] as? [String] {
                self.zones = value
            }
        }
    }
    public var code: Int32?

    public var data: GetClusterResponseBody.Data?

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
            var model = GetClusterResponseBody.Data()
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

public class GetClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterResponseBody?

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
            var model = GetClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDesigateInfoRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
    }
}

public class GetDesigateInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if let value = dict["DesignateType"] as? Int32 {
                self.designateType = value
            }
            if let value = dict["Transferable"] as? Bool {
                self.transferable = value
            }
        }
    }
    public var code: Int32?

    public var data: GetDesigateInfoResponseBody.Data?

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
            var model = GetDesigateInfoResponseBody.Data()
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

public class GetDesigateInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDesigateInfoResponseBody?

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
            var model = GetDesigateInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobExecutionRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobExecutionId: String?

    public var mseSessionId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        if self.mseSessionId != nil {
            map["MseSessionId"] = self.mseSessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
        if let value = dict["MseSessionId"] as? String {
            self.mseSessionId = value
        }
    }
}

public class GetJobExecutionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appName: String?

        public var attempt: Int32?

        public var dataTime: String?

        public var duration: Int64?

        public var endTime: String?

        public var executor: String?

        public var jobExecutionId: String?

        public var jobId: Int64?

        public var jobName: String?

        public var jobType: String?

        public var parameters: String?

        public var result: String?

        public var routeStrategy: Int32?

        public var scheduleTime: String?

        public var serverIp: String?

        public var startTime: String?

        public var status: Int32?

        public var timeType: Int32?

        public var triggerType: Int32?

        public override init() {
            super.init()
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
            if self.attempt != nil {
                map["Attempt"] = self.attempt!
            }
            if self.dataTime != nil {
                map["DataTime"] = self.dataTime!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.executor != nil {
                map["Executor"] = self.executor!
            }
            if self.jobExecutionId != nil {
                map["JobExecutionId"] = self.jobExecutionId!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.routeStrategy != nil {
                map["RouteStrategy"] = self.routeStrategy!
            }
            if self.scheduleTime != nil {
                map["ScheduleTime"] = self.scheduleTime!
            }
            if self.serverIp != nil {
                map["ServerIp"] = self.serverIp!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["Attempt"] as? Int32 {
                self.attempt = value
            }
            if let value = dict["DataTime"] as? String {
                self.dataTime = value
            }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Executor"] as? String {
                self.executor = value
            }
            if let value = dict["JobExecutionId"] as? String {
                self.jobExecutionId = value
            }
            if let value = dict["JobId"] as? Int64 {
                self.jobId = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["JobType"] as? String {
                self.jobType = value
            }
            if let value = dict["Parameters"] as? String {
                self.parameters = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["RouteStrategy"] as? Int32 {
                self.routeStrategy = value
            }
            if let value = dict["ScheduleTime"] as? String {
                self.scheduleTime = value
            }
            if let value = dict["ServerIp"] as? String {
                self.serverIp = value
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
        }
    }
    public var code: Int32?

    public var data: GetJobExecutionResponseBody.Data?

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
            var model = GetJobExecutionResponseBody.Data()
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

public class GetJobExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobExecutionResponseBody?

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
            var model = GetJobExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobExecutionProgressRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobExecutionId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
    }
}

public class GetJobExecutionProgressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RootProgress : Tea.TeaModel {
            public var finished: Int64?

            public var total: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.finished != nil {
                    map["Finished"] = self.finished!
                }
                if self.total != nil {
                    map["Total"] = self.total!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Finished"] as? Int64 {
                    self.finished = value
                }
                if let value = dict["Total"] as? Int64 {
                    self.total = value
                }
            }
        }
        public class ShardingProgress : Tea.TeaModel {
            public class StatusType : Tea.TeaModel {
                public var code: String?

                public var name: String?

                public var tips: [String: String]?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.tips != nil {
                        map["Tips"] = self.tips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Code"] as? String {
                        self.code = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Tips"] as? [String: String] {
                        self.tips = value
                    }
                }
            }
            public var id: Int64?

            public var jobExecutionId: String?

            public var result: String?

            public var status: Int32?

            public var statusType: GetJobExecutionProgressResponseBody.Data.ShardingProgress.StatusType?

            public var workerAddr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.statusType?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.jobExecutionId != nil {
                    map["JobExecutionId"] = self.jobExecutionId!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusType != nil {
                    map["StatusType"] = self.statusType?.toMap()
                }
                if self.workerAddr != nil {
                    map["WorkerAddr"] = self.workerAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["JobExecutionId"] as? String {
                    self.jobExecutionId = value
                }
                if let value = dict["Result"] as? String {
                    self.result = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["StatusType"] as? [String: Any?] {
                    var model = GetJobExecutionProgressResponseBody.Data.ShardingProgress.StatusType()
                    model.fromMap(value)
                    self.statusType = model
                }
                if let value = dict["WorkerAddr"] as? String {
                    self.workerAddr = value
                }
            }
        }
        public class TaskProgress : Tea.TeaModel {
            public var failed: Int32?

            public var name: String?

            public var pulled: Int32?

            public var queue: Int32?

            public var running: Int32?

            public var success: Int32?

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
                if self.failed != nil {
                    map["Failed"] = self.failed!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.pulled != nil {
                    map["Pulled"] = self.pulled!
                }
                if self.queue != nil {
                    map["Queue"] = self.queue!
                }
                if self.running != nil {
                    map["Running"] = self.running!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                if self.total != nil {
                    map["Total"] = self.total!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Failed"] as? Int32 {
                    self.failed = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Pulled"] as? Int32 {
                    self.pulled = value
                }
                if let value = dict["Queue"] as? Int32 {
                    self.queue = value
                }
                if let value = dict["Running"] as? Int32 {
                    self.running = value
                }
                if let value = dict["Success"] as? Int32 {
                    self.success = value
                }
                if let value = dict["Total"] as? Int32 {
                    self.total = value
                }
            }
        }
        public class TotalProgress : Tea.TeaModel {
            public var finished: Int64?

            public var total: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.finished != nil {
                    map["Finished"] = self.finished!
                }
                if self.total != nil {
                    map["Total"] = self.total!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Finished"] as? Int64 {
                    self.finished = value
                }
                if let value = dict["Total"] as? Int64 {
                    self.total = value
                }
            }
        }
        public class WorkerProgress : Tea.TeaModel {
            public var failed: Int32?

            public var pulled: Int32?

            public var queue: Int32?

            public var running: Int32?

            public var success: Int32?

            public var total: Int32?

            public var traceId: String?

            public var workerAddr: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failed != nil {
                    map["Failed"] = self.failed!
                }
                if self.pulled != nil {
                    map["Pulled"] = self.pulled!
                }
                if self.queue != nil {
                    map["Queue"] = self.queue!
                }
                if self.running != nil {
                    map["Running"] = self.running!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                if self.total != nil {
                    map["Total"] = self.total!
                }
                if self.traceId != nil {
                    map["TraceId"] = self.traceId!
                }
                if self.workerAddr != nil {
                    map["WorkerAddr"] = self.workerAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Failed"] as? Int32 {
                    self.failed = value
                }
                if let value = dict["Pulled"] as? Int32 {
                    self.pulled = value
                }
                if let value = dict["Queue"] as? Int32 {
                    self.queue = value
                }
                if let value = dict["Running"] as? Int32 {
                    self.running = value
                }
                if let value = dict["Success"] as? Int32 {
                    self.success = value
                }
                if let value = dict["Total"] as? Int32 {
                    self.total = value
                }
                if let value = dict["TraceId"] as? String {
                    self.traceId = value
                }
                if let value = dict["WorkerAddr"] as? String {
                    self.workerAddr = value
                }
            }
        }
        public var jobDescription: String?

        public var rootProgress: GetJobExecutionProgressResponseBody.Data.RootProgress?

        public var shardingProgress: [GetJobExecutionProgressResponseBody.Data.ShardingProgress]?

        public var taskProgress: [GetJobExecutionProgressResponseBody.Data.TaskProgress]?

        public var totalProgress: GetJobExecutionProgressResponseBody.Data.TotalProgress?

        public var workerProgress: [GetJobExecutionProgressResponseBody.Data.WorkerProgress]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.rootProgress?.validate()
            try self.totalProgress?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobDescription != nil {
                map["JobDescription"] = self.jobDescription!
            }
            if self.rootProgress != nil {
                map["RootProgress"] = self.rootProgress?.toMap()
            }
            if self.shardingProgress != nil {
                var tmp : [Any] = []
                for k in self.shardingProgress! {
                    tmp.append(k.toMap())
                }
                map["ShardingProgress"] = tmp
            }
            if self.taskProgress != nil {
                var tmp : [Any] = []
                for k in self.taskProgress! {
                    tmp.append(k.toMap())
                }
                map["TaskProgress"] = tmp
            }
            if self.totalProgress != nil {
                map["TotalProgress"] = self.totalProgress?.toMap()
            }
            if self.workerProgress != nil {
                var tmp : [Any] = []
                for k in self.workerProgress! {
                    tmp.append(k.toMap())
                }
                map["WorkerProgress"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobDescription"] as? String {
                self.jobDescription = value
            }
            if let value = dict["RootProgress"] as? [String: Any?] {
                var model = GetJobExecutionProgressResponseBody.Data.RootProgress()
                model.fromMap(value)
                self.rootProgress = model
            }
            if let value = dict["ShardingProgress"] as? [Any?] {
                var tmp : [GetJobExecutionProgressResponseBody.Data.ShardingProgress] = []
                for v in value {
                    if v != nil {
                        var model = GetJobExecutionProgressResponseBody.Data.ShardingProgress()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.shardingProgress = tmp
            }
            if let value = dict["TaskProgress"] as? [Any?] {
                var tmp : [GetJobExecutionProgressResponseBody.Data.TaskProgress] = []
                for v in value {
                    if v != nil {
                        var model = GetJobExecutionProgressResponseBody.Data.TaskProgress()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskProgress = tmp
            }
            if let value = dict["TotalProgress"] as? [String: Any?] {
                var model = GetJobExecutionProgressResponseBody.Data.TotalProgress()
                model.fromMap(value)
                self.totalProgress = model
            }
            if let value = dict["WorkerProgress"] as? [Any?] {
                var tmp : [GetJobExecutionProgressResponseBody.Data.WorkerProgress] = []
                for v in value {
                    if v != nil {
                        var model = GetJobExecutionProgressResponseBody.Data.WorkerProgress()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.workerProgress = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetJobExecutionProgressResponseBody.Data?

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
            var model = GetJobExecutionProgressResponseBody.Data()
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

public class GetJobExecutionProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobExecutionProgressResponseBody?

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
            var model = GetJobExecutionProgressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobExecutionThreadDumpRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var executorAddr: String?

    public var jobExecutionId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.executorAddr != nil {
            map["ExecutorAddr"] = self.executorAddr!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ExecutorAddr"] as? String {
            self.executorAddr = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
    }
}

public class GetJobExecutionThreadDumpResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dump: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dump != nil {
                map["Dump"] = self.dump!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Dump"] as? String {
                self.dump = value
            }
        }
    }
    public var code: Int32?

    public var data: GetJobExecutionThreadDumpResponseBody.Data?

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
            var model = GetJobExecutionThreadDumpResponseBody.Data()
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

public class GetJobExecutionThreadDumpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobExecutionThreadDumpResponseBody?

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
            var model = GetJobExecutionThreadDumpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var endTime: Int64?

    public var jobExecutionId: String?

    public var keyword: String?

    public var level: String?

    public var lineNum: Int32?

    public var logId: Int64?

    public var offset: Int32?

    public var reverse: Bool?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.lineNum != nil {
            map["LineNum"] = self.lineNum!
        }
        if self.logId != nil {
            map["LogId"] = self.logId!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["LineNum"] as? Int32 {
            self.lineNum = value
        }
        if let value = dict["LogId"] as? Int64 {
            self.logId = value
        }
        if let value = dict["Offset"] as? Int32 {
            self.offset = value
        }
        if let value = dict["Reverse"] as? Bool {
            self.reverse = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class GetLogResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String]?

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
        if let value = dict["Data"] as? [String] {
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

public class GetLogEventRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var endTime: Int64?

    public var event: String?

    public var jobExecutionId: Int64?

    public var jobName: String?

    public var keyword: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var reverse: Bool?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.event != nil {
            map["Event"] = self.event!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Event"] as? String {
            self.event = value
        }
        if let value = dict["JobExecutionId"] as? Int64 {
            self.jobExecutionId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Reverse"] as? Bool {
            self.reverse = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class GetLogEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var appName: String?

            public var content: String?

            public var event: String?

            public var jobExecutionId: String?

            public var jobName: String?

            public var time: String?

            public var workerAddr: String?

            public override init() {
                super.init()
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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.event != nil {
                    map["Event"] = self.event!
                }
                if self.jobExecutionId != nil {
                    map["JobExecutionId"] = self.jobExecutionId!
                }
                if self.jobName != nil {
                    map["JobName"] = self.jobName!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.workerAddr != nil {
                    map["WorkerAddr"] = self.workerAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Event"] as? String {
                    self.event = value
                }
                if let value = dict["JobExecutionId"] as? String {
                    self.jobExecutionId = value
                }
                if let value = dict["JobName"] as? String {
                    self.jobName = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
                if let value = dict["WorkerAddr"] as? String {
                    self.workerAddr = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var records: [GetLogEventResponseBody.Data.Records]?

        public var total: Int64?

        public override init() {
            super.init()
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
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
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
            if let value = dict["Records"] as? [Any?] {
                var tmp : [GetLogEventResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetLogEventResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: GetLogEventResponseBody.Data?

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
            var model = GetLogEventResponseBody.Data()
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

public class GetLogEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogEventResponseBody?

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
            var model = GetLogEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportCalendarRequest : Tea.TeaModel {
    public var clusterId: String?

    public var months: String?

    public var name: String?

    public var year: Int32?

    public override init() {
        super.init()
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
        if self.months != nil {
            map["Months"] = self.months!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.year != nil {
            map["Year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Months"] as? String {
            self.months = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Year"] as? Int32 {
            self.year = value
        }
    }
}

public class ImportCalendarResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String]?

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
        if let value = dict["Data"] as? [String] {
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

public class ImportCalendarResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportCalendarResponseBody?

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
            var model = ImportCalendarResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportJobsRequest : Tea.TeaModel {
    public var autoCreateApp: Bool?

    public var clusterId: String?

    public var content: String?

    public var overwrite: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateApp != nil {
            map["AutoCreateApp"] = self.autoCreateApp!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.overwrite != nil {
            map["Overwrite"] = self.overwrite!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateApp"] as? Bool {
            self.autoCreateApp = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Overwrite"] as? Bool {
            self.overwrite = value
        }
    }
}

public class ImportJobsResponseBody : Tea.TeaModel {
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

public class ImportJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportJobsResponseBody?

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
            var model = ImportJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlarmEventRequest : Tea.TeaModel {
    public var alarmChannel: String?

    public var alarmStatus: String?

    public var alarmType: String?

    public var appName: String?

    public var clusterId: String?

    public var endTime: Int64?

    public var jobName: String?

    public var pageNum: String?

    public var pageSize: String?

    public var reverse: Bool?

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
        if self.alarmChannel != nil {
            map["AlarmChannel"] = self.alarmChannel!
        }
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus!
        }
        if self.alarmType != nil {
            map["AlarmType"] = self.alarmType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmChannel"] as? String {
            self.alarmChannel = value
        }
        if let value = dict["AlarmStatus"] as? String {
            self.alarmStatus = value
        }
        if let value = dict["AlarmType"] as? String {
            self.alarmType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["PageNum"] as? String {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Reverse"] as? Bool {
            self.reverse = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ListAlarmEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var alarmChannel: String?

            public var alarmContacts: String?

            public var alarmMessage: String?

            public var alarmStatus: String?

            public var alarmType: String?

            public var appName: String?

            public var jobName: String?

            public var time: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alarmChannel != nil {
                    map["AlarmChannel"] = self.alarmChannel!
                }
                if self.alarmContacts != nil {
                    map["AlarmContacts"] = self.alarmContacts!
                }
                if self.alarmMessage != nil {
                    map["AlarmMessage"] = self.alarmMessage!
                }
                if self.alarmStatus != nil {
                    map["AlarmStatus"] = self.alarmStatus!
                }
                if self.alarmType != nil {
                    map["AlarmType"] = self.alarmType!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.jobName != nil {
                    map["JobName"] = self.jobName!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlarmChannel"] as? String {
                    self.alarmChannel = value
                }
                if let value = dict["AlarmContacts"] as? String {
                    self.alarmContacts = value
                }
                if let value = dict["AlarmMessage"] as? String {
                    self.alarmMessage = value
                }
                if let value = dict["AlarmStatus"] as? String {
                    self.alarmStatus = value
                }
                if let value = dict["AlarmType"] as? String {
                    self.alarmType = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["JobName"] as? String {
                    self.jobName = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var records: [ListAlarmEventResponseBody.Data.Records]?

        public var total: Int64?

        public override init() {
            super.init()
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
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
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
            if let value = dict["Records"] as? [Any?] {
                var tmp : [ListAlarmEventResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = ListAlarmEventResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: ListAlarmEventResponseBody.Data?

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
            var model = ListAlarmEventResponseBody.Data()
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

public class ListAlarmEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlarmEventResponseBody?

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
            var model = ListAlarmEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppNamesRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class ListAppNamesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appGroupId: String?

        public var appName: String?

        public var id: Int64?

        public var title: String?

        public override init() {
            super.init()
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
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppGroupId"] as? String {
                self.appGroupId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var code: Int32?

    public var data: [ListAppNamesResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListAppNamesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAppNamesResponseBody.Data()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListAppNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppNamesResponseBody?

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
            var model = ListAppNamesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAppsRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var title: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class ListAppsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var accessToken: String?

            public var appName: String?

            public var creator: String?

            public var enableLog: Bool?

            public var executorNum: Int64?

            public var id: Int64?

            public var jobNum: Int32?

            public var labelRouteStrategy: Int32?

            public var leader: String?

            public var maxConcurrency: Int32?

            public var maxJobs: Int32?

            public var title: String?

            public var updater: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessToken != nil {
                    map["AccessToken"] = self.accessToken!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.enableLog != nil {
                    map["EnableLog"] = self.enableLog!
                }
                if self.executorNum != nil {
                    map["ExecutorNum"] = self.executorNum!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.jobNum != nil {
                    map["JobNum"] = self.jobNum!
                }
                if self.labelRouteStrategy != nil {
                    map["LabelRouteStrategy"] = self.labelRouteStrategy!
                }
                if self.leader != nil {
                    map["Leader"] = self.leader!
                }
                if self.maxConcurrency != nil {
                    map["MaxConcurrency"] = self.maxConcurrency!
                }
                if self.maxJobs != nil {
                    map["MaxJobs"] = self.maxJobs!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.updater != nil {
                    map["Updater"] = self.updater!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessToken"] as? String {
                    self.accessToken = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["EnableLog"] as? Bool {
                    self.enableLog = value
                }
                if let value = dict["ExecutorNum"] as? Int64 {
                    self.executorNum = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["JobNum"] as? Int32 {
                    self.jobNum = value
                }
                if let value = dict["LabelRouteStrategy"] as? Int32 {
                    self.labelRouteStrategy = value
                }
                if let value = dict["Leader"] as? String {
                    self.leader = value
                }
                if let value = dict["MaxConcurrency"] as? Int32 {
                    self.maxConcurrency = value
                }
                if let value = dict["MaxJobs"] as? Int32 {
                    self.maxJobs = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Updater"] as? String {
                    self.updater = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var records: [ListAppsResponseBody.Data.Records]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
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
            if let value = dict["Records"] as? [Any?] {
                var tmp : [ListAppsResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = ListAppsResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: ListAppsResponseBody.Data?

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
            var model = ListAppsResponseBody.Data()
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

public class ListAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppsResponseBody?

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
            var model = ListAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCalendarNamesRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class ListCalendarNamesResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String]?

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
        if let value = dict["Data"] as? [String] {
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

public class ListCalendarNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCalendarNamesResponseBody?

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
            var model = ListCalendarNamesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
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
    public var clusterId: String?

    public var clusterName: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var tag: [ListClustersRequest.Tag]?

    public override init() {
        super.init()
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
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListClustersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListClustersRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public class VSwitches : Tea.TeaModel {
                public var vSwitchId: String?

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
                    if self.vSwitchId != nil {
                        map["VSwitchId"] = self.vSwitchId!
                    }
                    if self.zoneId != nil {
                        map["ZoneId"] = self.zoneId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["VSwitchId"] as? String {
                        self.vSwitchId = value
                    }
                    if let value = dict["ZoneId"] as? String {
                        self.zoneId = value
                    }
                }
            }
            public var chargeType: String?

            public var clusterId: String?

            public var clusterName: String?

            public var clusterSpec: String?

            public var createTime: String?

            public var endTime: String?

            public var engineType: String?

            public var engineVersion: String?

            public var internetDomain: String?

            public var intranetDomain: String?

            public var productType: Int32?

            public var spInstanceId: String?

            public var status: Int32?

            public var tags: [String: Any]?

            public var vSwitches: [ListClustersResponseBody.Data.Records.VSwitches]?

            public var versionLifecycle: String?

            public var vpcId: String?

            public override init() {
                super.init()
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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.clusterSpec != nil {
                    map["ClusterSpec"] = self.clusterSpec!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.engineType != nil {
                    map["EngineType"] = self.engineType!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.internetDomain != nil {
                    map["InternetDomain"] = self.internetDomain!
                }
                if self.intranetDomain != nil {
                    map["IntranetDomain"] = self.intranetDomain!
                }
                if self.productType != nil {
                    map["ProductType"] = self.productType!
                }
                if self.spInstanceId != nil {
                    map["SpInstanceId"] = self.spInstanceId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                if self.vSwitches != nil {
                    var tmp : [Any] = []
                    for k in self.vSwitches! {
                        tmp.append(k.toMap())
                    }
                    map["VSwitches"] = tmp
                }
                if self.versionLifecycle != nil {
                    map["VersionLifecycle"] = self.versionLifecycle!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["ClusterName"] as? String {
                    self.clusterName = value
                }
                if let value = dict["ClusterSpec"] as? String {
                    self.clusterSpec = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["EngineType"] as? String {
                    self.engineType = value
                }
                if let value = dict["EngineVersion"] as? String {
                    self.engineVersion = value
                }
                if let value = dict["InternetDomain"] as? String {
                    self.internetDomain = value
                }
                if let value = dict["IntranetDomain"] as? String {
                    self.intranetDomain = value
                }
                if let value = dict["ProductType"] as? Int32 {
                    self.productType = value
                }
                if let value = dict["SpInstanceId"] as? String {
                    self.spInstanceId = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["Tags"] as? [String: Any] {
                    self.tags = value
                }
                if let value = dict["VSwitches"] as? [Any?] {
                    var tmp : [ListClustersResponseBody.Data.Records.VSwitches] = []
                    for v in value {
                        if v != nil {
                            var model = ListClustersResponseBody.Data.Records.VSwitches()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.vSwitches = tmp
                }
                if let value = dict["VersionLifecycle"] as? String {
                    self.versionLifecycle = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var records: [ListClustersResponseBody.Data.Records]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
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
            if let value = dict["Records"] as? [Any?] {
                var tmp : [ListClustersResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = ListClustersResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: ListClustersResponseBody.Data?

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
            var model = ListClustersResponseBody.Data()
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

public class ListClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClustersResponseBody?

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
            var model = ListClustersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExecutorsRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobId: Int64?

    public var label: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
    }
}

public class ListExecutorsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var address: String?

        public var ip: String?

        public var isDesignated: Bool?

        public var label: String?

        public var online: Bool?

        public var port: Int32?

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
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.isDesignated != nil {
                map["IsDesignated"] = self.isDesignated!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["IsDesignated"] as? Bool {
                self.isDesignated = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Online"] as? Bool {
                self.online = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var code: Int32?

    public var data: [ListExecutorsResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListExecutorsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListExecutorsResponseBody.Data()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListExecutorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutorsResponseBody?

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
            var model = ListExecutorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobExecutionsRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var endTime: String?

    public var jobExecutionId: String?

    public var jobId: Int64?

    public var jobName: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class ListJobExecutionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var appName: String?

            public var attempt: Int32?

            public var dataTime: String?

            public var duration: Int64?

            public var endTime: String?

            public var executor: String?

            public var jobExecutionId: String?

            public var jobId: Int64?

            public var jobName: String?

            public var jobType: String?

            public var parameters: String?

            public var result: String?

            public var routeStrategy: Int32?

            public var scheduleTime: String?

            public var serverIp: String?

            public var status: Int32?

            public var timeType: Int32?

            public var totalTokens: Int32?

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
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.attempt != nil {
                    map["Attempt"] = self.attempt!
                }
                if self.dataTime != nil {
                    map["DataTime"] = self.dataTime!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.executor != nil {
                    map["Executor"] = self.executor!
                }
                if self.jobExecutionId != nil {
                    map["JobExecutionId"] = self.jobExecutionId!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobName != nil {
                    map["JobName"] = self.jobName!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.routeStrategy != nil {
                    map["RouteStrategy"] = self.routeStrategy!
                }
                if self.scheduleTime != nil {
                    map["ScheduleTime"] = self.scheduleTime!
                }
                if self.serverIp != nil {
                    map["ServerIp"] = self.serverIp!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeType != nil {
                    map["TimeType"] = self.timeType!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
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
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["Attempt"] as? Int32 {
                    self.attempt = value
                }
                if let value = dict["DataTime"] as? String {
                    self.dataTime = value
                }
                if let value = dict["Duration"] as? Int64 {
                    self.duration = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Executor"] as? String {
                    self.executor = value
                }
                if let value = dict["JobExecutionId"] as? String {
                    self.jobExecutionId = value
                }
                if let value = dict["JobId"] as? Int64 {
                    self.jobId = value
                }
                if let value = dict["JobName"] as? String {
                    self.jobName = value
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["Parameters"] as? String {
                    self.parameters = value
                }
                if let value = dict["Result"] as? String {
                    self.result = value
                }
                if let value = dict["RouteStrategy"] as? Int32 {
                    self.routeStrategy = value
                }
                if let value = dict["ScheduleTime"] as? String {
                    self.scheduleTime = value
                }
                if let value = dict["ServerIp"] as? String {
                    self.serverIp = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["TimeType"] as? Int32 {
                    self.timeType = value
                }
                if let value = dict["TotalTokens"] as? Int32 {
                    self.totalTokens = value
                }
                if let value = dict["TriggerType"] as? Int32 {
                    self.triggerType = value
                }
                if let value = dict["WorkAddr"] as? String {
                    self.workAddr = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var records: [ListJobExecutionsResponseBody.Data.Records]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
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
            if let value = dict["Records"] as? [Any?] {
                var tmp : [ListJobExecutionsResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = ListJobExecutionsResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: ListJobExecutionsResponseBody.Data?

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
            var model = ListJobExecutionsResponseBody.Data()
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

public class ListJobExecutionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobExecutionsResponseBody?

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
            var model = ListJobExecutionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobScriptHistoryRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobId: Int64?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListJobScriptHistoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var createTime: String?

            public var creator: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
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
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["ScriptContent"] as? String {
                    self.scriptContent = value
                }
                if let value = dict["VersionDescription"] as? String {
                    self.versionDescription = value
                }
            }
        }
        public var nextToken: String?

        public var records: [ListJobScriptHistoryResponseBody.Data.Records]?

        public var total: String?

        public override init() {
            super.init()
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
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [ListJobScriptHistoryResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = ListJobScriptHistoryResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["Total"] as? String {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: ListJobScriptHistoryResponseBody.Data?

    public var maxResults: Int32?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
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
    public var appName: String?

    public var clusterId: String?

    public var description_: String?

    public var jobHandler: String?

    public var jobId: Int64?

    public var jobName: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.jobHandler != nil {
            map["JobHandler"] = self.jobHandler!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["JobHandler"] as? String {
            self.jobHandler = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var appName: String?

            public var attemptInterval: Int32?

            public var calendar: String?

            public var childJobId: String?

            public var cleanMode: String?

            public var creator: String?

            public var currentExecuteStatus: Int32?

            public var dataOffset: Int32?

            public var description_: String?

            public var executorBlockStrategy: String?

            public var jobHandler: String?

            public var jobId: Int64?

            public var jobType: String?

            public var lastExecuteEndTime: String?

            public var lastExecuteStatus: Int32?

            public var maxAttempt: Int32?

            public var maxConcurrency: Int32?

            public var name: String?

            public var noticeConfig: String?

            public var noticeContacts: String?

            public var parameters: String?

            public var priority: Int32?

            public var routeStrategy: Int32?

            public var script: String?

            public var status: Int32?

            public var timeExpression: String?

            public var timeType: Int32?

            public var timeZone: String?

            public var timezone: String?

            public var updater: String?

            public var xattrs: String?

            public override init() {
                super.init()
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
                if self.attemptInterval != nil {
                    map["AttemptInterval"] = self.attemptInterval!
                }
                if self.calendar != nil {
                    map["Calendar"] = self.calendar!
                }
                if self.childJobId != nil {
                    map["ChildJobId"] = self.childJobId!
                }
                if self.cleanMode != nil {
                    map["CleanMode"] = self.cleanMode!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.currentExecuteStatus != nil {
                    map["CurrentExecuteStatus"] = self.currentExecuteStatus!
                }
                if self.dataOffset != nil {
                    map["DataOffset"] = self.dataOffset!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.executorBlockStrategy != nil {
                    map["ExecutorBlockStrategy"] = self.executorBlockStrategy!
                }
                if self.jobHandler != nil {
                    map["JobHandler"] = self.jobHandler!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.lastExecuteEndTime != nil {
                    map["LastExecuteEndTime"] = self.lastExecuteEndTime!
                }
                if self.lastExecuteStatus != nil {
                    map["LastExecuteStatus"] = self.lastExecuteStatus!
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
                if self.noticeConfig != nil {
                    map["NoticeConfig"] = self.noticeConfig!
                }
                if self.noticeContacts != nil {
                    map["NoticeContacts"] = self.noticeContacts!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.routeStrategy != nil {
                    map["RouteStrategy"] = self.routeStrategy!
                }
                if self.script != nil {
                    map["Script"] = self.script!
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
                if self.timeZone != nil {
                    map["TimeZone"] = self.timeZone!
                }
                if self.timezone != nil {
                    map["Timezone"] = self.timezone!
                }
                if self.updater != nil {
                    map["Updater"] = self.updater!
                }
                if self.xattrs != nil {
                    map["Xattrs"] = self.xattrs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["AttemptInterval"] as? Int32 {
                    self.attemptInterval = value
                }
                if let value = dict["Calendar"] as? String {
                    self.calendar = value
                }
                if let value = dict["ChildJobId"] as? String {
                    self.childJobId = value
                }
                if let value = dict["CleanMode"] as? String {
                    self.cleanMode = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["CurrentExecuteStatus"] as? Int32 {
                    self.currentExecuteStatus = value
                }
                if let value = dict["DataOffset"] as? Int32 {
                    self.dataOffset = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ExecutorBlockStrategy"] as? String {
                    self.executorBlockStrategy = value
                }
                if let value = dict["JobHandler"] as? String {
                    self.jobHandler = value
                }
                if let value = dict["JobId"] as? Int64 {
                    self.jobId = value
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["LastExecuteEndTime"] as? String {
                    self.lastExecuteEndTime = value
                }
                if let value = dict["LastExecuteStatus"] as? Int32 {
                    self.lastExecuteStatus = value
                }
                if let value = dict["MaxAttempt"] as? Int32 {
                    self.maxAttempt = value
                }
                if let value = dict["MaxConcurrency"] as? Int32 {
                    self.maxConcurrency = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NoticeConfig"] as? String {
                    self.noticeConfig = value
                }
                if let value = dict["NoticeContacts"] as? String {
                    self.noticeContacts = value
                }
                if let value = dict["Parameters"] as? String {
                    self.parameters = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
                if let value = dict["RouteStrategy"] as? Int32 {
                    self.routeStrategy = value
                }
                if let value = dict["Script"] as? String {
                    self.script = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["TimeExpression"] as? String {
                    self.timeExpression = value
                }
                if let value = dict["TimeType"] as? Int32 {
                    self.timeType = value
                }
                if let value = dict["TimeZone"] as? String {
                    self.timeZone = value
                }
                if let value = dict["Timezone"] as? String {
                    self.timezone = value
                }
                if let value = dict["Updater"] as? String {
                    self.updater = value
                }
                if let value = dict["Xattrs"] as? String {
                    self.xattrs = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var records: [ListJobsResponseBody.Data.Records]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
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
            if let value = dict["Records"] as? [Any?] {
                var tmp : [ListJobsResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = ListJobsResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
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

public class ListLablesRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
    }
}

public class ListLablesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isDesignated: Bool?

        public var label: String?

        public var online: Bool?

        public var size: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isDesignated != nil {
                map["IsDesignated"] = self.isDesignated!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsDesignated"] as? Bool {
                self.isDesignated = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Online"] as? Bool {
                self.online = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
        }
    }
    public var code: Int32?

    public var data: [ListLablesResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListLablesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListLablesResponseBody.Data()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListLablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLablesResponseBody?

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
            var model = ListLablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegionZoneResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var localName: String?

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
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var code: Int32?

    public var data: [ListRegionZoneResponseBody.Data]?

    public var errorCode: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListRegionZoneResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListRegionZoneResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
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

public class ListRegionZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionZoneResponseBody?

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
            var model = ListRegionZoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
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

    public var regions: [ListRegionsResponseBody.Regions]?

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
            var tmp : [ListRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = ListRegionsResponseBody.Regions()
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

public class ListScheduleEventRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var endTime: Int64?

    public var event: String?

    public var eventType: String?

    public var jobExecutionId: String?

    public var jobName: String?

    public var keyword: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var reverse: Bool?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.event != nil {
            map["Event"] = self.event!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Event"] as? String {
            self.event = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Reverse"] as? Bool {
            self.reverse = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ListScheduleEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var appName: String?

            public var content: String?

            public var event: String?

            public var jobExecutionId: String?

            public var jobName: String?

            public var time: String?

            public var workerAddr: String?

            public override init() {
                super.init()
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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.event != nil {
                    map["Event"] = self.event!
                }
                if self.jobExecutionId != nil {
                    map["JobExecutionId"] = self.jobExecutionId!
                }
                if self.jobName != nil {
                    map["JobName"] = self.jobName!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                if self.workerAddr != nil {
                    map["WorkerAddr"] = self.workerAddr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Event"] as? String {
                    self.event = value
                }
                if let value = dict["JobExecutionId"] as? String {
                    self.jobExecutionId = value
                }
                if let value = dict["JobName"] as? String {
                    self.jobName = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
                if let value = dict["WorkerAddr"] as? String {
                    self.workerAddr = value
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var records: [ListScheduleEventResponseBody.Data.Records]?

        public var total: Int64?

        public override init() {
            super.init()
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
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
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
            if let value = dict["Records"] as? [Any?] {
                var tmp : [ListScheduleEventResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = ListScheduleEventResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: Int32?

    public var data: ListScheduleEventResponseBody.Data?

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
            var model = ListScheduleEventResponseBody.Data()
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

public class ListScheduleEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScheduleEventResponseBody?

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
            var model = ListScheduleEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScheduleTimesRequest : Tea.TeaModel {
    public var appName: String?

    public var calendar: String?

    public var clusterId: String?

    public var timeExpression: String?

    public var timeType: Int32?

    public var timeZone: String?

    public override init() {
        super.init()
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
        if self.calendar != nil {
            map["Calendar"] = self.calendar!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.timeExpression != nil {
            map["TimeExpression"] = self.timeExpression!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Calendar"] as? String {
            self.calendar = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["TimeExpression"] as? String {
            self.timeExpression = value
        }
        if let value = dict["TimeType"] as? Int32 {
            self.timeType = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
    }
}

public class ListScheduleTimesResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [String]?

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
        if let value = dict["Data"] as? [String] {
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

public class ListScheduleTimesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScheduleTimesResponseBody?

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
            var model = ListScheduleTimesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateDesignateExecutorsRequest : Tea.TeaModel {
    public var addressList: [String]?

    public var appName: String?

    public var clusterId: String?

    public var designateType: Int32?

    public var jobId: Int64?

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
        if self.addressList != nil {
            map["AddressList"] = self.addressList!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.designateType != nil {
            map["DesignateType"] = self.designateType!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.transferable != nil {
            map["Transferable"] = self.transferable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressList"] as? [String] {
            self.addressList = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DesignateType"] as? Int32 {
            self.designateType = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Transferable"] as? Bool {
            self.transferable = value
        }
    }
}

public class OperateDesignateExecutorsShrinkRequest : Tea.TeaModel {
    public var addressListShrink: String?

    public var appName: String?

    public var clusterId: String?

    public var designateType: Int32?

    public var jobId: Int64?

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
        if self.addressListShrink != nil {
            map["AddressList"] = self.addressListShrink!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.designateType != nil {
            map["DesignateType"] = self.designateType!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.transferable != nil {
            map["Transferable"] = self.transferable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressList"] as? String {
            self.addressListShrink = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DesignateType"] as? Int32 {
            self.designateType = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Transferable"] as? Bool {
            self.transferable = value
        }
    }
}

public class OperateDesignateExecutorsResponseBody : Tea.TeaModel {
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

public class OperateDesignateExecutorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateDesignateExecutorsResponseBody?

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
            var model = OperateDesignateExecutorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateDisableJobsRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobIds: [Int64]?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobIds"] as? [Int64] {
            self.jobIds = value
        }
    }
}

public class OperateDisableJobsShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobIdsShrink: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobIdsShrink != nil {
            map["JobIds"] = self.jobIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobIds"] as? String {
            self.jobIdsShrink = value
        }
    }
}

public class OperateDisableJobsResponseBody : Tea.TeaModel {
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

public class OperateDisableJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateDisableJobsResponseBody?

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
            var model = OperateDisableJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateEnableJobsRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobIds: [Int64]?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobIds"] as? [Int64] {
            self.jobIds = value
        }
    }
}

public class OperateEnableJobsShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobIdsShrink: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobIdsShrink != nil {
            map["JobIds"] = self.jobIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobIds"] as? String {
            self.jobIdsShrink = value
        }
    }
}

public class OperateEnableJobsResponseBody : Tea.TeaModel {
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

public class OperateEnableJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateEnableJobsResponseBody?

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
            var model = OperateEnableJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateExecuteJobRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var instanceParameters: String?

    public var jobId: Int64?

    public var label: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if self.worker != nil {
            map["Worker"] = self.worker!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
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
        if let value = dict["Worker"] as? String {
            self.worker = value
        }
    }
}

public class OperateExecuteJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobExecutionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobExecutionId != nil {
                map["JobExecutionId"] = self.jobExecutionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobExecutionId"] as? String {
                self.jobExecutionId = value
            }
        }
    }
    public var code: Int32?

    public var data: OperateExecuteJobResponseBody.Data?

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
            var model = OperateExecuteJobResponseBody.Data()
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

public class OperateExecuteJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateExecuteJobResponseBody?

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
            var model = OperateExecuteJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateRerunJobRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var dataTime: String?

    public var endDate: Int64?

    public var jobId: Int64?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dataTime != nil {
            map["DataTime"] = self.dataTime!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DataTime"] as? String {
            self.dataTime = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
    }
}

public class OperateRerunJobResponseBody : Tea.TeaModel {
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

public class OperateRerunJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateRerunJobResponseBody?

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
            var model = OperateRerunJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateRetryJobExecutionRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobExecutionId: String?

    public var taskList: [String]?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        if self.taskList != nil {
            map["TaskList"] = self.taskList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
        if let value = dict["TaskList"] as? [String] {
            self.taskList = value
        }
    }
}

public class OperateRetryJobExecutionShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobExecutionId: String?

    public var taskListShrink: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        if self.taskListShrink != nil {
            map["TaskList"] = self.taskListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
        if let value = dict["TaskList"] as? String {
            self.taskListShrink = value
        }
    }
}

public class OperateRetryJobExecutionResponseBody : Tea.TeaModel {
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

public class OperateRetryJobExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateRetryJobExecutionResponseBody?

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
            var model = OperateRetryJobExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateStopJobExecutionRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobExecutionId: String?

    public var taskList: [String]?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        if self.taskList != nil {
            map["TaskList"] = self.taskList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
        if let value = dict["TaskList"] as? [String] {
            self.taskList = value
        }
    }
}

public class OperateStopJobExecutionShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var clusterId: String?

    public var jobExecutionId: String?

    public var taskListShrink: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobExecutionId != nil {
            map["JobExecutionId"] = self.jobExecutionId!
        }
        if self.taskListShrink != nil {
            map["TaskList"] = self.taskListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobExecutionId"] as? String {
            self.jobExecutionId = value
        }
        if let value = dict["TaskList"] as? String {
            self.taskListShrink = value
        }
    }
}

public class OperateStopJobExecutionResponseBody : Tea.TeaModel {
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

public class OperateStopJobExecutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateStopJobExecutionResponseBody?

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
            var model = OperateStopJobExecutionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAppRequest : Tea.TeaModel {
    public var accessToken: String?

    public var appName: String?

    public var clusterId: String?

    public var enableLog: Bool?

    public var labelRouteStrategy: Int32?

    public var maxConcurrency: Int32?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.enableLog != nil {
            map["EnableLog"] = self.enableLog!
        }
        if self.labelRouteStrategy != nil {
            map["LabelRouteStrategy"] = self.labelRouteStrategy!
        }
        if self.maxConcurrency != nil {
            map["MaxConcurrency"] = self.maxConcurrency!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["EnableLog"] as? Bool {
            self.enableLog = value
        }
        if let value = dict["LabelRouteStrategy"] as? Int32 {
            self.labelRouteStrategy = value
        }
        if let value = dict["MaxConcurrency"] as? Int32 {
            self.maxConcurrency = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateAppResponseBody : Tea.TeaModel {
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

public class UpdateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppResponseBody?

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
            var model = UpdateAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateClusterRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
    }
}

public class UpdateClusterResponseBody : Tea.TeaModel {
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

public class UpdateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClusterResponseBody?

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
            var model = UpdateClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateJobRequest : Tea.TeaModel {
    public class NoticeConfig : Tea.TeaModel {
        public var failEnable: Bool?

        public var failLimitTimes: Int32?

        public var missWorkerEnable: Bool?

        public var sendChannel: String?

        public var successNotice: Bool?

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
            if self.failLimitTimes != nil {
                map["FailLimitTimes"] = self.failLimitTimes!
            }
            if self.missWorkerEnable != nil {
                map["MissWorkerEnable"] = self.missWorkerEnable!
            }
            if self.sendChannel != nil {
                map["SendChannel"] = self.sendChannel!
            }
            if self.successNotice != nil {
                map["SuccessNotice"] = self.successNotice!
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
            if let value = dict["FailLimitTimes"] as? Int32 {
                self.failLimitTimes = value
            }
            if let value = dict["MissWorkerEnable"] as? Bool {
                self.missWorkerEnable = value
            }
            if let value = dict["SendChannel"] as? String {
                self.sendChannel = value
            }
            if let value = dict["SuccessNotice"] as? Bool {
                self.successNotice = value
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
    public class NoticeContacts : Tea.TeaModel {
        public var contactType: Int32?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactType != nil {
                map["ContactType"] = self.contactType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactType"] as? Int32 {
                self.contactType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var appName: String?

    public var attemptInterval: Int32?

    public var calendar: String?

    public var childJobId: String?

    public var clusterId: String?

    public var description_: String?

    public var executorBlockStrategy: Int32?

    public var jobHandler: String?

    public var jobId: Int64?

    public var maxAttempt: Int32?

    public var maxConcurrency: Int32?

    public var name: String?

    public var noticeConfig: UpdateJobRequest.NoticeConfig?

    public var noticeContacts: [UpdateJobRequest.NoticeContacts]?

    public var parameters: String?

    public var priority: Int32?

    public var routeStrategy: Int32?

    public var script: String?

    public var startTime: Int64?

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
        try self.noticeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.attemptInterval != nil {
            map["AttemptInterval"] = self.attemptInterval!
        }
        if self.calendar != nil {
            map["Calendar"] = self.calendar!
        }
        if self.childJobId != nil {
            map["ChildJobId"] = self.childJobId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executorBlockStrategy != nil {
            map["ExecutorBlockStrategy"] = self.executorBlockStrategy!
        }
        if self.jobHandler != nil {
            map["JobHandler"] = self.jobHandler!
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.noticeConfig != nil {
            map["NoticeConfig"] = self.noticeConfig?.toMap()
        }
        if self.noticeContacts != nil {
            var tmp : [Any] = []
            for k in self.noticeContacts! {
                tmp.append(k.toMap())
            }
            map["NoticeContacts"] = tmp
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.routeStrategy != nil {
            map["RouteStrategy"] = self.routeStrategy!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
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
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AttemptInterval"] as? Int32 {
            self.attemptInterval = value
        }
        if let value = dict["Calendar"] as? String {
            self.calendar = value
        }
        if let value = dict["ChildJobId"] as? String {
            self.childJobId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutorBlockStrategy"] as? Int32 {
            self.executorBlockStrategy = value
        }
        if let value = dict["JobHandler"] as? String {
            self.jobHandler = value
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
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NoticeConfig"] as? [String: Any?] {
            var model = UpdateJobRequest.NoticeConfig()
            model.fromMap(value)
            self.noticeConfig = model
        }
        if let value = dict["NoticeContacts"] as? [Any?] {
            var tmp : [UpdateJobRequest.NoticeContacts] = []
            for v in value {
                if v != nil {
                    var model = UpdateJobRequest.NoticeContacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.noticeContacts = tmp
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RouteStrategy"] as? Int32 {
            self.routeStrategy = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

public class UpdateJobShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var attemptInterval: Int32?

    public var calendar: String?

    public var childJobId: String?

    public var clusterId: String?

    public var description_: String?

    public var executorBlockStrategy: Int32?

    public var jobHandler: String?

    public var jobId: Int64?

    public var maxAttempt: Int32?

    public var maxConcurrency: Int32?

    public var name: String?

    public var noticeConfigShrink: String?

    public var noticeContactsShrink: String?

    public var parameters: String?

    public var priority: Int32?

    public var routeStrategy: Int32?

    public var script: String?

    public var startTime: Int64?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.attemptInterval != nil {
            map["AttemptInterval"] = self.attemptInterval!
        }
        if self.calendar != nil {
            map["Calendar"] = self.calendar!
        }
        if self.childJobId != nil {
            map["ChildJobId"] = self.childJobId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.executorBlockStrategy != nil {
            map["ExecutorBlockStrategy"] = self.executorBlockStrategy!
        }
        if self.jobHandler != nil {
            map["JobHandler"] = self.jobHandler!
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.noticeConfigShrink != nil {
            map["NoticeConfig"] = self.noticeConfigShrink!
        }
        if self.noticeContactsShrink != nil {
            map["NoticeContacts"] = self.noticeContactsShrink!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.routeStrategy != nil {
            map["RouteStrategy"] = self.routeStrategy!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
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
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AttemptInterval"] as? Int32 {
            self.attemptInterval = value
        }
        if let value = dict["Calendar"] as? String {
            self.calendar = value
        }
        if let value = dict["ChildJobId"] as? String {
            self.childJobId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExecutorBlockStrategy"] as? Int32 {
            self.executorBlockStrategy = value
        }
        if let value = dict["JobHandler"] as? String {
            self.jobHandler = value
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
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NoticeConfig"] as? String {
            self.noticeConfigShrink = value
        }
        if let value = dict["NoticeContacts"] as? String {
            self.noticeContactsShrink = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RouteStrategy"] as? Int32 {
            self.routeStrategy = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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
    public var appName: String?

    public var clusterId: String?

    public var jobId: Int64?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
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
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
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
