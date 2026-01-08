import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeAttackProtectionCountRequest : Tea.TeaModel {
    public var agentType: String?

    public var endTimestamp: Int32?

    public var startTimestamp: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentType != nil {
            map["AgentType"] = self.agentType!
        }
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentType"] as? String {
            self.agentType = value
        }
        if let value = dict["EndTimestamp"] as? Int32 {
            self.endTimestamp = value
        }
        if let value = dict["StartTimestamp"] as? Int32 {
            self.startTimestamp = value
        }
    }
}

public class DescribeAttackProtectionCountResponseBody : Tea.TeaModel {
    public var blockHighCount: Int64?

    public var blockLowCount: Int64?

    public var blockMediumCount: Int64?

    public var monitorHighCount: Int64?

    public var monitorLowCount: Int64?

    public var monitorMediumCount: Int64?

    public var requestId: String?

    public var totalRequestCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blockHighCount != nil {
            map["BlockHighCount"] = self.blockHighCount!
        }
        if self.blockLowCount != nil {
            map["BlockLowCount"] = self.blockLowCount!
        }
        if self.blockMediumCount != nil {
            map["BlockMediumCount"] = self.blockMediumCount!
        }
        if self.monitorHighCount != nil {
            map["MonitorHighCount"] = self.monitorHighCount!
        }
        if self.monitorLowCount != nil {
            map["MonitorLowCount"] = self.monitorLowCount!
        }
        if self.monitorMediumCount != nil {
            map["MonitorMediumCount"] = self.monitorMediumCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRequestCount != nil {
            map["TotalRequestCount"] = self.totalRequestCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlockHighCount"] as? Int64 {
            self.blockHighCount = value
        }
        if let value = dict["BlockLowCount"] as? Int64 {
            self.blockLowCount = value
        }
        if let value = dict["BlockMediumCount"] as? Int64 {
            self.blockMediumCount = value
        }
        if let value = dict["MonitorHighCount"] as? Int64 {
            self.monitorHighCount = value
        }
        if let value = dict["MonitorLowCount"] as? Int64 {
            self.monitorLowCount = value
        }
        if let value = dict["MonitorMediumCount"] as? Int64 {
            self.monitorMediumCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalRequestCount"] as? Int64 {
            self.totalRequestCount = value
        }
    }
}

