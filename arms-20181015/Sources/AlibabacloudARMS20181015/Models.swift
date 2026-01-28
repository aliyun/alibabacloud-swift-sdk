import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CallChainInfo : Tea.TeaModel {
    public var additionalInfo: String?

    public var appName: String?

    public var appType: String?

    public var children: [CallChainInfo]?

    public var haveSpan: Bool?

    public var logMap: [String: [String: Any]]?

    public var logTime: Int64?

    public var parentSpanId: String?

    public var pid: String?

    public var regionId: String?

    public var resultCode: String?

    public var rpc: String?

    public var rpcId: String?

    public var rpcType: Int64?

    public var serverIp: String?

    public var span: Int64?

    public var spanId: String?

    public var tagMap: [String: String]?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalInfo != nil {
            map["AdditionalInfo"] = self.additionalInfo!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["Children"] = tmp
        }
        if self.haveSpan != nil {
            map["HaveSpan"] = self.haveSpan!
        }
        if self.logMap != nil {
            map["LogMap"] = self.logMap!
        }
        if self.logTime != nil {
            map["LogTime"] = self.logTime!
        }
        if self.parentSpanId != nil {
            map["ParentSpanId"] = self.parentSpanId!
        }
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.rpc != nil {
            map["Rpc"] = self.rpc!
        }
        if self.rpcId != nil {
            map["RpcId"] = self.rpcId!
        }
        if self.rpcType != nil {
            map["RpcType"] = self.rpcType!
        }
        if self.serverIp != nil {
            map["ServerIp"] = self.serverIp!
        }
        if self.span != nil {
            map["Span"] = self.span!
        }
        if self.spanId != nil {
            map["SpanId"] = self.spanId!
        }
        if self.tagMap != nil {
            map["TagMap"] = self.tagMap!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalInfo"] as? String {
            self.additionalInfo = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["Children"] as? [Any?] {
            var tmp : [CallChainInfo] = []
            for v in value {
                if v != nil {
                    var model = CallChainInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.children = tmp
        }
        if let value = dict["HaveSpan"] as? Bool {
            self.haveSpan = value
        }
        if let value = dict["LogMap"] as? [String: [String: Any]] {
            self.logMap = value
        }
        if let value = dict["LogTime"] as? Int64 {
            self.logTime = value
        }
        if let value = dict["ParentSpanId"] as? String {
            self.parentSpanId = value
        }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["Rpc"] as? String {
            self.rpc = value
        }
        if let value = dict["RpcId"] as? String {
            self.rpcId = value
        }
        if let value = dict["RpcType"] as? Int64 {
            self.rpcType = value
        }
        if let value = dict["ServerIp"] as? String {
            self.serverIp = value
        }
        if let value = dict["Span"] as? Int64 {
            self.span = value
        }
        if let value = dict["SpanId"] as? String {
            self.spanId = value
        }
        if let value = dict["TagMap"] as? [String: String] {
            self.tagMap = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class GrafanaWorkspace : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var commercial: Bool?

    public var deployType: String?

    public var description_: String?

    public var endTime: Double?

    public var gmtCreate: Double?

    public var grafanaVersion: String?

    public var grafanaWorkspaceDomain: String?

    public var grafanaWorkspaceDomainStatus: String?

    public var grafanaWorkspaceEdition: String?

    public var grafanaWorkspaceId: String?

    public var grafanaWorkspaceIp: String?

    public var grafanaWorkspaceName: String?

    public var maxAccount: String?

    public var ntmId: String?

    public var personalDomain: String?

    public var personalDomainPrefix: String?

    public var privateDomain: String?

    public var privateIp: String?

    public var protocol_: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var shareSynced: Bool?

    public var snatIp: String?

    public var status: String?

    public var tags: [GrafanaWorkspace.Tags]?

    public var upgradeVersion: [String]?

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
        if self.commercial != nil {
            map["commercial"] = self.commercial!
        }
        if self.deployType != nil {
            map["deployType"] = self.deployType!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.grafanaVersion != nil {
            map["grafanaVersion"] = self.grafanaVersion!
        }
        if self.grafanaWorkspaceDomain != nil {
            map["grafanaWorkspaceDomain"] = self.grafanaWorkspaceDomain!
        }
        if self.grafanaWorkspaceDomainStatus != nil {
            map["grafanaWorkspaceDomainStatus"] = self.grafanaWorkspaceDomainStatus!
        }
        if self.grafanaWorkspaceEdition != nil {
            map["grafanaWorkspaceEdition"] = self.grafanaWorkspaceEdition!
        }
        if self.grafanaWorkspaceId != nil {
            map["grafanaWorkspaceId"] = self.grafanaWorkspaceId!
        }
        if self.grafanaWorkspaceIp != nil {
            map["grafanaWorkspaceIp"] = self.grafanaWorkspaceIp!
        }
        if self.grafanaWorkspaceName != nil {
            map["grafanaWorkspaceName"] = self.grafanaWorkspaceName!
        }
        if self.maxAccount != nil {
            map["maxAccount"] = self.maxAccount!
        }
        if self.ntmId != nil {
            map["ntmId"] = self.ntmId!
        }
        if self.personalDomain != nil {
            map["personalDomain"] = self.personalDomain!
        }
        if self.personalDomainPrefix != nil {
            map["personalDomainPrefix"] = self.personalDomainPrefix!
        }
        if self.privateDomain != nil {
            map["privateDomain"] = self.privateDomain!
        }
        if self.privateIp != nil {
            map["privateIp"] = self.privateIp!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["resourceGroupId"] = self.resourceGroupId!
        }
        if self.shareSynced != nil {
            map["shareSynced"] = self.shareSynced!
        }
        if self.snatIp != nil {
            map["snatIp"] = self.snatIp!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.upgradeVersion != nil {
            map["upgradeVersion"] = self.upgradeVersion!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commercial"] as? Bool {
            self.commercial = value
        }
        if let value = dict["deployType"] as? String {
            self.deployType = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["endTime"] as? Double {
            self.endTime = value
        }
        if let value = dict["gmtCreate"] as? Double {
            self.gmtCreate = value
        }
        if let value = dict["grafanaVersion"] as? String {
            self.grafanaVersion = value
        }
        if let value = dict["grafanaWorkspaceDomain"] as? String {
            self.grafanaWorkspaceDomain = value
        }
        if let value = dict["grafanaWorkspaceDomainStatus"] as? String {
            self.grafanaWorkspaceDomainStatus = value
        }
        if let value = dict["grafanaWorkspaceEdition"] as? String {
            self.grafanaWorkspaceEdition = value
        }
        if let value = dict["grafanaWorkspaceId"] as? String {
            self.grafanaWorkspaceId = value
        }
        if let value = dict["grafanaWorkspaceIp"] as? String {
            self.grafanaWorkspaceIp = value
        }
        if let value = dict["grafanaWorkspaceName"] as? String {
            self.grafanaWorkspaceName = value
        }
        if let value = dict["maxAccount"] as? String {
            self.maxAccount = value
        }
        if let value = dict["ntmId"] as? String {
            self.ntmId = value
        }
        if let value = dict["personalDomain"] as? String {
            self.personalDomain = value
        }
        if let value = dict["personalDomainPrefix"] as? String {
            self.personalDomainPrefix = value
        }
        if let value = dict["privateDomain"] as? String {
            self.privateDomain = value
        }
        if let value = dict["privateIp"] as? String {
            self.privateIp = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["resourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["shareSynced"] as? Bool {
            self.shareSynced = value
        }
        if let value = dict["snatIp"] as? String {
            self.snatIp = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["tags"] as? [Any?] {
            var tmp : [GrafanaWorkspace.Tags] = []
            for v in value {
                if v != nil {
                    var model = GrafanaWorkspace.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["upgradeVersion"] as? [String] {
            self.upgradeVersion = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GrafanaWorkspaceAccount : Tea.TeaModel {
    public var accountId: Int64?

    public var accountNotes: String?

    public var aliyunUid: String?

    public var aliyunUserName: String?

    public var gmtCreate: Double?

    public var orgs: [GrafanaWorkspaceUserOrg]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.accountNotes != nil {
            map["accountNotes"] = self.accountNotes!
        }
        if self.aliyunUid != nil {
            map["aliyunUid"] = self.aliyunUid!
        }
        if self.aliyunUserName != nil {
            map["aliyunUserName"] = self.aliyunUserName!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.orgs != nil {
            var tmp : [Any] = []
            for k in self.orgs! {
                tmp.append(k.toMap())
            }
            map["orgs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["accountNotes"] as? String {
            self.accountNotes = value
        }
        if let value = dict["aliyunUid"] as? String {
            self.aliyunUid = value
        }
        if let value = dict["aliyunUserName"] as? String {
            self.aliyunUserName = value
        }
        if let value = dict["gmtCreate"] as? Double {
            self.gmtCreate = value
        }
        if let value = dict["orgs"] as? [Any?] {
            var tmp : [GrafanaWorkspaceUserOrg] = []
            for v in value {
                if v != nil {
                    var model = GrafanaWorkspaceUserOrg()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orgs = tmp
        }
    }
}

public class GrafanaWorkspaceAlertNotification : Tea.TeaModel {
    public var id: Int64?

    public var isArms: Bool?

    public var isDefault: Bool?

    public var name: String?

    public var sendReminder: Bool?

    public var settings: String?

    public var type: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.isArms != nil {
            map["isArms"] = self.isArms!
        }
        if self.isDefault != nil {
            map["isDefault"] = self.isDefault!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.sendReminder != nil {
            map["sendReminder"] = self.sendReminder!
        }
        if self.settings != nil {
            map["settings"] = self.settings!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["isArms"] as? Bool {
            self.isArms = value
        }
        if let value = dict["isDefault"] as? Bool {
            self.isDefault = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["sendReminder"] as? Bool {
            self.sendReminder = value
        }
        if let value = dict["settings"] as? String {
            self.settings = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class GrafanaWorkspaceArmsAlertConfig : Tea.TeaModel {
    public var armsAlertsEnable: String?

    public var armsAlertsWebhookUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.armsAlertsEnable != nil {
            map["armsAlertsEnable"] = self.armsAlertsEnable!
        }
        if self.armsAlertsWebhookUrl != nil {
            map["armsAlertsWebhookUrl"] = self.armsAlertsWebhookUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["armsAlertsEnable"] as? String {
            self.armsAlertsEnable = value
        }
        if let value = dict["armsAlertsWebhookUrl"] as? String {
            self.armsAlertsWebhookUrl = value
        }
    }
}

public class GrafanaWorkspaceCustomDomain : Tea.TeaModel {
    public var cert: String?

    public var date: Int64?

    public var domain: String?

    public var grafanaWorkspaceId: String?

    public var id: Int64?

    public var key: String?

    public var privateZone: String?

    public var protocol_: String?

    public var status: String?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cert != nil {
            map["cert"] = self.cert!
        }
        if self.date != nil {
            map["date"] = self.date!
        }
        if self.domain != nil {
            map["domain"] = self.domain!
        }
        if self.grafanaWorkspaceId != nil {
            map["grafanaWorkspaceId"] = self.grafanaWorkspaceId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.privateZone != nil {
            map["privateZone"] = self.privateZone!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.uri != nil {
            map["uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cert"] as? String {
            self.cert = value
        }
        if let value = dict["date"] as? Int64 {
            self.date = value
        }
        if let value = dict["domain"] as? String {
            self.domain = value
        }
        if let value = dict["grafanaWorkspaceId"] as? String {
            self.grafanaWorkspaceId = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["privateZone"] as? String {
            self.privateZone = value
        }
        if let value = dict["protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["uri"] as? String {
            self.uri = value
        }
    }
}

public class GrafanaWorkspaceDashboardReport : Tea.TeaModel {
    public var gmtCreate: Int64?

    public var grafanaWorkspaceId: String?

    public var id: Int64?

    public var lastSendTime: Int64?

    public var msg: String?

    public var name: String?

    public var reportChannelTarget: String?

    public var reportChannelType: String?

    public var reportStyle: String?

    public var reportType: String?

    public var status: String?

    public var triggerDay: String?

    public var triggerTime: String?

    public var triggerType: String?

    public var url: String?

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
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.grafanaWorkspaceId != nil {
            map["grafanaWorkspaceId"] = self.grafanaWorkspaceId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.lastSendTime != nil {
            map["lastSendTime"] = self.lastSendTime!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.reportChannelTarget != nil {
            map["reportChannelTarget"] = self.reportChannelTarget!
        }
        if self.reportChannelType != nil {
            map["reportChannelType"] = self.reportChannelType!
        }
        if self.reportStyle != nil {
            map["reportStyle"] = self.reportStyle!
        }
        if self.reportType != nil {
            map["reportType"] = self.reportType!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.triggerDay != nil {
            map["triggerDay"] = self.triggerDay!
        }
        if self.triggerTime != nil {
            map["triggerTime"] = self.triggerTime!
        }
        if self.triggerType != nil {
            map["triggerType"] = self.triggerType!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gmtCreate"] as? Int64 {
            self.gmtCreate = value
        }
        if let value = dict["grafanaWorkspaceId"] as? String {
            self.grafanaWorkspaceId = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["lastSendTime"] as? Int64 {
            self.lastSendTime = value
        }
        if let value = dict["msg"] as? String {
            self.msg = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["reportChannelTarget"] as? String {
            self.reportChannelTarget = value
        }
        if let value = dict["reportChannelType"] as? String {
            self.reportChannelType = value
        }
        if let value = dict["reportStyle"] as? String {
            self.reportStyle = value
        }
        if let value = dict["reportType"] as? String {
            self.reportType = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["triggerDay"] as? String {
            self.triggerDay = value
        }
        if let value = dict["triggerTime"] as? String {
            self.triggerTime = value
        }
        if let value = dict["triggerType"] as? String {
            self.triggerType = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GrafanaWorkspaceDataBackup : Tea.TeaModel {
    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var grafanaWorkspaceId: String?

    public var id: Int64?

    public var msg: String?

    public var processName: String?

    public var processStatus: String?

    public var subType: String?

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
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.grafanaWorkspaceId != nil {
            map["grafanaWorkspaceId"] = self.grafanaWorkspaceId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.processName != nil {
            map["processName"] = self.processName!
        }
        if self.processStatus != nil {
            map["processStatus"] = self.processStatus!
        }
        if self.subType != nil {
            map["subType"] = self.subType!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gmtCreate"] as? Int64 {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["grafanaWorkspaceId"] as? String {
            self.grafanaWorkspaceId = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["msg"] as? String {
            self.msg = value
        }
        if let value = dict["processName"] as? String {
            self.processName = value
        }
        if let value = dict["processStatus"] as? String {
            self.processStatus = value
        }
        if let value = dict["subType"] as? String {
            self.subType = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GrafanaWorkspaceIniBackup : Tea.TeaModel {
    public var ext: String?

    public var gmtCreate: Int64?

    public var gmtModified: Int64?

    public var grafanaWorkspaceId: String?

    public var id: Int64?

    public var msg: String?

    public var processName: String?

    public var processStatus: String?

    public var subType: String?

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
        if self.ext != nil {
            map["ext"] = self.ext!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.grafanaWorkspaceId != nil {
            map["grafanaWorkspaceId"] = self.grafanaWorkspaceId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.processName != nil {
            map["processName"] = self.processName!
        }
        if self.processStatus != nil {
            map["processStatus"] = self.processStatus!
        }
        if self.subType != nil {
            map["subType"] = self.subType!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ext"] as? String {
            self.ext = value
        }
        if let value = dict["gmtCreate"] as? Int64 {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? Int64 {
            self.gmtModified = value
        }
        if let value = dict["grafanaWorkspaceId"] as? String {
            self.grafanaWorkspaceId = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["msg"] as? String {
            self.msg = value
        }
        if let value = dict["processName"] as? String {
            self.processName = value
        }
        if let value = dict["processStatus"] as? String {
            self.processStatus = value
        }
        if let value = dict["subType"] as? String {
            self.subType = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GrafanaWorkspaceIniProperty : Tea.TeaModel {
    public var defaultValue: String?

    public var description_: String?

    public var example: String?

    public var key: String?

    public var secret: Bool?

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
        if self.defaultValue != nil {
            map["defaultValue"] = self.defaultValue!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.example != nil {
            map["example"] = self.example!
        }
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.secret != nil {
            map["secret"] = self.secret!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["defaultValue"] as? String {
            self.defaultValue = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["example"] as? String {
            self.example = value
        }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["secret"] as? Bool {
            self.secret = value
        }
        if let value = dict["value"] as? String {
            self.value = value
        }
    }
}

public class GrafanaWorkspaceIniSection : Tea.TeaModel {
    public var propertys: [GrafanaWorkspaceIniProperty]?

    public var section: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertys != nil {
            var tmp : [Any] = []
            for k in self.propertys! {
                tmp.append(k.toMap())
            }
            map["propertys"] = tmp
        }
        if self.section != nil {
            map["section"] = self.section!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["propertys"] as? [Any?] {
            var tmp : [GrafanaWorkspaceIniProperty] = []
            for v in value {
                if v != nil {
                    var model = GrafanaWorkspaceIniProperty()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.propertys = tmp
        }
        if let value = dict["section"] as? String {
            self.section = value
        }
    }
}

public class GrafanaWorkspaceIntegration : Tea.TeaModel {
    public var datasourceAmount: Int64?

    public var integrationId: String?

    public var integrationName: String?

    public var previews: [GrafanaWorkspaceIntegrationPreview]?

    public var status: String?

    public var supportRegions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasourceAmount != nil {
            map["datasourceAmount"] = self.datasourceAmount!
        }
        if self.integrationId != nil {
            map["integrationId"] = self.integrationId!
        }
        if self.integrationName != nil {
            map["integrationName"] = self.integrationName!
        }
        if self.previews != nil {
            var tmp : [Any] = []
            for k in self.previews! {
                tmp.append(k.toMap())
            }
            map["previews"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.supportRegions != nil {
            map["supportRegions"] = self.supportRegions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datasourceAmount"] as? Int64 {
            self.datasourceAmount = value
        }
        if let value = dict["integrationId"] as? String {
            self.integrationId = value
        }
        if let value = dict["integrationName"] as? String {
            self.integrationName = value
        }
        if let value = dict["previews"] as? [Any?] {
            var tmp : [GrafanaWorkspaceIntegrationPreview] = []
            for v in value {
                if v != nil {
                    var model = GrafanaWorkspaceIntegrationPreview()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.previews = tmp
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["supportRegions"] as? [String] {
            self.supportRegions = value
        }
    }
}

public class GrafanaWorkspaceIntegrationDataSource : Tea.TeaModel {
    public var clusterType: String?

    public var datasourceId: String?

    public var datasourceName: String?

    public var datasourceUrl: String?

    public var description_: String?

    public var exploreUrl: String?

    public var folderUrl: String?

    public var regionId: String?

    public var status: String?

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
        if self.clusterType != nil {
            map["clusterType"] = self.clusterType!
        }
        if self.datasourceId != nil {
            map["datasourceId"] = self.datasourceId!
        }
        if self.datasourceName != nil {
            map["datasourceName"] = self.datasourceName!
        }
        if self.datasourceUrl != nil {
            map["datasourceUrl"] = self.datasourceUrl!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.exploreUrl != nil {
            map["exploreUrl"] = self.exploreUrl!
        }
        if self.folderUrl != nil {
            map["folderUrl"] = self.folderUrl!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["clusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["datasourceId"] as? String {
            self.datasourceId = value
        }
        if let value = dict["datasourceName"] as? String {
            self.datasourceName = value
        }
        if let value = dict["datasourceUrl"] as? String {
            self.datasourceUrl = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["exploreUrl"] as? String {
            self.exploreUrl = value
        }
        if let value = dict["folderUrl"] as? String {
            self.folderUrl = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class GrafanaWorkspaceIntegrationDetail : Tea.TeaModel {
    public var dataSources: [GrafanaWorkspaceIntegrationDataSource]?

    public var integrationId: String?

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
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["dataSources"] = tmp
        }
        if self.integrationId != nil {
            map["integrationId"] = self.integrationId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataSources"] as? [Any?] {
            var tmp : [GrafanaWorkspaceIntegrationDataSource] = []
            for v in value {
                if v != nil {
                    var model = GrafanaWorkspaceIntegrationDataSource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["integrationId"] as? String {
            self.integrationId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class GrafanaWorkspaceIntegrationPreview : Tea.TeaModel {
    public var id: String?

    public var image: String?

    public var name: String?

    public var thumbnail: String?

    public override init() {
        super.init()
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
            map["id"] = self.id!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.thumbnail != nil {
            map["thumbnail"] = self.thumbnail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["image"] as? String {
            self.image = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["thumbnail"] as? String {
            self.thumbnail = value
        }
    }
}

public class GrafanaWorkspaceNews : Tea.TeaModel {
    public var date: Int64?

    public var description_: String?

    public var image: String?

    public var link: String?

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
        if self.date != nil {
            map["date"] = self.date!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.image != nil {
            map["image"] = self.image!
        }
        if self.link != nil {
            map["link"] = self.link!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["date"] as? Int64 {
            self.date = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["image"] as? String {
            self.image = value
        }
        if let value = dict["link"] as? String {
            self.link = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class GrafanaWorkspaceOperateLog : Tea.TeaModel {
    public var date: Double?

    public var detail: String?

    public var grafanaWorkspaceId: String?

    public var id: Int64?

    public var operatorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.date != nil {
            map["date"] = self.date!
        }
        if self.detail != nil {
            map["detail"] = self.detail!
        }
        if self.grafanaWorkspaceId != nil {
            map["grafanaWorkspaceId"] = self.grafanaWorkspaceId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.operatorId != nil {
            map["operatorId"] = self.operatorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["date"] as? Double {
            self.date = value
        }
        if let value = dict["detail"] as? String {
            self.detail = value
        }
        if let value = dict["grafanaWorkspaceId"] as? String {
            self.grafanaWorkspaceId = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["operatorId"] as? String {
            self.operatorId = value
        }
    }
}

public class GrafanaWorkspaceOrg : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class GrafanaWorkspaceTrans : Tea.TeaModel {
    public var apiUrl: String?

    public var authType: String?

    public var gmtCreate: Double?

    public var gmtModified: Double?

    public var grafanaWorkspaceId: String?

    public var id: Int64?

    public var msg: String?

    public var processStatus: String?

    public var transDetails: [GrafanaWorkspaceTransDetail]?

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
        if self.apiUrl != nil {
            map["apiUrl"] = self.apiUrl!
        }
        if self.authType != nil {
            map["authType"] = self.authType!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.grafanaWorkspaceId != nil {
            map["grafanaWorkspaceId"] = self.grafanaWorkspaceId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.processStatus != nil {
            map["processStatus"] = self.processStatus!
        }
        if self.transDetails != nil {
            var tmp : [Any] = []
            for k in self.transDetails! {
                tmp.append(k.toMap())
            }
            map["transDetails"] = tmp
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["apiUrl"] as? String {
            self.apiUrl = value
        }
        if let value = dict["authType"] as? String {
            self.authType = value
        }
        if let value = dict["gmtCreate"] as? Double {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? Double {
            self.gmtModified = value
        }
        if let value = dict["grafanaWorkspaceId"] as? String {
            self.grafanaWorkspaceId = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["msg"] as? String {
            self.msg = value
        }
        if let value = dict["processStatus"] as? String {
            self.processStatus = value
        }
        if let value = dict["transDetails"] as? [Any?] {
            var tmp : [GrafanaWorkspaceTransDetail] = []
            for v in value {
                if v != nil {
                    var model = GrafanaWorkspaceTransDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.transDetails = tmp
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GrafanaWorkspaceTransDetail : Tea.TeaModel {
    public var dashboardAmount: Int32?

    public var dataSourceAmount: Int32?

    public var original: Int64?

    public var originalName: String?

    public var target: Int64?

    public var targetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dashboardAmount != nil {
            map["dashboardAmount"] = self.dashboardAmount!
        }
        if self.dataSourceAmount != nil {
            map["dataSourceAmount"] = self.dataSourceAmount!
        }
        if self.original != nil {
            map["original"] = self.original!
        }
        if self.originalName != nil {
            map["originalName"] = self.originalName!
        }
        if self.target != nil {
            map["target"] = self.target!
        }
        if self.targetName != nil {
            map["targetName"] = self.targetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dashboardAmount"] as? Int32 {
            self.dashboardAmount = value
        }
        if let value = dict["dataSourceAmount"] as? Int32 {
            self.dataSourceAmount = value
        }
        if let value = dict["original"] as? Int64 {
            self.original = value
        }
        if let value = dict["originalName"] as? String {
            self.originalName = value
        }
        if let value = dict["target"] as? Int64 {
            self.target = value
        }
        if let value = dict["targetName"] as? String {
            self.targetName = value
        }
    }
}

public class GrafanaWorkspaceUserCert : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class GrafanaWorkspaceUserOrg : Tea.TeaModel {
    public var orgId: Int64?

    public var orgName: String?

    public var role: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orgId != nil {
            map["orgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["orgName"] = self.orgName!
        }
        if self.role != nil {
            map["role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["orgId"] as? Int64 {
            self.orgId = value
        }
        if let value = dict["orgName"] as? String {
            self.orgName = value
        }
        if let value = dict["role"] as? String {
            self.role = value
        }
    }
}

public class GrafanaWorkspaceVpcConfig : Tea.TeaModel {
    public var fcConfig: String?

    public var id: Int64?

    public var installMsg: String?

    public var installStatus: String?

    public var name: String?

    public var regionId: String?

    public var securityGroupId: String?

    public var userId: String?

    public var vSwitchId: String?

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
        if self.fcConfig != nil {
            map["fcConfig"] = self.fcConfig!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.installMsg != nil {
            map["installMsg"] = self.installMsg!
        }
        if self.installStatus != nil {
            map["installStatus"] = self.installStatus!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.vSwitchId != nil {
            map["vSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fcConfig"] as? String {
            self.fcConfig = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["installMsg"] as? String {
            self.installMsg = value
        }
        if let value = dict["installStatus"] as? String {
            self.installStatus = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["vSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class GrafanaWorkspaceVpcRegion : Tea.TeaModel {
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
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.regionName != nil {
            map["regionName"] = self.regionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["regionName"] as? String {
            self.regionName = value
        }
    }
}

public class GrafanaWorkspaceVpcRegionDetail : Tea.TeaModel {
    public var fcConfig: String?

    public var id: Int64?

    public var installStatus: String?

    public var name: String?

    public var regionId: String?

    public var securityGroupId: String?

    public var securityGroupIds: [String]?

    public var userId: String?

    public var vSwitchId: String?

    public var vSwitchIds: [String]?

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
        if self.fcConfig != nil {
            map["fcConfig"] = self.fcConfig!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.installStatus != nil {
            map["installStatus"] = self.installStatus!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.regionId != nil {
            map["regionId"] = self.regionId!
        }
        if self.securityGroupId != nil {
            map["securityGroupId"] = self.securityGroupId!
        }
        if self.securityGroupIds != nil {
            map["securityGroupIds"] = self.securityGroupIds!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.vSwitchId != nil {
            map["vSwitchId"] = self.vSwitchId!
        }
        if self.vSwitchIds != nil {
            map["vSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["vpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fcConfig"] as? String {
            self.fcConfig = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["installStatus"] as? String {
            self.installStatus = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
        if let value = dict["securityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["securityGroupIds"] as? [String] {
            self.securityGroupIds = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
        if let value = dict["vSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["vSwitchIds"] as? [String] {
            self.vSwitchIds = value
        }
        if let value = dict["vpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class ARMSQueryDataSetRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
        public var key: String?

        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
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
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public class OptionalDims : Tea.TeaModel {
        public var key: String?

        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
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
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public class RequiredDims : Tea.TeaModel {
        public var key: String?

        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
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
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var datasetId: Int64?

    public var dateStr: String?

    public var dimensions: [ARMSQueryDataSetRequest.Dimensions]?

    public var hackerUserId: String?

    public var hungryMode: Bool?

    public var intervalInSec: Int32?

    public var isDrillDown: Bool?

    public var limit: Int32?

    public var maxTime: Int64?

    public var measures: [String]?

    public var minTime: Int64?

    public var optionalDims: [ARMSQueryDataSetRequest.OptionalDims]?

    public var orderByKey: String?

    public var reduceTail: Bool?

    public var requiredDims: [ARMSQueryDataSetRequest.RequiredDims]?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.dateStr != nil {
            map["DateStr"] = self.dateStr!
        }
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.hackerUserId != nil {
            map["HackerUserId"] = self.hackerUserId!
        }
        if self.hungryMode != nil {
            map["HungryMode"] = self.hungryMode!
        }
        if self.intervalInSec != nil {
            map["IntervalInSec"] = self.intervalInSec!
        }
        if self.isDrillDown != nil {
            map["IsDrillDown"] = self.isDrillDown!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.measures != nil {
            map["Measures"] = self.measures!
        }
        if self.minTime != nil {
            map["MinTime"] = self.minTime!
        }
        if self.optionalDims != nil {
            var tmp : [Any] = []
            for k in self.optionalDims! {
                tmp.append(k.toMap())
            }
            map["OptionalDims"] = tmp
        }
        if self.orderByKey != nil {
            map["OrderByKey"] = self.orderByKey!
        }
        if self.reduceTail != nil {
            map["ReduceTail"] = self.reduceTail!
        }
        if self.requiredDims != nil {
            var tmp : [Any] = []
            for k in self.requiredDims! {
                tmp.append(k.toMap())
            }
            map["RequiredDims"] = tmp
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetId"] as? Int64 {
            self.datasetId = value
        }
        if let value = dict["DateStr"] as? String {
            self.dateStr = value
        }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [ARMSQueryDataSetRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = ARMSQueryDataSetRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["HackerUserId"] as? String {
            self.hackerUserId = value
        }
        if let value = dict["HungryMode"] as? Bool {
            self.hungryMode = value
        }
        if let value = dict["IntervalInSec"] as? Int32 {
            self.intervalInSec = value
        }
        if let value = dict["IsDrillDown"] as? Bool {
            self.isDrillDown = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["MaxTime"] as? Int64 {
            self.maxTime = value
        }
        if let value = dict["Measures"] as? [String] {
            self.measures = value
        }
        if let value = dict["MinTime"] as? Int64 {
            self.minTime = value
        }
        if let value = dict["OptionalDims"] as? [Any?] {
            var tmp : [ARMSQueryDataSetRequest.OptionalDims] = []
            for v in value {
                if v != nil {
                    var model = ARMSQueryDataSetRequest.OptionalDims()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.optionalDims = tmp
        }
        if let value = dict["OrderByKey"] as? String {
            self.orderByKey = value
        }
        if let value = dict["ReduceTail"] as? Bool {
            self.reduceTail = value
        }
        if let value = dict["RequiredDims"] as? [Any?] {
            var tmp : [ARMSQueryDataSetRequest.RequiredDims] = []
            for v in value {
                if v != nil {
                    var model = ARMSQueryDataSetRequest.RequiredDims()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.requiredDims = tmp
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class ARMSQueryDataSetResponseBody : Tea.TeaModel {
    public var data: String?

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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ARMSQueryDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ARMSQueryDataSetResponseBody?

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
            var model = ARMSQueryDataSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MetricQueryRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
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
    public var dimensions: [String]?

    public var endTime: Int64?

    public var filters: [MetricQueryRequest.Filters]?

    public var hackerUserId: String?

    public var iintervalInSec: Int32?

    public var limit: Int32?

    public var measures: [String]?

    public var metric: String?

    public var order: String?

    public var orderBy: String?

    public var securityToken: String?

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
        if self.dimensions != nil {
            map["Dimensions"] = self.dimensions!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.hackerUserId != nil {
            map["HackerUserId"] = self.hackerUserId!
        }
        if self.iintervalInSec != nil {
            map["IintervalInSec"] = self.iintervalInSec!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.measures != nil {
            map["Measures"] = self.measures!
        }
        if self.metric != nil {
            map["Metric"] = self.metric!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dimensions"] as? [String] {
            self.dimensions = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [MetricQueryRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = MetricQueryRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["HackerUserId"] as? String {
            self.hackerUserId = value
        }
        if let value = dict["IintervalInSec"] as? Int32 {
            self.iintervalInSec = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["Measures"] as? [String] {
            self.measures = value
        }
        if let value = dict["Metric"] as? String {
            self.metric = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class MetricQueryResponseBody : Tea.TeaModel {
    public var data: String?

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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MetricQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MetricQueryResponseBody?

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
            var model = MetricQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
