import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateClientRuleStrategyRequest : Tea.TeaModel {
    public var actionType: Int32?

    public var allGroup: Int32?

    public var approvalId: String?

    public var cmdline: String?

    public var description_: String?

    public var excludeUserNameList: [String]?

    public var filePath: String?

    public var inSwitch: Bool?

    public var includeGroupIdList: [String]?

    public var ip: String?

    public var mainButtonTextCh: String?

    public var mainButtonTextEn: String?

    public var matchMode: String?

    public var matchTargetIds: [String]?

    public var md5List: String?

    public var minorButtonTextCh: String?

    public var minorButtonTextEn: String?

    public var name: String?

    public var newFilePath: String?

    public var outSwitch: Bool?

    public var parentCmdline: String?

    public var parentProcPath: String?

    public var platform: String?

    public var policyType: Int32?

    public var port: String?

    public var portOnList: [String]?

    public var priority: Int32?

    public var procPath: String?

    public var registryContent: String?

    public var registryKey: String?

    public var ruleType: Int32?

    public var selectionKey: String?

    public var softWareOnList: [String]?

    public var status: Int32?

    public var strategySourceType: String?

    public var supportsApproval: Int32?

    public var usContent: String?

    public var usTitle: String?

    public var zhContent: String?

    public var zhTitle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.allGroup != nil {
            map["AllGroup"] = self.allGroup!
        }
        if self.approvalId != nil {
            map["ApprovalId"] = self.approvalId!
        }
        if self.cmdline != nil {
            map["Cmdline"] = self.cmdline!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeUserNameList != nil {
            map["ExcludeUserNameList"] = self.excludeUserNameList!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.inSwitch != nil {
            map["InSwitch"] = self.inSwitch!
        }
        if self.includeGroupIdList != nil {
            map["IncludeGroupIdList"] = self.includeGroupIdList!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.mainButtonTextCh != nil {
            map["MainButtonTextCh"] = self.mainButtonTextCh!
        }
        if self.mainButtonTextEn != nil {
            map["MainButtonTextEn"] = self.mainButtonTextEn!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.matchTargetIds != nil {
            map["MatchTargetIds"] = self.matchTargetIds!
        }
        if self.md5List != nil {
            map["Md5List"] = self.md5List!
        }
        if self.minorButtonTextCh != nil {
            map["MinorButtonTextCh"] = self.minorButtonTextCh!
        }
        if self.minorButtonTextEn != nil {
            map["MinorButtonTextEn"] = self.minorButtonTextEn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newFilePath != nil {
            map["NewFilePath"] = self.newFilePath!
        }
        if self.outSwitch != nil {
            map["OutSwitch"] = self.outSwitch!
        }
        if self.parentCmdline != nil {
            map["ParentCmdline"] = self.parentCmdline!
        }
        if self.parentProcPath != nil {
            map["ParentProcPath"] = self.parentProcPath!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.portOnList != nil {
            map["PortOnList"] = self.portOnList!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.procPath != nil {
            map["ProcPath"] = self.procPath!
        }
        if self.registryContent != nil {
            map["RegistryContent"] = self.registryContent!
        }
        if self.registryKey != nil {
            map["RegistryKey"] = self.registryKey!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.selectionKey != nil {
            map["SelectionKey"] = self.selectionKey!
        }
        if self.softWareOnList != nil {
            map["SoftWareOnList"] = self.softWareOnList!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.strategySourceType != nil {
            map["StrategySourceType"] = self.strategySourceType!
        }
        if self.supportsApproval != nil {
            map["SupportsApproval"] = self.supportsApproval!
        }
        if self.usContent != nil {
            map["UsContent"] = self.usContent!
        }
        if self.usTitle != nil {
            map["UsTitle"] = self.usTitle!
        }
        if self.zhContent != nil {
            map["ZhContent"] = self.zhContent!
        }
        if self.zhTitle != nil {
            map["ZhTitle"] = self.zhTitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? Int32 {
            self.actionType = value
        }
        if let value = dict["AllGroup"] as? Int32 {
            self.allGroup = value
        }
        if let value = dict["ApprovalId"] as? String {
            self.approvalId = value
        }
        if let value = dict["Cmdline"] as? String {
            self.cmdline = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExcludeUserNameList"] as? [String] {
            self.excludeUserNameList = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["InSwitch"] as? Bool {
            self.inSwitch = value
        }
        if let value = dict["IncludeGroupIdList"] as? [String] {
            self.includeGroupIdList = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["MainButtonTextCh"] as? String {
            self.mainButtonTextCh = value
        }
        if let value = dict["MainButtonTextEn"] as? String {
            self.mainButtonTextEn = value
        }
        if let value = dict["MatchMode"] as? String {
            self.matchMode = value
        }
        if let value = dict["MatchTargetIds"] as? [String] {
            self.matchTargetIds = value
        }
        if let value = dict["Md5List"] as? String {
            self.md5List = value
        }
        if let value = dict["MinorButtonTextCh"] as? String {
            self.minorButtonTextCh = value
        }
        if let value = dict["MinorButtonTextEn"] as? String {
            self.minorButtonTextEn = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NewFilePath"] as? String {
            self.newFilePath = value
        }
        if let value = dict["OutSwitch"] as? Bool {
            self.outSwitch = value
        }
        if let value = dict["ParentCmdline"] as? String {
            self.parentCmdline = value
        }
        if let value = dict["ParentProcPath"] as? String {
            self.parentProcPath = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["PolicyType"] as? Int32 {
            self.policyType = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["PortOnList"] as? [String] {
            self.portOnList = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ProcPath"] as? String {
            self.procPath = value
        }
        if let value = dict["RegistryContent"] as? String {
            self.registryContent = value
        }
        if let value = dict["RegistryKey"] as? String {
            self.registryKey = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["SelectionKey"] as? String {
            self.selectionKey = value
        }
        if let value = dict["SoftWareOnList"] as? [String] {
            self.softWareOnList = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["StrategySourceType"] as? String {
            self.strategySourceType = value
        }
        if let value = dict["SupportsApproval"] as? Int32 {
            self.supportsApproval = value
        }
        if let value = dict["UsContent"] as? String {
            self.usContent = value
        }
        if let value = dict["UsTitle"] as? String {
            self.usTitle = value
        }
        if let value = dict["ZhContent"] as? String {
            self.zhContent = value
        }
        if let value = dict["ZhTitle"] as? String {
            self.zhTitle = value
        }
    }
}

public class CreateClientRuleStrategyShrinkRequest : Tea.TeaModel {
    public var actionType: Int32?

    public var allGroup: Int32?

    public var approvalId: String?

    public var cmdline: String?

    public var description_: String?

    public var excludeUserNameListShrink: String?

    public var filePath: String?

    public var inSwitch: Bool?

    public var includeGroupIdListShrink: String?

    public var ip: String?

    public var mainButtonTextCh: String?

    public var mainButtonTextEn: String?

    public var matchMode: String?

    public var matchTargetIds: [String]?

    public var md5List: String?

    public var minorButtonTextCh: String?

    public var minorButtonTextEn: String?

    public var name: String?

    public var newFilePath: String?

    public var outSwitch: Bool?

    public var parentCmdline: String?

    public var parentProcPath: String?

    public var platform: String?

    public var policyType: Int32?

    public var port: String?

    public var portOnListShrink: String?

    public var priority: Int32?

    public var procPath: String?

    public var registryContent: String?

    public var registryKey: String?

    public var ruleType: Int32?

    public var selectionKey: String?

    public var softWareOnListShrink: String?

    public var status: Int32?

    public var strategySourceType: String?

    public var supportsApproval: Int32?

    public var usContent: String?

    public var usTitle: String?

    public var zhContent: String?

    public var zhTitle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.allGroup != nil {
            map["AllGroup"] = self.allGroup!
        }
        if self.approvalId != nil {
            map["ApprovalId"] = self.approvalId!
        }
        if self.cmdline != nil {
            map["Cmdline"] = self.cmdline!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeUserNameListShrink != nil {
            map["ExcludeUserNameList"] = self.excludeUserNameListShrink!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.inSwitch != nil {
            map["InSwitch"] = self.inSwitch!
        }
        if self.includeGroupIdListShrink != nil {
            map["IncludeGroupIdList"] = self.includeGroupIdListShrink!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.mainButtonTextCh != nil {
            map["MainButtonTextCh"] = self.mainButtonTextCh!
        }
        if self.mainButtonTextEn != nil {
            map["MainButtonTextEn"] = self.mainButtonTextEn!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.matchTargetIds != nil {
            map["MatchTargetIds"] = self.matchTargetIds!
        }
        if self.md5List != nil {
            map["Md5List"] = self.md5List!
        }
        if self.minorButtonTextCh != nil {
            map["MinorButtonTextCh"] = self.minorButtonTextCh!
        }
        if self.minorButtonTextEn != nil {
            map["MinorButtonTextEn"] = self.minorButtonTextEn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newFilePath != nil {
            map["NewFilePath"] = self.newFilePath!
        }
        if self.outSwitch != nil {
            map["OutSwitch"] = self.outSwitch!
        }
        if self.parentCmdline != nil {
            map["ParentCmdline"] = self.parentCmdline!
        }
        if self.parentProcPath != nil {
            map["ParentProcPath"] = self.parentProcPath!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.portOnListShrink != nil {
            map["PortOnList"] = self.portOnListShrink!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.procPath != nil {
            map["ProcPath"] = self.procPath!
        }
        if self.registryContent != nil {
            map["RegistryContent"] = self.registryContent!
        }
        if self.registryKey != nil {
            map["RegistryKey"] = self.registryKey!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.selectionKey != nil {
            map["SelectionKey"] = self.selectionKey!
        }
        if self.softWareOnListShrink != nil {
            map["SoftWareOnList"] = self.softWareOnListShrink!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.strategySourceType != nil {
            map["StrategySourceType"] = self.strategySourceType!
        }
        if self.supportsApproval != nil {
            map["SupportsApproval"] = self.supportsApproval!
        }
        if self.usContent != nil {
            map["UsContent"] = self.usContent!
        }
        if self.usTitle != nil {
            map["UsTitle"] = self.usTitle!
        }
        if self.zhContent != nil {
            map["ZhContent"] = self.zhContent!
        }
        if self.zhTitle != nil {
            map["ZhTitle"] = self.zhTitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? Int32 {
            self.actionType = value
        }
        if let value = dict["AllGroup"] as? Int32 {
            self.allGroup = value
        }
        if let value = dict["ApprovalId"] as? String {
            self.approvalId = value
        }
        if let value = dict["Cmdline"] as? String {
            self.cmdline = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExcludeUserNameList"] as? String {
            self.excludeUserNameListShrink = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["InSwitch"] as? Bool {
            self.inSwitch = value
        }
        if let value = dict["IncludeGroupIdList"] as? String {
            self.includeGroupIdListShrink = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["MainButtonTextCh"] as? String {
            self.mainButtonTextCh = value
        }
        if let value = dict["MainButtonTextEn"] as? String {
            self.mainButtonTextEn = value
        }
        if let value = dict["MatchMode"] as? String {
            self.matchMode = value
        }
        if let value = dict["MatchTargetIds"] as? [String] {
            self.matchTargetIds = value
        }
        if let value = dict["Md5List"] as? String {
            self.md5List = value
        }
        if let value = dict["MinorButtonTextCh"] as? String {
            self.minorButtonTextCh = value
        }
        if let value = dict["MinorButtonTextEn"] as? String {
            self.minorButtonTextEn = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NewFilePath"] as? String {
            self.newFilePath = value
        }
        if let value = dict["OutSwitch"] as? Bool {
            self.outSwitch = value
        }
        if let value = dict["ParentCmdline"] as? String {
            self.parentCmdline = value
        }
        if let value = dict["ParentProcPath"] as? String {
            self.parentProcPath = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["PolicyType"] as? Int32 {
            self.policyType = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["PortOnList"] as? String {
            self.portOnListShrink = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ProcPath"] as? String {
            self.procPath = value
        }
        if let value = dict["RegistryContent"] as? String {
            self.registryContent = value
        }
        if let value = dict["RegistryKey"] as? String {
            self.registryKey = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["SelectionKey"] as? String {
            self.selectionKey = value
        }
        if let value = dict["SoftWareOnList"] as? String {
            self.softWareOnListShrink = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["StrategySourceType"] as? String {
            self.strategySourceType = value
        }
        if let value = dict["SupportsApproval"] as? Int32 {
            self.supportsApproval = value
        }
        if let value = dict["UsContent"] as? String {
            self.usContent = value
        }
        if let value = dict["UsTitle"] as? String {
            self.usTitle = value
        }
        if let value = dict["ZhContent"] as? String {
            self.zhContent = value
        }
        if let value = dict["ZhTitle"] as? String {
            self.zhTitle = value
        }
    }
}

public class CreateClientRuleStrategyResponseBody : Tea.TeaModel {
    public var data: Int64?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateClientRuleStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClientRuleStrategyResponseBody?

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
            var model = CreateClientRuleStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSelectionConfigRequest : Tea.TeaModel {

    public override init() {
        super.init()
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

public class CreateSelectionConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var id: Int64?

        public var selectionKey: String?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.selectionKey != nil {
                map["SelectionKey"] = self.selectionKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["SelectionKey"] as? String {
                self.selectionKey = value
            }
        }
    }
    public var data: CreateSelectionConfigResponseBody.Data?

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
            var model = CreateSelectionConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSelectionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSelectionConfigResponseBody?

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
            var model = CreateSelectionConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSimilarSecurityEventsQueryTaskRequest : Tea.TeaModel {
    public var securityEventId: Int64?

    public var similarEventScenarioCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityEventId != nil {
            map["SecurityEventId"] = self.securityEventId!
        }
        if self.similarEventScenarioCode != nil {
            map["SimilarEventScenarioCode"] = self.similarEventScenarioCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecurityEventId"] as? Int64 {
            self.securityEventId = value
        }
        if let value = dict["SimilarEventScenarioCode"] as? String {
            self.similarEventScenarioCode = value
        }
    }
}

public class CreateSimilarSecurityEventsQueryTaskResponseBody : Tea.TeaModel {
    public class CreateSimilarSecurityEventsQueryTaskResponse : Tea.TeaModel {
        public var status: String?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var createSimilarSecurityEventsQueryTaskResponse: CreateSimilarSecurityEventsQueryTaskResponseBody.CreateSimilarSecurityEventsQueryTaskResponse?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createSimilarSecurityEventsQueryTaskResponse?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createSimilarSecurityEventsQueryTaskResponse != nil {
            map["CreateSimilarSecurityEventsQueryTaskResponse"] = self.createSimilarSecurityEventsQueryTaskResponse?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateSimilarSecurityEventsQueryTaskResponse"] as? [String: Any?] {
            var model = CreateSimilarSecurityEventsQueryTaskResponseBody.CreateSimilarSecurityEventsQueryTaskResponse()
            model.fromMap(value)
            self.createSimilarSecurityEventsQueryTaskResponse = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSimilarSecurityEventsQueryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSimilarSecurityEventsQueryTaskResponseBody?

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
            var model = CreateSimilarSecurityEventsQueryTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteClientRuleStrategyRequest : Tea.TeaModel {
    public var idList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.idList != nil {
            map["IdList"] = self.idList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdList"] as? [Int64] {
            self.idList = value
        }
    }
}

public class DeleteClientRuleStrategyShrinkRequest : Tea.TeaModel {
    public var idListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.idListShrink != nil {
            map["IdList"] = self.idListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdList"] as? String {
            self.idListShrink = value
        }
    }
}

public class DeleteClientRuleStrategyResponseBody : Tea.TeaModel {
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

public class DeleteClientRuleStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClientRuleStrategyResponseBody?

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
            var model = DeleteClientRuleStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSecurityEventMarkMissListRequest : Tea.TeaModel {
    public var ids: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? [Int64] {
            self.ids = value
        }
    }
}

public class DeleteSecurityEventMarkMissListResponseBody : Tea.TeaModel {
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

public class DeleteSecurityEventMarkMissListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecurityEventMarkMissListResponseBody?

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
            var model = DeleteSecurityEventMarkMissListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAssetScopeRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class DescribeAssetScopeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var matchMode: String?

        public var matchTargetIds: [String]?

        public override init() {
            super.init()
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
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.matchTargetIds != nil {
                map["MatchTargetIds"] = self.matchTargetIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["MatchMode"] as? String {
                self.matchMode = value
            }
            if let value = dict["MatchTargetIds"] as? [String] {
                self.matchTargetIds = value
            }
        }
    }
    public var data: DescribeAssetScopeResponseBody.Data?

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
            var model = DescribeAssetScopeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAssetScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAssetScopeResponseBody?

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
            var model = DescribeAssetScopeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNsasSuspEventTypeRequest : Tea.TeaModel {
    public var containerFieldName: String?

    public var containerFieldValue: String?

    public var lang: String?

    public var name: String?

    public var remark: String?

    public var sourceIp: String?

    public var uuids: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerFieldName != nil {
            map["ContainerFieldName"] = self.containerFieldName!
        }
        if self.containerFieldValue != nil {
            map["ContainerFieldValue"] = self.containerFieldValue!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerFieldName"] as? String {
            self.containerFieldName = value
        }
        if let value = dict["ContainerFieldValue"] as? String {
            self.containerFieldValue = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["Uuids"] as? String {
            self.uuids = value
        }
    }
}

public class DescribeNsasSuspEventTypeResponseBody : Tea.TeaModel {
    public class EventTypes : Tea.TeaModel {
        public var name: String?

        public var suspEventCount: Int32?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.suspEventCount != nil {
                map["SuspEventCount"] = self.suspEventCount!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SuspEventCount"] as? Int32 {
                self.suspEventCount = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var eventTypes: [DescribeNsasSuspEventTypeResponseBody.EventTypes]?

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
        if self.eventTypes != nil {
            var tmp : [Any] = []
            for k in self.eventTypes! {
                tmp.append(k.toMap())
            }
            map["EventTypes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventTypes"] as? [Any?] {
            var tmp : [DescribeNsasSuspEventTypeResponseBody.EventTypes] = []
            for v in value {
                if v != nil {
                    var model = DescribeNsasSuspEventTypeResponseBody.EventTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.eventTypes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNsasSuspEventTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNsasSuspEventTypeResponseBody?

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
            var model = DescribeNsasSuspEventTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecurityEventMarkMissListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var disposalWay: String?

    public var eventName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageSize: Int32?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.disposalWay != nil {
            map["DisposalWay"] = self.disposalWay!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DisposalWay"] as? String {
            self.disposalWay = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
    }
}

public class DescribeSecurityEventMarkMissListResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var aliUid: Int64?

        public var assetScopeId: Int64?

        public var disposalWay: String?

        public var eventName: String?

        public var eventNameOriginal: String?

        public var eventType: String?

        public var eventTypeOriginal: String?

        public var field: String?

        public var fieldValue: String?

        public var filedAliasName: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var hitCount: Int32?

        public var id: Int64?

        public var instanceId: String?

        public var instanceName: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var operate: String?

        public var uuid: String?

        public var uuids: String?

        public override init() {
            super.init()
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
            if self.assetScopeId != nil {
                map["AssetScopeId"] = self.assetScopeId!
            }
            if self.disposalWay != nil {
                map["DisposalWay"] = self.disposalWay!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.eventNameOriginal != nil {
                map["EventNameOriginal"] = self.eventNameOriginal!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.eventTypeOriginal != nil {
                map["EventTypeOriginal"] = self.eventTypeOriginal!
            }
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.fieldValue != nil {
                map["FieldValue"] = self.fieldValue!
            }
            if self.filedAliasName != nil {
                map["FiledAliasName"] = self.filedAliasName!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.hitCount != nil {
                map["HitCount"] = self.hitCount!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.operate != nil {
                map["Operate"] = self.operate!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            if self.uuids != nil {
                map["Uuids"] = self.uuids!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["AssetScopeId"] as? Int64 {
                self.assetScopeId = value
            }
            if let value = dict["DisposalWay"] as? String {
                self.disposalWay = value
            }
            if let value = dict["EventName"] as? String {
                self.eventName = value
            }
            if let value = dict["EventNameOriginal"] as? String {
                self.eventNameOriginal = value
            }
            if let value = dict["EventType"] as? String {
                self.eventType = value
            }
            if let value = dict["EventTypeOriginal"] as? String {
                self.eventTypeOriginal = value
            }
            if let value = dict["Field"] as? String {
                self.field = value
            }
            if let value = dict["FieldValue"] as? String {
                self.fieldValue = value
            }
            if let value = dict["FiledAliasName"] as? String {
                self.filedAliasName = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["HitCount"] as? Int32 {
                self.hitCount = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["Operate"] as? String {
                self.operate = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
            if let value = dict["Uuids"] as? String {
                self.uuids = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var count: Int32?

        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var list: [DescribeSecurityEventMarkMissListResponseBody.List]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageInfo: DescribeSecurityEventMarkMissListResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [Any?] {
            var tmp : [DescribeSecurityEventMarkMissListResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = DescribeSecurityEventMarkMissListResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = DescribeSecurityEventMarkMissListResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSecurityEventMarkMissListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityEventMarkMissListResponseBody?

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
            var model = DescribeSecurityEventMarkMissListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecurityEventOperationStatusRequest : Tea.TeaModel {
    public var securityEventIds: [Int64]?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityEventIds != nil {
            map["SecurityEventIds"] = self.securityEventIds!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecurityEventIds"] as? [Int64] {
            self.securityEventIds = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class DescribeSecurityEventOperationStatusResponseBody : Tea.TeaModel {
    public class SecurityEventOperationStatusResponse : Tea.TeaModel {
        public class SecurityEventOperationStatuses : Tea.TeaModel {
            public var errorCode: String?

            public var securityEventId: Int64?

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
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.securityEventId != nil {
                    map["SecurityEventId"] = self.securityEventId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["SecurityEventId"] as? Int64 {
                    self.securityEventId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var securityEventOperationStatuses: [DescribeSecurityEventOperationStatusResponseBody.SecurityEventOperationStatusResponse.SecurityEventOperationStatuses]?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityEventOperationStatuses != nil {
                var tmp : [Any] = []
                for k in self.securityEventOperationStatuses! {
                    tmp.append(k.toMap())
                }
                map["SecurityEventOperationStatuses"] = tmp
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityEventOperationStatuses"] as? [Any?] {
                var tmp : [DescribeSecurityEventOperationStatusResponseBody.SecurityEventOperationStatusResponse.SecurityEventOperationStatuses] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecurityEventOperationStatusResponseBody.SecurityEventOperationStatusResponse.SecurityEventOperationStatuses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.securityEventOperationStatuses = tmp
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var requestId: String?

    public var securityEventOperationStatusResponse: DescribeSecurityEventOperationStatusResponseBody.SecurityEventOperationStatusResponse?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityEventOperationStatusResponse?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityEventOperationStatusResponse != nil {
            map["SecurityEventOperationStatusResponse"] = self.securityEventOperationStatusResponse?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityEventOperationStatusResponse"] as? [String: Any?] {
            var model = DescribeSecurityEventOperationStatusResponseBody.SecurityEventOperationStatusResponse()
            model.fromMap(value)
            self.securityEventOperationStatusResponse = model
        }
    }
}

public class DescribeSecurityEventOperationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityEventOperationStatusResponseBody?

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
            var model = DescribeSecurityEventOperationStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecurityEventOperationsRequest : Tea.TeaModel {
    public var securityEventId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityEventId != nil {
            map["SecurityEventId"] = self.securityEventId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecurityEventId"] as? Int64 {
            self.securityEventId = value
        }
    }
}

public class DescribeSecurityEventOperationsResponseBody : Tea.TeaModel {
    public class SecurityEventOperationsResponse : Tea.TeaModel {
        public class MappingMarkFields : Tea.TeaModel {
            public var description_: String?

            public var fillType: String?

            public var filterExpression: String?

            public var mappingName: String?

            public var maxLength: Int32?

            public var minLength: Int32?

            public var name: String?

            public var required_: Bool?

            public var showName: String?

            public var showValue: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.fillType != nil {
                    map["FillType"] = self.fillType!
                }
                if self.filterExpression != nil {
                    map["FilterExpression"] = self.filterExpression!
                }
                if self.mappingName != nil {
                    map["MappingName"] = self.mappingName!
                }
                if self.maxLength != nil {
                    map["MaxLength"] = self.maxLength!
                }
                if self.minLength != nil {
                    map["MinLength"] = self.minLength!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.showName != nil {
                    map["ShowName"] = self.showName!
                }
                if self.showValue != nil {
                    map["ShowValue"] = self.showValue!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["FillType"] as? String {
                    self.fillType = value
                }
                if let value = dict["FilterExpression"] as? String {
                    self.filterExpression = value
                }
                if let value = dict["MappingName"] as? String {
                    self.mappingName = value
                }
                if let value = dict["MaxLength"] as? Int32 {
                    self.maxLength = value
                }
                if let value = dict["MinLength"] as? Int32 {
                    self.minLength = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Required"] as? Bool {
                    self.required_ = value
                }
                if let value = dict["ShowName"] as? String {
                    self.showName = value
                }
                if let value = dict["ShowValue"] as? String {
                    self.showValue = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public class MarkField : Tea.TeaModel {
            public var defaultValue: String?

            public var filedAliasName: String?

            public var filedName: String?

            public var markMisType: String?

            public var markMisValue: String?

            public var supportedMisType: [String]?

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
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.filedAliasName != nil {
                    map["FiledAliasName"] = self.filedAliasName!
                }
                if self.filedName != nil {
                    map["FiledName"] = self.filedName!
                }
                if self.markMisType != nil {
                    map["MarkMisType"] = self.markMisType!
                }
                if self.markMisValue != nil {
                    map["MarkMisValue"] = self.markMisValue!
                }
                if self.supportedMisType != nil {
                    map["SupportedMisType"] = self.supportedMisType!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["FiledAliasName"] as? String {
                    self.filedAliasName = value
                }
                if let value = dict["FiledName"] as? String {
                    self.filedName = value
                }
                if let value = dict["MarkMisType"] as? String {
                    self.markMisType = value
                }
                if let value = dict["MarkMisValue"] as? String {
                    self.markMisValue = value
                }
                if let value = dict["SupportedMisType"] as? [String] {
                    self.supportedMisType = value
                }
                if let value = dict["Uuid"] as? String {
                    self.uuid = value
                }
            }
        }
        public class MarkFieldsSource : Tea.TeaModel {
            public var defaultValue: String?

            public var filedAliasName: String?

            public var filedName: String?

            public var markMisValue: String?

            public var supportedMisType: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.filedAliasName != nil {
                    map["FiledAliasName"] = self.filedAliasName!
                }
                if self.filedName != nil {
                    map["FiledName"] = self.filedName!
                }
                if self.markMisValue != nil {
                    map["MarkMisValue"] = self.markMisValue!
                }
                if self.supportedMisType != nil {
                    map["SupportedMisType"] = self.supportedMisType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["FiledAliasName"] as? String {
                    self.filedAliasName = value
                }
                if let value = dict["FiledName"] as? String {
                    self.filedName = value
                }
                if let value = dict["MarkMisValue"] as? String {
                    self.markMisValue = value
                }
                if let value = dict["SupportedMisType"] as? [String] {
                    self.supportedMisType = value
                }
            }
        }
        public var mappingMarkFields: [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MappingMarkFields]?

        public var markField: [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkField]?

        public var markFieldsSource: [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkFieldsSource]?

        public var operationCode: String?

        public var operationParams: String?

        public var userCanOperate: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mappingMarkFields != nil {
                var tmp : [Any] = []
                for k in self.mappingMarkFields! {
                    tmp.append(k.toMap())
                }
                map["MappingMarkFields"] = tmp
            }
            if self.markField != nil {
                var tmp : [Any] = []
                for k in self.markField! {
                    tmp.append(k.toMap())
                }
                map["MarkField"] = tmp
            }
            if self.markFieldsSource != nil {
                var tmp : [Any] = []
                for k in self.markFieldsSource! {
                    tmp.append(k.toMap())
                }
                map["MarkFieldsSource"] = tmp
            }
            if self.operationCode != nil {
                map["OperationCode"] = self.operationCode!
            }
            if self.operationParams != nil {
                map["OperationParams"] = self.operationParams!
            }
            if self.userCanOperate != nil {
                map["UserCanOperate"] = self.userCanOperate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MappingMarkFields"] as? [Any?] {
                var tmp : [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MappingMarkFields] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MappingMarkFields()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mappingMarkFields = tmp
            }
            if let value = dict["MarkField"] as? [Any?] {
                var tmp : [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkField] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkField()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.markField = tmp
            }
            if let value = dict["MarkFieldsSource"] as? [Any?] {
                var tmp : [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkFieldsSource] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse.MarkFieldsSource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.markFieldsSource = tmp
            }
            if let value = dict["OperationCode"] as? String {
                self.operationCode = value
            }
            if let value = dict["OperationParams"] as? String {
                self.operationParams = value
            }
            if let value = dict["UserCanOperate"] as? Bool {
                self.userCanOperate = value
            }
        }
    }
    public var requestId: String?

    public var securityEventOperationsResponse: [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse]?

    public override init() {
        super.init()
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
        if self.securityEventOperationsResponse != nil {
            var tmp : [Any] = []
            for k in self.securityEventOperationsResponse! {
                tmp.append(k.toMap())
            }
            map["SecurityEventOperationsResponse"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityEventOperationsResponse"] as? [Any?] {
            var tmp : [DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse] = []
            for v in value {
                if v != nil {
                    var model = DescribeSecurityEventOperationsResponseBody.SecurityEventOperationsResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.securityEventOperationsResponse = tmp
        }
    }
}

public class DescribeSecurityEventOperationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityEventOperationsResponseBody?

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
            var model = DescribeSecurityEventOperationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSimilarEventScenariosRequest : Tea.TeaModel {
    public var securityEventId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityEventId != nil {
            map["SecurityEventId"] = self.securityEventId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecurityEventId"] as? Int64 {
            self.securityEventId = value
        }
    }
}

public class DescribeSimilarEventScenariosResponseBody : Tea.TeaModel {
    public class SecurityEventSimilarEventScenarioResponse : Tea.TeaModel {
        public var code: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
        }
    }
    public var requestId: String?

    public var securityEventSimilarEventScenarioResponse: [DescribeSimilarEventScenariosResponseBody.SecurityEventSimilarEventScenarioResponse]?

    public override init() {
        super.init()
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
        if self.securityEventSimilarEventScenarioResponse != nil {
            var tmp : [Any] = []
            for k in self.securityEventSimilarEventScenarioResponse! {
                tmp.append(k.toMap())
            }
            map["SecurityEventSimilarEventScenarioResponse"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityEventSimilarEventScenarioResponse"] as? [Any?] {
            var tmp : [DescribeSimilarEventScenariosResponseBody.SecurityEventSimilarEventScenarioResponse] = []
            for v in value {
                if v != nil {
                    var model = DescribeSimilarEventScenariosResponseBody.SecurityEventSimilarEventScenarioResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.securityEventSimilarEventScenarioResponse = tmp
        }
    }
}

public class DescribeSimilarEventScenariosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSimilarEventScenariosResponseBody?

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
            var model = DescribeSimilarEventScenariosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSimilarSecurityEventsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageSize: Int32?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class DescribeSimilarSecurityEventsResponseBody : Tea.TeaModel {
    public class PageInfo : Tea.TeaModel {
        public var count: Int32?

        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public class SecurityEventsResponse : Tea.TeaModel {
        public var eventName: String?

        public var eventType: String?

        public var lastTime: Int64?

        public var occurrenceTime: Int64?

        public var securityEventId: Int64?

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
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.lastTime != nil {
                map["LastTime"] = self.lastTime!
            }
            if self.occurrenceTime != nil {
                map["OccurrenceTime"] = self.occurrenceTime!
            }
            if self.securityEventId != nil {
                map["SecurityEventId"] = self.securityEventId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EventName"] as? String {
                self.eventName = value
            }
            if let value = dict["EventType"] as? String {
                self.eventType = value
            }
            if let value = dict["LastTime"] as? Int64 {
                self.lastTime = value
            }
            if let value = dict["OccurrenceTime"] as? Int64 {
                self.occurrenceTime = value
            }
            if let value = dict["SecurityEventId"] as? Int64 {
                self.securityEventId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageInfo: DescribeSimilarSecurityEventsResponseBody.PageInfo?

    public var requestId: String?

    public var securityEventsResponse: [DescribeSimilarSecurityEventsResponseBody.SecurityEventsResponse]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityEventsResponse != nil {
            var tmp : [Any] = []
            for k in self.securityEventsResponse! {
                tmp.append(k.toMap())
            }
            map["SecurityEventsResponse"] = tmp
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
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = DescribeSimilarSecurityEventsResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityEventsResponse"] as? [Any?] {
            var tmp : [DescribeSimilarSecurityEventsResponseBody.SecurityEventsResponse] = []
            for v in value {
                if v != nil {
                    var model = DescribeSimilarSecurityEventsResponseBody.SecurityEventsResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.securityEventsResponse = tmp
        }
    }
}

public class DescribeSimilarSecurityEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSimilarSecurityEventsResponseBody?

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
            var model = DescribeSimilarSecurityEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSuspEventsRequest : Tea.TeaModel {
    public var alarmEventName: String?

    public var alarmUniqueInfo: String?

    public var assetsTypeList: [String]?

    public var clusterId: String?

    public var containerFieldName: String?

    public var containerFieldValue: String?

    public var currentPage: Int32?

    public var dealed: String?

    public var department: String?

    public var eventNames: String?

    public var groupId: Int64?

    public var hostName: String?

    public var id: Int64?

    public var innerIp: String?

    public var lang: String?

    public var levels: String?

    public var name: String?

    public var operateErrorCodeList: [String]?

    public var operateTimeEnd: String?

    public var operateTimeStart: String?

    public var pageSize: Int32?

    public var parentEventTypes: String?

    public var remark: String?

    public var sortColumn: String?

    public var sortType: String?

    public var source: String?

    public var sourceIp: String?

    public var srcIp: String?

    public var status: String?

    public var strictMode: String?

    public var tacticId: String?

    public var targetType: String?

    public var timeEnd: String?

    public var timeStart: String?

    public var uniqueInfo: String?

    public var userName: String?

    public var uuids: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmEventName != nil {
            map["AlarmEventName"] = self.alarmEventName!
        }
        if self.alarmUniqueInfo != nil {
            map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
        }
        if self.assetsTypeList != nil {
            map["AssetsTypeList"] = self.assetsTypeList!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.containerFieldName != nil {
            map["ContainerFieldName"] = self.containerFieldName!
        }
        if self.containerFieldValue != nil {
            map["ContainerFieldValue"] = self.containerFieldValue!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dealed != nil {
            map["Dealed"] = self.dealed!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.eventNames != nil {
            map["EventNames"] = self.eventNames!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.innerIp != nil {
            map["InnerIp"] = self.innerIp!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.levels != nil {
            map["Levels"] = self.levels!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operateErrorCodeList != nil {
            map["OperateErrorCodeList"] = self.operateErrorCodeList!
        }
        if self.operateTimeEnd != nil {
            map["OperateTimeEnd"] = self.operateTimeEnd!
        }
        if self.operateTimeStart != nil {
            map["OperateTimeStart"] = self.operateTimeStart!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentEventTypes != nil {
            map["ParentEventTypes"] = self.parentEventTypes!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.sortColumn != nil {
            map["SortColumn"] = self.sortColumn!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.srcIp != nil {
            map["SrcIp"] = self.srcIp!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.strictMode != nil {
            map["StrictMode"] = self.strictMode!
        }
        if self.tacticId != nil {
            map["TacticId"] = self.tacticId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        if self.timeEnd != nil {
            map["TimeEnd"] = self.timeEnd!
        }
        if self.timeStart != nil {
            map["TimeStart"] = self.timeStart!
        }
        if self.uniqueInfo != nil {
            map["UniqueInfo"] = self.uniqueInfo!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.uuids != nil {
            map["Uuids"] = self.uuids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmEventName"] as? String {
            self.alarmEventName = value
        }
        if let value = dict["AlarmUniqueInfo"] as? String {
            self.alarmUniqueInfo = value
        }
        if let value = dict["AssetsTypeList"] as? [String] {
            self.assetsTypeList = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ContainerFieldName"] as? String {
            self.containerFieldName = value
        }
        if let value = dict["ContainerFieldValue"] as? String {
            self.containerFieldValue = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Dealed"] as? String {
            self.dealed = value
        }
        if let value = dict["Department"] as? String {
            self.department = value
        }
        if let value = dict["EventNames"] as? String {
            self.eventNames = value
        }
        if let value = dict["GroupId"] as? Int64 {
            self.groupId = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InnerIp"] as? String {
            self.innerIp = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Levels"] as? String {
            self.levels = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OperateErrorCodeList"] as? [String] {
            self.operateErrorCodeList = value
        }
        if let value = dict["OperateTimeEnd"] as? String {
            self.operateTimeEnd = value
        }
        if let value = dict["OperateTimeStart"] as? String {
            self.operateTimeStart = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentEventTypes"] as? String {
            self.parentEventTypes = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SortColumn"] as? String {
            self.sortColumn = value
        }
        if let value = dict["SortType"] as? String {
            self.sortType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["SrcIp"] as? String {
            self.srcIp = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StrictMode"] as? String {
            self.strictMode = value
        }
        if let value = dict["TacticId"] as? String {
            self.tacticId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
        if let value = dict["TimeEnd"] as? String {
            self.timeEnd = value
        }
        if let value = dict["TimeStart"] as? String {
            self.timeStart = value
        }
        if let value = dict["UniqueInfo"] as? String {
            self.uniqueInfo = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["Uuids"] as? String {
            self.uuids = value
        }
    }
}

public class DescribeSuspEventsResponseBody : Tea.TeaModel {
    public class SuspEvents : Tea.TeaModel {
        public class Details : Tea.TeaModel {
            public var nameDisplay: String?

            public var type: String?

            public var value: String?

            public var valueDisplay: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nameDisplay != nil {
                    map["NameDisplay"] = self.nameDisplay!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueDisplay != nil {
                    map["ValueDisplay"] = self.valueDisplay!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NameDisplay"] as? String {
                    self.nameDisplay = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["ValueDisplay"] as? String {
                    self.valueDisplay = value
                }
            }
        }
        public class EventNotes : Tea.TeaModel {
            public var note: String?

            public var noteId: Int64?

            public var noteTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.note != nil {
                    map["Note"] = self.note!
                }
                if self.noteId != nil {
                    map["NoteId"] = self.noteId!
                }
                if self.noteTime != nil {
                    map["NoteTime"] = self.noteTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Note"] as? String {
                    self.note = value
                }
                if let value = dict["NoteId"] as? Int64 {
                    self.noteId = value
                }
                if let value = dict["NoteTime"] as? String {
                    self.noteTime = value
                }
            }
        }
        public class TacticItems : Tea.TeaModel {
            public var tacticDisplayName: String?

            public var tacticId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tacticDisplayName != nil {
                    map["TacticDisplayName"] = self.tacticDisplayName!
                }
                if self.tacticId != nil {
                    map["TacticId"] = self.tacticId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TacticDisplayName"] as? String {
                    self.tacticDisplayName = value
                }
                if let value = dict["TacticId"] as? String {
                    self.tacticId = value
                }
            }
        }
        public var advanced: Bool?

        public var alarmEventName: String?

        public var alarmEventNameDisplay: String?

        public var alarmEventType: String?

        public var alarmEventTypeDisplay: String?

        public var alarmUniqueInfo: String?

        public var appName: String?

        public var autoBreaking: Bool?

        public var canBeDealOnLine: Bool?

        public var canCancelFault: Bool?

        public var clusterId: String?

        public var containHwMode: Bool?

        public var containerId: String?

        public var containerImageId: String?

        public var containerImageName: String?

        public var dataSource: String?

        public var department: String?

        public var desc: String?

        public var details: [DescribeSuspEventsResponseBody.SuspEvents.Details]?

        public var devTag: String?

        public var devType: String?

        public var displaySandboxResult: Bool?

        public var eventNotes: [DescribeSuspEventsResponseBody.SuspEvents.EventNotes]?

        public var eventStatus: Int32?

        public var eventSubType: String?

        public var hasTraceInfo: Bool?

        public var hostName: String?

        public var id: Int64?

        public var imageUuid: String?

        public var instanceId: String?

        public var instanceName: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var k8sClusterId: String?

        public var k8sClusterName: String?

        public var k8sNamespace: String?

        public var k8sNodeId: String?

        public var k8sNodeName: String?

        public var k8sPodName: String?

        public var largeModel: Bool?

        public var lastTime: String?

        public var lastTimeStamp: Int64?

        public var level: String?

        public var mac: String?

        public var maliciousRuleStatus: String?

        public var markList: [String]?

        public var markMisRules: String?

        public var name: String?

        public var occurrenceTime: String?

        public var occurrenceTimeStamp: Int64?

        public var operateErrorCode: String?

        public var operateMsg: String?

        public var operateTime: Int64?

        public var saleVersion: String?

        public var securityEventIds: String?

        public var srcIp: String?

        public var stages: String?

        public var tacticItems: [DescribeSuspEventsResponseBody.SuspEvents.TacticItems]?

        public var uniqueInfo: String?

        public var userName: String?

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
            if self.advanced != nil {
                map["Advanced"] = self.advanced!
            }
            if self.alarmEventName != nil {
                map["AlarmEventName"] = self.alarmEventName!
            }
            if self.alarmEventNameDisplay != nil {
                map["AlarmEventNameDisplay"] = self.alarmEventNameDisplay!
            }
            if self.alarmEventType != nil {
                map["AlarmEventType"] = self.alarmEventType!
            }
            if self.alarmEventTypeDisplay != nil {
                map["AlarmEventTypeDisplay"] = self.alarmEventTypeDisplay!
            }
            if self.alarmUniqueInfo != nil {
                map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.autoBreaking != nil {
                map["AutoBreaking"] = self.autoBreaking!
            }
            if self.canBeDealOnLine != nil {
                map["CanBeDealOnLine"] = self.canBeDealOnLine!
            }
            if self.canCancelFault != nil {
                map["CanCancelFault"] = self.canCancelFault!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.containHwMode != nil {
                map["ContainHwMode"] = self.containHwMode!
            }
            if self.containerId != nil {
                map["ContainerId"] = self.containerId!
            }
            if self.containerImageId != nil {
                map["ContainerImageId"] = self.containerImageId!
            }
            if self.containerImageName != nil {
                map["ContainerImageName"] = self.containerImageName!
            }
            if self.dataSource != nil {
                map["DataSource"] = self.dataSource!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.details != nil {
                var tmp : [Any] = []
                for k in self.details! {
                    tmp.append(k.toMap())
                }
                map["Details"] = tmp
            }
            if self.devTag != nil {
                map["DevTag"] = self.devTag!
            }
            if self.devType != nil {
                map["DevType"] = self.devType!
            }
            if self.displaySandboxResult != nil {
                map["DisplaySandboxResult"] = self.displaySandboxResult!
            }
            if self.eventNotes != nil {
                var tmp : [Any] = []
                for k in self.eventNotes! {
                    tmp.append(k.toMap())
                }
                map["EventNotes"] = tmp
            }
            if self.eventStatus != nil {
                map["EventStatus"] = self.eventStatus!
            }
            if self.eventSubType != nil {
                map["EventSubType"] = self.eventSubType!
            }
            if self.hasTraceInfo != nil {
                map["HasTraceInfo"] = self.hasTraceInfo!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageUuid != nil {
                map["ImageUuid"] = self.imageUuid!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.k8sClusterId != nil {
                map["K8sClusterId"] = self.k8sClusterId!
            }
            if self.k8sClusterName != nil {
                map["K8sClusterName"] = self.k8sClusterName!
            }
            if self.k8sNamespace != nil {
                map["K8sNamespace"] = self.k8sNamespace!
            }
            if self.k8sNodeId != nil {
                map["K8sNodeId"] = self.k8sNodeId!
            }
            if self.k8sNodeName != nil {
                map["K8sNodeName"] = self.k8sNodeName!
            }
            if self.k8sPodName != nil {
                map["K8sPodName"] = self.k8sPodName!
            }
            if self.largeModel != nil {
                map["LargeModel"] = self.largeModel!
            }
            if self.lastTime != nil {
                map["LastTime"] = self.lastTime!
            }
            if self.lastTimeStamp != nil {
                map["LastTimeStamp"] = self.lastTimeStamp!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.mac != nil {
                map["Mac"] = self.mac!
            }
            if self.maliciousRuleStatus != nil {
                map["MaliciousRuleStatus"] = self.maliciousRuleStatus!
            }
            if self.markList != nil {
                map["MarkList"] = self.markList!
            }
            if self.markMisRules != nil {
                map["MarkMisRules"] = self.markMisRules!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.occurrenceTime != nil {
                map["OccurrenceTime"] = self.occurrenceTime!
            }
            if self.occurrenceTimeStamp != nil {
                map["OccurrenceTimeStamp"] = self.occurrenceTimeStamp!
            }
            if self.operateErrorCode != nil {
                map["OperateErrorCode"] = self.operateErrorCode!
            }
            if self.operateMsg != nil {
                map["OperateMsg"] = self.operateMsg!
            }
            if self.operateTime != nil {
                map["OperateTime"] = self.operateTime!
            }
            if self.saleVersion != nil {
                map["SaleVersion"] = self.saleVersion!
            }
            if self.securityEventIds != nil {
                map["SecurityEventIds"] = self.securityEventIds!
            }
            if self.srcIp != nil {
                map["SrcIp"] = self.srcIp!
            }
            if self.stages != nil {
                map["Stages"] = self.stages!
            }
            if self.tacticItems != nil {
                var tmp : [Any] = []
                for k in self.tacticItems! {
                    tmp.append(k.toMap())
                }
                map["TacticItems"] = tmp
            }
            if self.uniqueInfo != nil {
                map["UniqueInfo"] = self.uniqueInfo!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Advanced"] as? Bool {
                self.advanced = value
            }
            if let value = dict["AlarmEventName"] as? String {
                self.alarmEventName = value
            }
            if let value = dict["AlarmEventNameDisplay"] as? String {
                self.alarmEventNameDisplay = value
            }
            if let value = dict["AlarmEventType"] as? String {
                self.alarmEventType = value
            }
            if let value = dict["AlarmEventTypeDisplay"] as? String {
                self.alarmEventTypeDisplay = value
            }
            if let value = dict["AlarmUniqueInfo"] as? String {
                self.alarmUniqueInfo = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["AutoBreaking"] as? Bool {
                self.autoBreaking = value
            }
            if let value = dict["CanBeDealOnLine"] as? Bool {
                self.canBeDealOnLine = value
            }
            if let value = dict["CanCancelFault"] as? Bool {
                self.canCancelFault = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ContainHwMode"] as? Bool {
                self.containHwMode = value
            }
            if let value = dict["ContainerId"] as? String {
                self.containerId = value
            }
            if let value = dict["ContainerImageId"] as? String {
                self.containerImageId = value
            }
            if let value = dict["ContainerImageName"] as? String {
                self.containerImageName = value
            }
            if let value = dict["DataSource"] as? String {
                self.dataSource = value
            }
            if let value = dict["Department"] as? String {
                self.department = value
            }
            if let value = dict["Desc"] as? String {
                self.desc = value
            }
            if let value = dict["Details"] as? [Any?] {
                var tmp : [DescribeSuspEventsResponseBody.SuspEvents.Details] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSuspEventsResponseBody.SuspEvents.Details()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.details = tmp
            }
            if let value = dict["DevTag"] as? String {
                self.devTag = value
            }
            if let value = dict["DevType"] as? String {
                self.devType = value
            }
            if let value = dict["DisplaySandboxResult"] as? Bool {
                self.displaySandboxResult = value
            }
            if let value = dict["EventNotes"] as? [Any?] {
                var tmp : [DescribeSuspEventsResponseBody.SuspEvents.EventNotes] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSuspEventsResponseBody.SuspEvents.EventNotes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.eventNotes = tmp
            }
            if let value = dict["EventStatus"] as? Int32 {
                self.eventStatus = value
            }
            if let value = dict["EventSubType"] as? String {
                self.eventSubType = value
            }
            if let value = dict["HasTraceInfo"] as? Bool {
                self.hasTraceInfo = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["ImageUuid"] as? String {
                self.imageUuid = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["K8sClusterId"] as? String {
                self.k8sClusterId = value
            }
            if let value = dict["K8sClusterName"] as? String {
                self.k8sClusterName = value
            }
            if let value = dict["K8sNamespace"] as? String {
                self.k8sNamespace = value
            }
            if let value = dict["K8sNodeId"] as? String {
                self.k8sNodeId = value
            }
            if let value = dict["K8sNodeName"] as? String {
                self.k8sNodeName = value
            }
            if let value = dict["K8sPodName"] as? String {
                self.k8sPodName = value
            }
            if let value = dict["LargeModel"] as? Bool {
                self.largeModel = value
            }
            if let value = dict["LastTime"] as? String {
                self.lastTime = value
            }
            if let value = dict["LastTimeStamp"] as? Int64 {
                self.lastTimeStamp = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Mac"] as? String {
                self.mac = value
            }
            if let value = dict["MaliciousRuleStatus"] as? String {
                self.maliciousRuleStatus = value
            }
            if let value = dict["MarkList"] as? [String] {
                self.markList = value
            }
            if let value = dict["MarkMisRules"] as? String {
                self.markMisRules = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OccurrenceTime"] as? String {
                self.occurrenceTime = value
            }
            if let value = dict["OccurrenceTimeStamp"] as? Int64 {
                self.occurrenceTimeStamp = value
            }
            if let value = dict["OperateErrorCode"] as? String {
                self.operateErrorCode = value
            }
            if let value = dict["OperateMsg"] as? String {
                self.operateMsg = value
            }
            if let value = dict["OperateTime"] as? Int64 {
                self.operateTime = value
            }
            if let value = dict["SaleVersion"] as? String {
                self.saleVersion = value
            }
            if let value = dict["SecurityEventIds"] as? String {
                self.securityEventIds = value
            }
            if let value = dict["SrcIp"] as? String {
                self.srcIp = value
            }
            if let value = dict["Stages"] as? String {
                self.stages = value
            }
            if let value = dict["TacticItems"] as? [Any?] {
                var tmp : [DescribeSuspEventsResponseBody.SuspEvents.TacticItems] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSuspEventsResponseBody.SuspEvents.TacticItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tacticItems = tmp
            }
            if let value = dict["UniqueInfo"] as? String {
                self.uniqueInfo = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var count: Int32?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var suspEvents: [DescribeSuspEventsResponseBody.SuspEvents]?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.suspEvents != nil {
            var tmp : [Any] = []
            for k in self.suspEvents! {
                tmp.append(k.toMap())
            }
            map["SuspEvents"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuspEvents"] as? [Any?] {
            var tmp : [DescribeSuspEventsResponseBody.SuspEvents] = []
            for v in value {
                if v != nil {
                    var model = DescribeSuspEventsResponseBody.SuspEvents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.suspEvents = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeSuspEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSuspEventsResponseBody?

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
            var model = DescribeSuspEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetClientRuleStrategyDetailRequest : Tea.TeaModel {
    public var id: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class GetClientRuleStrategyDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var actionType: Int32?

        public var allGroup: Int32?

        public var approvalId: String?

        public var cmdline: String?

        public var createTime: Int64?

        public var description_: String?

        public var excludeUserNameList: [String]?

        public var filePath: String?

        public var id: Int64?

        public var inSwitch: Bool?

        public var includeGroupIdList: [String]?

        public var ip: String?

        public var mainButtonTextCh: String?

        public var mainButtonTextEn: String?

        public var matchMode: String?

        public var matchTargetIds: [String]?

        public var md5List: String?

        public var minorButtonTextCh: String?

        public var minorButtonTextEn: String?

        public var name: String?

        public var newFilePath: String?

        public var outSwitch: Bool?

        public var parentCmdline: String?

        public var parentProcPath: String?

        public var platform: String?

        public var policyType: Int32?

        public var port: String?

        public var portOnList: [String]?

        public var priority: Double?

        public var procPath: String?

        public var registryContent: String?

        public var registryKey: String?

        public var ruleType: Int32?

        public var selectionKey: String?

        public var softWareOnList: [String]?

        public var status: Int32?

        public var strategySourceType: String?

        public var supportsApproval: Int32?

        public var usContent: String?

        public var usTitle: String?

        public var zhContent: String?

        public var zhTitle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.allGroup != nil {
                map["AllGroup"] = self.allGroup!
            }
            if self.approvalId != nil {
                map["ApprovalId"] = self.approvalId!
            }
            if self.cmdline != nil {
                map["Cmdline"] = self.cmdline!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.excludeUserNameList != nil {
                map["ExcludeUserNameList"] = self.excludeUserNameList!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.inSwitch != nil {
                map["InSwitch"] = self.inSwitch!
            }
            if self.includeGroupIdList != nil {
                map["IncludeGroupIdList"] = self.includeGroupIdList!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.mainButtonTextCh != nil {
                map["MainButtonTextCh"] = self.mainButtonTextCh!
            }
            if self.mainButtonTextEn != nil {
                map["MainButtonTextEn"] = self.mainButtonTextEn!
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.matchTargetIds != nil {
                map["MatchTargetIds"] = self.matchTargetIds!
            }
            if self.md5List != nil {
                map["Md5List"] = self.md5List!
            }
            if self.minorButtonTextCh != nil {
                map["MinorButtonTextCh"] = self.minorButtonTextCh!
            }
            if self.minorButtonTextEn != nil {
                map["MinorButtonTextEn"] = self.minorButtonTextEn!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.newFilePath != nil {
                map["NewFilePath"] = self.newFilePath!
            }
            if self.outSwitch != nil {
                map["OutSwitch"] = self.outSwitch!
            }
            if self.parentCmdline != nil {
                map["ParentCmdline"] = self.parentCmdline!
            }
            if self.parentProcPath != nil {
                map["ParentProcPath"] = self.parentProcPath!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.portOnList != nil {
                map["PortOnList"] = self.portOnList!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.procPath != nil {
                map["ProcPath"] = self.procPath!
            }
            if self.registryContent != nil {
                map["RegistryContent"] = self.registryContent!
            }
            if self.registryKey != nil {
                map["RegistryKey"] = self.registryKey!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.selectionKey != nil {
                map["SelectionKey"] = self.selectionKey!
            }
            if self.softWareOnList != nil {
                map["SoftWareOnList"] = self.softWareOnList!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.strategySourceType != nil {
                map["StrategySourceType"] = self.strategySourceType!
            }
            if self.supportsApproval != nil {
                map["SupportsApproval"] = self.supportsApproval!
            }
            if self.usContent != nil {
                map["UsContent"] = self.usContent!
            }
            if self.usTitle != nil {
                map["UsTitle"] = self.usTitle!
            }
            if self.zhContent != nil {
                map["ZhContent"] = self.zhContent!
            }
            if self.zhTitle != nil {
                map["ZhTitle"] = self.zhTitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? Int32 {
                self.actionType = value
            }
            if let value = dict["AllGroup"] as? Int32 {
                self.allGroup = value
            }
            if let value = dict["ApprovalId"] as? String {
                self.approvalId = value
            }
            if let value = dict["Cmdline"] as? String {
                self.cmdline = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExcludeUserNameList"] as? [String] {
                self.excludeUserNameList = value
            }
            if let value = dict["FilePath"] as? String {
                self.filePath = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InSwitch"] as? Bool {
                self.inSwitch = value
            }
            if let value = dict["IncludeGroupIdList"] as? [String] {
                self.includeGroupIdList = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["MainButtonTextCh"] as? String {
                self.mainButtonTextCh = value
            }
            if let value = dict["MainButtonTextEn"] as? String {
                self.mainButtonTextEn = value
            }
            if let value = dict["MatchMode"] as? String {
                self.matchMode = value
            }
            if let value = dict["MatchTargetIds"] as? [String] {
                self.matchTargetIds = value
            }
            if let value = dict["Md5List"] as? String {
                self.md5List = value
            }
            if let value = dict["MinorButtonTextCh"] as? String {
                self.minorButtonTextCh = value
            }
            if let value = dict["MinorButtonTextEn"] as? String {
                self.minorButtonTextEn = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NewFilePath"] as? String {
                self.newFilePath = value
            }
            if let value = dict["OutSwitch"] as? Bool {
                self.outSwitch = value
            }
            if let value = dict["ParentCmdline"] as? String {
                self.parentCmdline = value
            }
            if let value = dict["ParentProcPath"] as? String {
                self.parentProcPath = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["PolicyType"] as? Int32 {
                self.policyType = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["PortOnList"] as? [String] {
                self.portOnList = value
            }
            if let value = dict["Priority"] as? Double {
                self.priority = value
            }
            if let value = dict["ProcPath"] as? String {
                self.procPath = value
            }
            if let value = dict["RegistryContent"] as? String {
                self.registryContent = value
            }
            if let value = dict["RegistryKey"] as? String {
                self.registryKey = value
            }
            if let value = dict["RuleType"] as? Int32 {
                self.ruleType = value
            }
            if let value = dict["SelectionKey"] as? String {
                self.selectionKey = value
            }
            if let value = dict["SoftWareOnList"] as? [String] {
                self.softWareOnList = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["StrategySourceType"] as? String {
                self.strategySourceType = value
            }
            if let value = dict["SupportsApproval"] as? Int32 {
                self.supportsApproval = value
            }
            if let value = dict["UsContent"] as? String {
                self.usContent = value
            }
            if let value = dict["UsTitle"] as? String {
                self.usTitle = value
            }
            if let value = dict["ZhContent"] as? String {
                self.zhContent = value
            }
            if let value = dict["ZhTitle"] as? String {
                self.zhTitle = value
            }
        }
    }
    public var data: GetClientRuleStrategyDetailResponseBody.Data?

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
            var model = GetClientRuleStrategyDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetClientRuleStrategyDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClientRuleStrategyDetailResponseBody?

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
            var model = GetClientRuleStrategyDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetClientRuleStrategyStatisticsRequest : Tea.TeaModel {
    public var policyType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyType"] as? Int32 {
            self.policyType = value
        }
    }
}

public class GetClientRuleStrategyStatisticsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var customRuleCount: Int32?

        public var systemRuleCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customRuleCount != nil {
                map["CustomRuleCount"] = self.customRuleCount!
            }
            if self.systemRuleCount != nil {
                map["SystemRuleCount"] = self.systemRuleCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomRuleCount"] as? Int32 {
                self.customRuleCount = value
            }
            if let value = dict["SystemRuleCount"] as? Int32 {
                self.systemRuleCount = value
            }
        }
    }
    public var data: GetClientRuleStrategyStatisticsResponseBody.Data?

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
            var model = GetClientRuleStrategyStatisticsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetClientRuleStrategyStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClientRuleStrategyStatisticsResponseBody?

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
            var model = GetClientRuleStrategyStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HandleSecurityEventsRequest : Tea.TeaModel {
    public var markBatch: Bool?

    public var markMissParam: String?

    public var operationCode: String?

    public var operationParams: String?

    public var remark: String?

    public var securityEventIds: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.markBatch != nil {
            map["MarkBatch"] = self.markBatch!
        }
        if self.markMissParam != nil {
            map["MarkMissParam"] = self.markMissParam!
        }
        if self.operationCode != nil {
            map["OperationCode"] = self.operationCode!
        }
        if self.operationParams != nil {
            map["OperationParams"] = self.operationParams!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.securityEventIds != nil {
            map["SecurityEventIds"] = self.securityEventIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MarkBatch"] as? Bool {
            self.markBatch = value
        }
        if let value = dict["MarkMissParam"] as? String {
            self.markMissParam = value
        }
        if let value = dict["OperationCode"] as? String {
            self.operationCode = value
        }
        if let value = dict["OperationParams"] as? String {
            self.operationParams = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SecurityEventIds"] as? [Int64] {
            self.securityEventIds = value
        }
    }
}

public class HandleSecurityEventsResponseBody : Tea.TeaModel {
    public class HandleSecurityEventsResponse : Tea.TeaModel {
        public var taskId: Int64?

        public override init() {
            super.init()
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
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var handleSecurityEventsResponse: HandleSecurityEventsResponseBody.HandleSecurityEventsResponse?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.handleSecurityEventsResponse?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handleSecurityEventsResponse != nil {
            map["HandleSecurityEventsResponse"] = self.handleSecurityEventsResponse?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HandleSecurityEventsResponse"] as? [String: Any?] {
            var model = HandleSecurityEventsResponseBody.HandleSecurityEventsResponse()
            model.fromMap(value)
            self.handleSecurityEventsResponse = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class HandleSecurityEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HandleSecurityEventsResponseBody?

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
            var model = HandleSecurityEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class HandleSimilarSecurityEventsRequest : Tea.TeaModel {
    public var markMissParam: String?

    public var operationCode: String?

    public var operationParams: String?

    public var remark: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.markMissParam != nil {
            map["MarkMissParam"] = self.markMissParam!
        }
        if self.operationCode != nil {
            map["OperationCode"] = self.operationCode!
        }
        if self.operationParams != nil {
            map["OperationParams"] = self.operationParams!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MarkMissParam"] as? String {
            self.markMissParam = value
        }
        if let value = dict["OperationCode"] as? String {
            self.operationCode = value
        }
        if let value = dict["OperationParams"] as? String {
            self.operationParams = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class HandleSimilarSecurityEventsResponseBody : Tea.TeaModel {
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

public class HandleSimilarSecurityEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: HandleSimilarSecurityEventsResponseBody?

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
            var model = HandleSimilarSecurityEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListClientRuleStrategyRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var policyType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PolicyType"] as? Int32 {
            self.policyType = value
        }
    }
}

public class ListClientRuleStrategyResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var actionType: Int32?

        public var allGroup: Int32?

        public var approvalId: String?

        public var createTime: Int64?

        public var description_: String?

        public var excludeUserNameList: [String]?

        public var id: Int64?

        public var inSwitch: Bool?

        public var includeGroupIdList: [String]?

        public var mainButtonTextCh: String?

        public var mainButtonTextEn: String?

        public var matchMode: String?

        public var matchTargetIds: [String]?

        public var minorButtonTextCh: String?

        public var minorButtonTextEn: String?

        public var name: String?

        public var outSwitch: Bool?

        public var policyType: Int32?

        public var portOnList: [String]?

        public var priority: Int32?

        public var selectionKey: String?

        public var softWareOnList: [String]?

        public var status: Int32?

        public var strategySourceType: String?

        public var supportsApproval: Int32?

        public var usContent: String?

        public var usTitle: String?

        public var zhContent: String?

        public var zhTitle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.allGroup != nil {
                map["AllGroup"] = self.allGroup!
            }
            if self.approvalId != nil {
                map["ApprovalId"] = self.approvalId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.excludeUserNameList != nil {
                map["ExcludeUserNameList"] = self.excludeUserNameList!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.inSwitch != nil {
                map["InSwitch"] = self.inSwitch!
            }
            if self.includeGroupIdList != nil {
                map["IncludeGroupIdList"] = self.includeGroupIdList!
            }
            if self.mainButtonTextCh != nil {
                map["MainButtonTextCh"] = self.mainButtonTextCh!
            }
            if self.mainButtonTextEn != nil {
                map["MainButtonTextEn"] = self.mainButtonTextEn!
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.matchTargetIds != nil {
                map["MatchTargetIds"] = self.matchTargetIds!
            }
            if self.minorButtonTextCh != nil {
                map["MinorButtonTextCh"] = self.minorButtonTextCh!
            }
            if self.minorButtonTextEn != nil {
                map["MinorButtonTextEn"] = self.minorButtonTextEn!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.outSwitch != nil {
                map["OutSwitch"] = self.outSwitch!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.portOnList != nil {
                map["PortOnList"] = self.portOnList!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.selectionKey != nil {
                map["SelectionKey"] = self.selectionKey!
            }
            if self.softWareOnList != nil {
                map["SoftWareOnList"] = self.softWareOnList!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.strategySourceType != nil {
                map["StrategySourceType"] = self.strategySourceType!
            }
            if self.supportsApproval != nil {
                map["SupportsApproval"] = self.supportsApproval!
            }
            if self.usContent != nil {
                map["UsContent"] = self.usContent!
            }
            if self.usTitle != nil {
                map["UsTitle"] = self.usTitle!
            }
            if self.zhContent != nil {
                map["ZhContent"] = self.zhContent!
            }
            if self.zhTitle != nil {
                map["ZhTitle"] = self.zhTitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionType"] as? Int32 {
                self.actionType = value
            }
            if let value = dict["AllGroup"] as? Int32 {
                self.allGroup = value
            }
            if let value = dict["ApprovalId"] as? String {
                self.approvalId = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExcludeUserNameList"] as? [String] {
                self.excludeUserNameList = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InSwitch"] as? Bool {
                self.inSwitch = value
            }
            if let value = dict["IncludeGroupIdList"] as? [String] {
                self.includeGroupIdList = value
            }
            if let value = dict["MainButtonTextCh"] as? String {
                self.mainButtonTextCh = value
            }
            if let value = dict["MainButtonTextEn"] as? String {
                self.mainButtonTextEn = value
            }
            if let value = dict["MatchMode"] as? String {
                self.matchMode = value
            }
            if let value = dict["MatchTargetIds"] as? [String] {
                self.matchTargetIds = value
            }
            if let value = dict["MinorButtonTextCh"] as? String {
                self.minorButtonTextCh = value
            }
            if let value = dict["MinorButtonTextEn"] as? String {
                self.minorButtonTextEn = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OutSwitch"] as? Bool {
                self.outSwitch = value
            }
            if let value = dict["PolicyType"] as? Int32 {
                self.policyType = value
            }
            if let value = dict["PortOnList"] as? [String] {
                self.portOnList = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["SelectionKey"] as? String {
                self.selectionKey = value
            }
            if let value = dict["SoftWareOnList"] as? [String] {
                self.softWareOnList = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["StrategySourceType"] as? String {
                self.strategySourceType = value
            }
            if let value = dict["SupportsApproval"] as? Int32 {
                self.supportsApproval = value
            }
            if let value = dict["UsContent"] as? String {
                self.usContent = value
            }
            if let value = dict["UsTitle"] as? String {
                self.usTitle = value
            }
            if let value = dict["ZhContent"] as? String {
                self.zhContent = value
            }
            if let value = dict["ZhTitle"] as? String {
                self.zhTitle = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var list: [ListClientRuleStrategyResponseBody.List]?

    public var pageInfo: ListClientRuleStrategyResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [Any?] {
            var tmp : [ListClientRuleStrategyResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListClientRuleStrategyResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = ListClientRuleStrategyResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListClientRuleStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClientRuleStrategyResponseBody?

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
            var model = ListClientRuleStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSystemConfigRulesRequest : Tea.TeaModel {
    public var aggregationIds: [Int32]?

    public var currentPage: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var ruleName: String?

    public var ruleTypes: [Int32]?

    public var selectionKey: String?

    public var systemType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregationIds != nil {
            map["AggregationIds"] = self.aggregationIds!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleTypes != nil {
            map["RuleTypes"] = self.ruleTypes!
        }
        if self.selectionKey != nil {
            map["SelectionKey"] = self.selectionKey!
        }
        if self.systemType != nil {
            map["SystemType"] = self.systemType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggregationIds"] as? [Int32] {
            self.aggregationIds = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleTypes"] as? [Int32] {
            self.ruleTypes = value
        }
        if let value = dict["SelectionKey"] as? String {
            self.selectionKey = value
        }
        if let value = dict["SystemType"] as? Int32 {
            self.systemType = value
        }
    }
}

public class ListSystemConfigRulesShrinkRequest : Tea.TeaModel {
    public var aggregationIdsShrink: String?

    public var currentPage: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var ruleName: String?

    public var ruleTypesShrink: String?

    public var selectionKey: String?

    public var systemType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregationIdsShrink != nil {
            map["AggregationIds"] = self.aggregationIdsShrink!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleTypesShrink != nil {
            map["RuleTypes"] = self.ruleTypesShrink!
        }
        if self.selectionKey != nil {
            map["SelectionKey"] = self.selectionKey!
        }
        if self.systemType != nil {
            map["SystemType"] = self.systemType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggregationIds"] as? String {
            self.aggregationIdsShrink = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleTypes"] as? String {
            self.ruleTypesShrink = value
        }
        if let value = dict["SelectionKey"] as? String {
            self.selectionKey = value
        }
        if let value = dict["SystemType"] as? Int32 {
            self.systemType = value
        }
    }
}

public class ListSystemConfigRulesResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var id: Int32?

        public var platform: String?

        public var ruleName: String?

        public var ruleType: Int32?

        public var status: String?

        public var switchId: String?

        public override init() {
            super.init()
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
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.switchId != nil {
                map["SwitchId"] = self.switchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? Int32 {
                self.id = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleType"] as? Int32 {
                self.ruleType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SwitchId"] as? String {
                self.switchId = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var count: Int32?

        public var currentPage: Int32?

        public var pageSize: Int32?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var list: [ListSystemConfigRulesResponseBody.List]?

    public var pageInfo: ListSystemConfigRulesResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [Any?] {
            var tmp : [ListSystemConfigRulesResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListSystemConfigRulesResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = ListSystemConfigRulesResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListSystemConfigRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSystemConfigRulesResponseBody?

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
            var model = ListSystemConfigRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateTargetConfigRequest : Tea.TeaModel {
    public var selectionKey: String?

    public var status: String?

    public var switchIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.selectionKey != nil {
            map["SelectionKey"] = self.selectionKey!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.switchIdList != nil {
            map["SwitchIdList"] = self.switchIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SelectionKey"] as? String {
            self.selectionKey = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SwitchIdList"] as? [String] {
            self.switchIdList = value
        }
    }
}

public class OperateTargetConfigShrinkRequest : Tea.TeaModel {
    public var selectionKey: String?

    public var status: String?

    public var switchIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.selectionKey != nil {
            map["SelectionKey"] = self.selectionKey!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.switchIdListShrink != nil {
            map["SwitchIdList"] = self.switchIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SelectionKey"] as? String {
            self.selectionKey = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SwitchIdList"] as? String {
            self.switchIdListShrink = value
        }
    }
}

public class OperateTargetConfigResponseBody : Tea.TeaModel {
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

public class OperateTargetConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateTargetConfigResponseBody?

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
            var model = OperateTargetConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAssetScopeRequest : Tea.TeaModel {
    public var id: Int64?

    public var matchMode: String?

    public var matchTargetIds: [String]?

    public override init() {
        super.init()
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
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.matchTargetIds != nil {
            map["MatchTargetIds"] = self.matchTargetIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["MatchMode"] as? String {
            self.matchMode = value
        }
        if let value = dict["MatchTargetIds"] as? [String] {
            self.matchTargetIds = value
        }
    }
}

public class UpdateAssetScopeResponseBody : Tea.TeaModel {
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

public class UpdateAssetScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAssetScopeResponseBody?

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
            var model = UpdateAssetScopeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateClientRuleStrategyRequest : Tea.TeaModel {
    public var actionType: Int32?

    public var allGroup: Int32?

    public var approvalId: String?

    public var cmdline: String?

    public var description_: String?

    public var excludeUserNameList: [String]?

    public var filePath: String?

    public var id: Int64?

    public var inSwitch: Bool?

    public var includeGroupIdList: [String]?

    public var ip: String?

    public var mainButtonTextCh: String?

    public var mainButtonTextEn: String?

    public var matchMode: String?

    public var matchTargetIds: [String]?

    public var md5List: String?

    public var minorButtonTextCh: String?

    public var minorButtonTextEn: String?

    public var name: String?

    public var newFilePath: String?

    public var outSwitch: Bool?

    public var parentCmdline: String?

    public var parentProcPath: String?

    public var platform: String?

    public var policyType: Int32?

    public var port: String?

    public var portOnList: [String]?

    public var priority: Int32?

    public var procPath: String?

    public var registryContent: String?

    public var registryKey: String?

    public var ruleType: Int32?

    public var softWareOnList: [String]?

    public var status: Int32?

    public var strategySourceType: String?

    public var supportsApproval: Int32?

    public var usContent: String?

    public var usTitle: String?

    public var zhContent: String?

    public var zhTitle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.allGroup != nil {
            map["AllGroup"] = self.allGroup!
        }
        if self.approvalId != nil {
            map["ApprovalId"] = self.approvalId!
        }
        if self.cmdline != nil {
            map["Cmdline"] = self.cmdline!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeUserNameList != nil {
            map["ExcludeUserNameList"] = self.excludeUserNameList!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.inSwitch != nil {
            map["InSwitch"] = self.inSwitch!
        }
        if self.includeGroupIdList != nil {
            map["IncludeGroupIdList"] = self.includeGroupIdList!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.mainButtonTextCh != nil {
            map["MainButtonTextCh"] = self.mainButtonTextCh!
        }
        if self.mainButtonTextEn != nil {
            map["MainButtonTextEn"] = self.mainButtonTextEn!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.matchTargetIds != nil {
            map["MatchTargetIds"] = self.matchTargetIds!
        }
        if self.md5List != nil {
            map["Md5List"] = self.md5List!
        }
        if self.minorButtonTextCh != nil {
            map["MinorButtonTextCh"] = self.minorButtonTextCh!
        }
        if self.minorButtonTextEn != nil {
            map["MinorButtonTextEn"] = self.minorButtonTextEn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newFilePath != nil {
            map["NewFilePath"] = self.newFilePath!
        }
        if self.outSwitch != nil {
            map["OutSwitch"] = self.outSwitch!
        }
        if self.parentCmdline != nil {
            map["ParentCmdline"] = self.parentCmdline!
        }
        if self.parentProcPath != nil {
            map["ParentProcPath"] = self.parentProcPath!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.portOnList != nil {
            map["PortOnList"] = self.portOnList!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.procPath != nil {
            map["ProcPath"] = self.procPath!
        }
        if self.registryContent != nil {
            map["RegistryContent"] = self.registryContent!
        }
        if self.registryKey != nil {
            map["RegistryKey"] = self.registryKey!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.softWareOnList != nil {
            map["SoftWareOnList"] = self.softWareOnList!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.strategySourceType != nil {
            map["StrategySourceType"] = self.strategySourceType!
        }
        if self.supportsApproval != nil {
            map["SupportsApproval"] = self.supportsApproval!
        }
        if self.usContent != nil {
            map["UsContent"] = self.usContent!
        }
        if self.usTitle != nil {
            map["UsTitle"] = self.usTitle!
        }
        if self.zhContent != nil {
            map["ZhContent"] = self.zhContent!
        }
        if self.zhTitle != nil {
            map["ZhTitle"] = self.zhTitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? Int32 {
            self.actionType = value
        }
        if let value = dict["AllGroup"] as? Int32 {
            self.allGroup = value
        }
        if let value = dict["ApprovalId"] as? String {
            self.approvalId = value
        }
        if let value = dict["Cmdline"] as? String {
            self.cmdline = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExcludeUserNameList"] as? [String] {
            self.excludeUserNameList = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InSwitch"] as? Bool {
            self.inSwitch = value
        }
        if let value = dict["IncludeGroupIdList"] as? [String] {
            self.includeGroupIdList = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["MainButtonTextCh"] as? String {
            self.mainButtonTextCh = value
        }
        if let value = dict["MainButtonTextEn"] as? String {
            self.mainButtonTextEn = value
        }
        if let value = dict["MatchMode"] as? String {
            self.matchMode = value
        }
        if let value = dict["MatchTargetIds"] as? [String] {
            self.matchTargetIds = value
        }
        if let value = dict["Md5List"] as? String {
            self.md5List = value
        }
        if let value = dict["MinorButtonTextCh"] as? String {
            self.minorButtonTextCh = value
        }
        if let value = dict["MinorButtonTextEn"] as? String {
            self.minorButtonTextEn = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NewFilePath"] as? String {
            self.newFilePath = value
        }
        if let value = dict["OutSwitch"] as? Bool {
            self.outSwitch = value
        }
        if let value = dict["ParentCmdline"] as? String {
            self.parentCmdline = value
        }
        if let value = dict["ParentProcPath"] as? String {
            self.parentProcPath = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["PolicyType"] as? Int32 {
            self.policyType = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["PortOnList"] as? [String] {
            self.portOnList = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ProcPath"] as? String {
            self.procPath = value
        }
        if let value = dict["RegistryContent"] as? String {
            self.registryContent = value
        }
        if let value = dict["RegistryKey"] as? String {
            self.registryKey = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["SoftWareOnList"] as? [String] {
            self.softWareOnList = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["StrategySourceType"] as? String {
            self.strategySourceType = value
        }
        if let value = dict["SupportsApproval"] as? Int32 {
            self.supportsApproval = value
        }
        if let value = dict["UsContent"] as? String {
            self.usContent = value
        }
        if let value = dict["UsTitle"] as? String {
            self.usTitle = value
        }
        if let value = dict["ZhContent"] as? String {
            self.zhContent = value
        }
        if let value = dict["ZhTitle"] as? String {
            self.zhTitle = value
        }
    }
}

public class UpdateClientRuleStrategyShrinkRequest : Tea.TeaModel {
    public var actionType: Int32?

    public var allGroup: Int32?

    public var approvalId: String?

    public var cmdline: String?

    public var description_: String?

    public var excludeUserNameListShrink: String?

    public var filePath: String?

    public var id: Int64?

    public var inSwitch: Bool?

    public var includeGroupIdListShrink: String?

    public var ip: String?

    public var mainButtonTextCh: String?

    public var mainButtonTextEn: String?

    public var matchMode: String?

    public var matchTargetIds: [String]?

    public var md5List: String?

    public var minorButtonTextCh: String?

    public var minorButtonTextEn: String?

    public var name: String?

    public var newFilePath: String?

    public var outSwitch: Bool?

    public var parentCmdline: String?

    public var parentProcPath: String?

    public var platform: String?

    public var policyType: Int32?

    public var port: String?

    public var portOnListShrink: String?

    public var priority: Int32?

    public var procPath: String?

    public var registryContent: String?

    public var registryKey: String?

    public var ruleType: Int32?

    public var softWareOnListShrink: String?

    public var status: Int32?

    public var strategySourceType: String?

    public var supportsApproval: Int32?

    public var usContent: String?

    public var usTitle: String?

    public var zhContent: String?

    public var zhTitle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.allGroup != nil {
            map["AllGroup"] = self.allGroup!
        }
        if self.approvalId != nil {
            map["ApprovalId"] = self.approvalId!
        }
        if self.cmdline != nil {
            map["Cmdline"] = self.cmdline!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.excludeUserNameListShrink != nil {
            map["ExcludeUserNameList"] = self.excludeUserNameListShrink!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.inSwitch != nil {
            map["InSwitch"] = self.inSwitch!
        }
        if self.includeGroupIdListShrink != nil {
            map["IncludeGroupIdList"] = self.includeGroupIdListShrink!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.mainButtonTextCh != nil {
            map["MainButtonTextCh"] = self.mainButtonTextCh!
        }
        if self.mainButtonTextEn != nil {
            map["MainButtonTextEn"] = self.mainButtonTextEn!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.matchTargetIds != nil {
            map["MatchTargetIds"] = self.matchTargetIds!
        }
        if self.md5List != nil {
            map["Md5List"] = self.md5List!
        }
        if self.minorButtonTextCh != nil {
            map["MinorButtonTextCh"] = self.minorButtonTextCh!
        }
        if self.minorButtonTextEn != nil {
            map["MinorButtonTextEn"] = self.minorButtonTextEn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newFilePath != nil {
            map["NewFilePath"] = self.newFilePath!
        }
        if self.outSwitch != nil {
            map["OutSwitch"] = self.outSwitch!
        }
        if self.parentCmdline != nil {
            map["ParentCmdline"] = self.parentCmdline!
        }
        if self.parentProcPath != nil {
            map["ParentProcPath"] = self.parentProcPath!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.portOnListShrink != nil {
            map["PortOnList"] = self.portOnListShrink!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.procPath != nil {
            map["ProcPath"] = self.procPath!
        }
        if self.registryContent != nil {
            map["RegistryContent"] = self.registryContent!
        }
        if self.registryKey != nil {
            map["RegistryKey"] = self.registryKey!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.softWareOnListShrink != nil {
            map["SoftWareOnList"] = self.softWareOnListShrink!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.strategySourceType != nil {
            map["StrategySourceType"] = self.strategySourceType!
        }
        if self.supportsApproval != nil {
            map["SupportsApproval"] = self.supportsApproval!
        }
        if self.usContent != nil {
            map["UsContent"] = self.usContent!
        }
        if self.usTitle != nil {
            map["UsTitle"] = self.usTitle!
        }
        if self.zhContent != nil {
            map["ZhContent"] = self.zhContent!
        }
        if self.zhTitle != nil {
            map["ZhTitle"] = self.zhTitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? Int32 {
            self.actionType = value
        }
        if let value = dict["AllGroup"] as? Int32 {
            self.allGroup = value
        }
        if let value = dict["ApprovalId"] as? String {
            self.approvalId = value
        }
        if let value = dict["Cmdline"] as? String {
            self.cmdline = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExcludeUserNameList"] as? String {
            self.excludeUserNameListShrink = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InSwitch"] as? Bool {
            self.inSwitch = value
        }
        if let value = dict["IncludeGroupIdList"] as? String {
            self.includeGroupIdListShrink = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["MainButtonTextCh"] as? String {
            self.mainButtonTextCh = value
        }
        if let value = dict["MainButtonTextEn"] as? String {
            self.mainButtonTextEn = value
        }
        if let value = dict["MatchMode"] as? String {
            self.matchMode = value
        }
        if let value = dict["MatchTargetIds"] as? [String] {
            self.matchTargetIds = value
        }
        if let value = dict["Md5List"] as? String {
            self.md5List = value
        }
        if let value = dict["MinorButtonTextCh"] as? String {
            self.minorButtonTextCh = value
        }
        if let value = dict["MinorButtonTextEn"] as? String {
            self.minorButtonTextEn = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NewFilePath"] as? String {
            self.newFilePath = value
        }
        if let value = dict["OutSwitch"] as? Bool {
            self.outSwitch = value
        }
        if let value = dict["ParentCmdline"] as? String {
            self.parentCmdline = value
        }
        if let value = dict["ParentProcPath"] as? String {
            self.parentProcPath = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["PolicyType"] as? Int32 {
            self.policyType = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["PortOnList"] as? String {
            self.portOnListShrink = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ProcPath"] as? String {
            self.procPath = value
        }
        if let value = dict["RegistryContent"] as? String {
            self.registryContent = value
        }
        if let value = dict["RegistryKey"] as? String {
            self.registryKey = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["SoftWareOnList"] as? String {
            self.softWareOnListShrink = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["StrategySourceType"] as? String {
            self.strategySourceType = value
        }
        if let value = dict["SupportsApproval"] as? Int32 {
            self.supportsApproval = value
        }
        if let value = dict["UsContent"] as? String {
            self.usContent = value
        }
        if let value = dict["UsTitle"] as? String {
            self.usTitle = value
        }
        if let value = dict["ZhContent"] as? String {
            self.zhContent = value
        }
        if let value = dict["ZhTitle"] as? String {
            self.zhTitle = value
        }
    }
}

public class UpdateClientRuleStrategyResponseBody : Tea.TeaModel {
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

public class UpdateClientRuleStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClientRuleStrategyResponseBody?

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
            var model = UpdateClientRuleStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