public class DescribeAttackProtectionCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAttackProtectionCountResponseBody?

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
            var model = DescribeAttackProtectionCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAttacksRequest : Tea.TeaModel {
    public var agentType: String?

    public var applicationId: String?

    public var attackHostId: String?

    public var attackType: String?

    public var attackUrl: String?

    public var endTimestamp: Int64?

    public var handleStatus: Int32?

    public var handlerType: String?

    public var hostname: String?

    public var ip: String?

    public var lang: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var pid: String?

    public var raspType: String?

    public var region: String?

    public var remote: String?

    public var severity: String?

    public var startTimestamp: Int64?

    public var unionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentType != nil {
            map["AgentType"] = self.agentType!
        }
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.attackHostId != nil {
            map["AttackHostId"] = self.attackHostId!
        }
        if self.attackType != nil {
            map["AttackType"] = self.attackType!
        }
        if self.attackUrl != nil {
            map["AttackUrl"] = self.attackUrl!
        }
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.handleStatus != nil {
            map["HandleStatus"] = self.handleStatus!
        }
        if self.handlerType != nil {
            map["HandlerType"] = self.handlerType!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.raspType != nil {
            map["RaspType"] = self.raspType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.remote != nil {
            map["Remote"] = self.remote!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.unionId != nil {
            map["UnionId"] = self.unionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentType"] as? String {
            self.agentType = value
        }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["AttackHostId"] as? String {
            self.attackHostId = value
        }
        if let value = dict["AttackType"] as? String {
            self.attackType = value
        }
        if let value = dict["AttackUrl"] as? String {
            self.attackUrl = value
        }
        if let value = dict["EndTimestamp"] as? Int64 {
            self.endTimestamp = value
        }
        if let value = dict["HandleStatus"] as? Int32 {
            self.handleStatus = value
        }
        if let value = dict["HandlerType"] as? String {
            self.handlerType = value
        }
        if let value = dict["Hostname"] as? String {
            self.hostname = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["RaspType"] as? String {
            self.raspType = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["Remote"] as? String {
            self.remote = value
        }
        if let value = dict["Severity"] as? String {
            self.severity = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
        if let value = dict["UnionId"] as? String {
            self.unionId = value
        }
    }
}

public class DescribeAttacksResponseBody : Tea.TeaModel {
    public class Attacks : Tea.TeaModel {
        public class InputParamItemList : Tea.TeaModel {
            public var processedKey: String?

            public var rawKey: String?

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
                if self.processedKey != nil {
                    map["ProcessedKey"] = self.processedKey!
                }
                if self.rawKey != nil {
                    map["RawKey"] = self.rawKey!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProcessedKey"] as? String {
                    self.processedKey = value
                }
                if let value = dict["RawKey"] as? String {
                    self.rawKey = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var appDir: String?

        public var appId: String?

        public var appName: String?

        public var avd: String?

        public var cmdline: String?

        public var confidence: String?

        public var content: String?

        public var contentLength: Int64?

        public var count: Int64?

        public var data: String?

        public var handleStatus: Int32?

        public var handleTimestamp: Int64?

        public var headers: String?

        public var hostId: String?

        public var hostname: String?

        public var inputParamItemList: [DescribeAttacksResponseBody.Attacks.InputParamItemList]?

        public var installType: Int64?

        public var ip: String?

        public var jdk: String?

        public var language: String?

        public var languageVersion: String?

        public var maxTimestamp: Int64?

        public var message: String?

        public var method: String?

        public var middlewareInstanceId: String?

        public var minTimestamp: Int64?

        public var os: String?

        public var osArch: String?

        public var osVersion: String?

        public var param: String?

        public var payload: String?

        public var payloadLength: Int64?

        public var pid: String?

        public var raspVersion: String?

        public var region: String?

        public var remote: String?

        public var result: String?

        public var ruleResult: String?

        public var severity: String?

        public var stacktrace: [String]?

        public var time: String?

        public var timestamp: Int64?

        public var type: String?

        public var unionId: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appDir != nil {
                map["AppDir"] = self.appDir!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.avd != nil {
                map["Avd"] = self.avd!
            }
            if self.cmdline != nil {
                map["Cmdline"] = self.cmdline!
            }
            if self.confidence != nil {
                map["Confidence"] = self.confidence!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.contentLength != nil {
                map["ContentLength"] = self.contentLength!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.handleStatus != nil {
                map["HandleStatus"] = self.handleStatus!
            }
            if self.handleTimestamp != nil {
                map["HandleTimestamp"] = self.handleTimestamp!
            }
            if self.headers != nil {
                map["Headers"] = self.headers!
            }
            if self.hostId != nil {
                map["HostId"] = self.hostId!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.inputParamItemList != nil {
                var tmp : [Any] = []
                for k in self.inputParamItemList! {
                    tmp.append(k.toMap())
                }
                map["InputParamItemList"] = tmp
            }
            if self.installType != nil {
                map["InstallType"] = self.installType!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.jdk != nil {
                map["Jdk"] = self.jdk!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.languageVersion != nil {
                map["LanguageVersion"] = self.languageVersion!
            }
            if self.maxTimestamp != nil {
                map["MaxTimestamp"] = self.maxTimestamp!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.method != nil {
                map["Method"] = self.method!
            }
            if self.middlewareInstanceId != nil {
                map["MiddlewareInstanceId"] = self.middlewareInstanceId!
            }
            if self.minTimestamp != nil {
                map["MinTimestamp"] = self.minTimestamp!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osArch != nil {
                map["OsArch"] = self.osArch!
            }
            if self.osVersion != nil {
                map["OsVersion"] = self.osVersion!
            }
            if self.param != nil {
                map["Param"] = self.param!
            }
            if self.payload != nil {
                map["Payload"] = self.payload!
            }
            if self.payloadLength != nil {
                map["PayloadLength"] = self.payloadLength!
            }
            if self.pid != nil {
                map["Pid"] = self.pid!
            }
            if self.raspVersion != nil {
                map["RaspVersion"] = self.raspVersion!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.remote != nil {
                map["Remote"] = self.remote!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.ruleResult != nil {
                map["RuleResult"] = self.ruleResult!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.stacktrace != nil {
                map["Stacktrace"] = self.stacktrace!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.unionId != nil {
                map["UnionId"] = self.unionId!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppDir"] as? String {
                self.appDir = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["Avd"] as? String {
                self.avd = value
            }
            if let value = dict["Cmdline"] as? String {
                self.cmdline = value
            }
            if let value = dict["Confidence"] as? String {
                self.confidence = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["ContentLength"] as? Int64 {
                self.contentLength = value
            }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["Data"] as? String {
                self.data = value
            }
            if let value = dict["HandleStatus"] as? Int32 {
                self.handleStatus = value
            }
            if let value = dict["HandleTimestamp"] as? Int64 {
                self.handleTimestamp = value
            }
            if let value = dict["Headers"] as? String {
                self.headers = value
            }
            if let value = dict["HostId"] as? String {
                self.hostId = value
            }
            if let value = dict["Hostname"] as? String {
                self.hostname = value
            }
            if let value = dict["InputParamItemList"] as? [Any?] {
                var tmp : [DescribeAttacksResponseBody.Attacks.InputParamItemList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAttacksResponseBody.Attacks.InputParamItemList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inputParamItemList = tmp
            }
            if let value = dict["InstallType"] as? Int64 {
                self.installType = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Jdk"] as? String {
                self.jdk = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["LanguageVersion"] as? String {
                self.languageVersion = value
            }
            if let value = dict["MaxTimestamp"] as? Int64 {
                self.maxTimestamp = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Method"] as? String {
                self.method = value
            }
            if let value = dict["MiddlewareInstanceId"] as? String {
                self.middlewareInstanceId = value
            }
            if let value = dict["MinTimestamp"] as? Int64 {
                self.minTimestamp = value
            }
            if let value = dict["Os"] as? String {
                self.os = value
            }
            if let value = dict["OsArch"] as? String {
                self.osArch = value
            }
            if let value = dict["OsVersion"] as? String {
                self.osVersion = value
            }
            if let value = dict["Param"] as? String {
                self.param = value
            }
            if let value = dict["Payload"] as? String {
                self.payload = value
            }
            if let value = dict["PayloadLength"] as? Int64 {
                self.payloadLength = value
            }
            if let value = dict["Pid"] as? String {
                self.pid = value
            }
            if let value = dict["RaspVersion"] as? String {
                self.raspVersion = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Remote"] as? String {
                self.remote = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["RuleResult"] as? String {
                self.ruleResult = value
            }
            if let value = dict["Severity"] as? String {
                self.severity = value
            }
            if let value = dict["Stacktrace"] as? [String] {
                self.stacktrace = value
            }
            if let value = dict["Time"] as? String {
                self.time = value
            }
            if let value = dict["Timestamp"] as? Int64 {
                self.timestamp = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UnionId"] as? String {
                self.unionId = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var attacks: [DescribeAttacksResponseBody.Attacks]?

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
        if self.attacks != nil {
            var tmp : [Any] = []
            for k in self.attacks! {
                tmp.append(k.toMap())
            }
            map["Attacks"] = tmp
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
        if let value = dict["Attacks"] as? [Any?] {
            var tmp : [DescribeAttacksResponseBody.Attacks] = []
            for v in value {
                if v != nil {
                    var model = DescribeAttacksResponseBody.Attacks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attacks = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeAttacksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAttacksResponseBody?

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
            var model = DescribeAttacksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
