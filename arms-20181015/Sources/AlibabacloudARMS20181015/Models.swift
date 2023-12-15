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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalInfo") && dict["AdditionalInfo"] != nil {
            self.additionalInfo = dict["AdditionalInfo"] as! String
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("Children") && dict["Children"] != nil {
            var tmp : [CallChainInfo] = []
            for v in dict["Children"] as! [Any] {
                var model = CallChainInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.children = tmp
        }
        if dict.keys.contains("HaveSpan") && dict["HaveSpan"] != nil {
            self.haveSpan = dict["HaveSpan"] as! Bool
        }
        if dict.keys.contains("LogMap") && dict["LogMap"] != nil {
            self.logMap = dict["LogMap"] as! [String: [String: Any]]
        }
        if dict.keys.contains("LogTime") && dict["LogTime"] != nil {
            self.logTime = dict["LogTime"] as! Int64
        }
        if dict.keys.contains("ParentSpanId") && dict["ParentSpanId"] != nil {
            self.parentSpanId = dict["ParentSpanId"] as! String
        }
        if dict.keys.contains("Pid") && dict["Pid"] != nil {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("Rpc") && dict["Rpc"] != nil {
            self.rpc = dict["Rpc"] as! String
        }
        if dict.keys.contains("RpcId") && dict["RpcId"] != nil {
            self.rpcId = dict["RpcId"] as! String
        }
        if dict.keys.contains("RpcType") && dict["RpcType"] != nil {
            self.rpcType = dict["RpcType"] as! Int64
        }
        if dict.keys.contains("ServerIp") && dict["ServerIp"] != nil {
            self.serverIp = dict["ServerIp"] as! String
        }
        if dict.keys.contains("Span") && dict["Span"] != nil {
            self.span = dict["Span"] as! Int64
        }
        if dict.keys.contains("SpanId") && dict["SpanId"] != nil {
            self.spanId = dict["SpanId"] as! String
        }
        if dict.keys.contains("TagMap") && dict["TagMap"] != nil {
            self.tagMap = dict["TagMap"] as! [String: String]
        }
        if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
            self.traceId = dict["TraceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commercial") && dict["commercial"] != nil {
            self.commercial = dict["commercial"] as! Bool
        }
        if dict.keys.contains("deployType") && dict["deployType"] != nil {
            self.deployType = dict["deployType"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("endTime") && dict["endTime"] != nil {
            self.endTime = dict["endTime"] as! Double
        }
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! Double
        }
        if dict.keys.contains("grafanaVersion") && dict["grafanaVersion"] != nil {
            self.grafanaVersion = dict["grafanaVersion"] as! String
        }
        if dict.keys.contains("grafanaWorkspaceDomain") && dict["grafanaWorkspaceDomain"] != nil {
            self.grafanaWorkspaceDomain = dict["grafanaWorkspaceDomain"] as! String
        }
        if dict.keys.contains("grafanaWorkspaceEdition") && dict["grafanaWorkspaceEdition"] != nil {
            self.grafanaWorkspaceEdition = dict["grafanaWorkspaceEdition"] as! String
        }
        if dict.keys.contains("grafanaWorkspaceId") && dict["grafanaWorkspaceId"] != nil {
            self.grafanaWorkspaceId = dict["grafanaWorkspaceId"] as! String
        }
        if dict.keys.contains("grafanaWorkspaceIp") && dict["grafanaWorkspaceIp"] != nil {
            self.grafanaWorkspaceIp = dict["grafanaWorkspaceIp"] as! String
        }
        if dict.keys.contains("grafanaWorkspaceName") && dict["grafanaWorkspaceName"] != nil {
            self.grafanaWorkspaceName = dict["grafanaWorkspaceName"] as! String
        }
        if dict.keys.contains("maxAccount") && dict["maxAccount"] != nil {
            self.maxAccount = dict["maxAccount"] as! String
        }
        if dict.keys.contains("ntmId") && dict["ntmId"] != nil {
            self.ntmId = dict["ntmId"] as! String
        }
        if dict.keys.contains("personalDomain") && dict["personalDomain"] != nil {
            self.personalDomain = dict["personalDomain"] as! String
        }
        if dict.keys.contains("personalDomainPrefix") && dict["personalDomainPrefix"] != nil {
            self.personalDomainPrefix = dict["personalDomainPrefix"] as! String
        }
        if dict.keys.contains("privateDomain") && dict["privateDomain"] != nil {
            self.privateDomain = dict["privateDomain"] as! String
        }
        if dict.keys.contains("privateIp") && dict["privateIp"] != nil {
            self.privateIp = dict["privateIp"] as! String
        }
        if dict.keys.contains("protocol") && dict["protocol"] != nil {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("resourceGroupId") && dict["resourceGroupId"] != nil {
            self.resourceGroupId = dict["resourceGroupId"] as! String
        }
        if dict.keys.contains("shareSynced") && dict["shareSynced"] != nil {
            self.shareSynced = dict["shareSynced"] as! Bool
        }
        if dict.keys.contains("snatIp") && dict["snatIp"] != nil {
            self.snatIp = dict["snatIp"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [GrafanaWorkspace.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = GrafanaWorkspace.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("upgradeVersion") && dict["upgradeVersion"] != nil {
            self.upgradeVersion = dict["upgradeVersion"] as! [String]
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! Int64
        }
        if dict.keys.contains("accountNotes") && dict["accountNotes"] != nil {
            self.accountNotes = dict["accountNotes"] as! String
        }
        if dict.keys.contains("aliyunUid") && dict["aliyunUid"] != nil {
            self.aliyunUid = dict["aliyunUid"] as! String
        }
        if dict.keys.contains("aliyunUserName") && dict["aliyunUserName"] != nil {
            self.aliyunUserName = dict["aliyunUserName"] as! String
        }
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! Double
        }
        if dict.keys.contains("orgs") && dict["orgs"] != nil {
            var tmp : [GrafanaWorkspaceUserOrg] = []
            for v in dict["orgs"] as! [Any] {
                var model = GrafanaWorkspaceUserOrg()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("isArms") && dict["isArms"] != nil {
            self.isArms = dict["isArms"] as! Bool
        }
        if dict.keys.contains("isDefault") && dict["isDefault"] != nil {
            self.isDefault = dict["isDefault"] as! Bool
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("sendReminder") && dict["sendReminder"] != nil {
            self.sendReminder = dict["sendReminder"] as! Bool
        }
        if dict.keys.contains("settings") && dict["settings"] != nil {
            self.settings = dict["settings"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("uid") && dict["uid"] != nil {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("armsAlertsEnable") && dict["armsAlertsEnable"] != nil {
            self.armsAlertsEnable = dict["armsAlertsEnable"] as! String
        }
        if dict.keys.contains("armsAlertsWebhookUrl") && dict["armsAlertsWebhookUrl"] != nil {
            self.armsAlertsWebhookUrl = dict["armsAlertsWebhookUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cert") && dict["cert"] != nil {
            self.cert = dict["cert"] as! String
        }
        if dict.keys.contains("date") && dict["date"] != nil {
            self.date = dict["date"] as! Int64
        }
        if dict.keys.contains("domain") && dict["domain"] != nil {
            self.domain = dict["domain"] as! String
        }
        if dict.keys.contains("grafanaWorkspaceId") && dict["grafanaWorkspaceId"] != nil {
            self.grafanaWorkspaceId = dict["grafanaWorkspaceId"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("key") && dict["key"] != nil {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("privateZone") && dict["privateZone"] != nil {
            self.privateZone = dict["privateZone"] as! String
        }
        if dict.keys.contains("protocol") && dict["protocol"] != nil {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("uri") && dict["uri"] != nil {
            self.uri = dict["uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! Int64
        }
        if dict.keys.contains("grafanaWorkspaceId") && dict["grafanaWorkspaceId"] != nil {
            self.grafanaWorkspaceId = dict["grafanaWorkspaceId"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("lastSendTime") && dict["lastSendTime"] != nil {
            self.lastSendTime = dict["lastSendTime"] as! Int64
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("reportChannelTarget") && dict["reportChannelTarget"] != nil {
            self.reportChannelTarget = dict["reportChannelTarget"] as! String
        }
        if dict.keys.contains("reportChannelType") && dict["reportChannelType"] != nil {
            self.reportChannelType = dict["reportChannelType"] as! String
        }
        if dict.keys.contains("reportStyle") && dict["reportStyle"] != nil {
            self.reportStyle = dict["reportStyle"] as! String
        }
        if dict.keys.contains("reportType") && dict["reportType"] != nil {
            self.reportType = dict["reportType"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("triggerDay") && dict["triggerDay"] != nil {
            self.triggerDay = dict["triggerDay"] as! String
        }
        if dict.keys.contains("triggerTime") && dict["triggerTime"] != nil {
            self.triggerTime = dict["triggerTime"] as! String
        }
        if dict.keys.contains("triggerType") && dict["triggerType"] != nil {
            self.triggerType = dict["triggerType"] as! String
        }
        if dict.keys.contains("url") && dict["url"] != nil {
            self.url = dict["url"] as! String
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! Int64
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! Int64
        }
        if dict.keys.contains("grafanaWorkspaceId") && dict["grafanaWorkspaceId"] != nil {
            self.grafanaWorkspaceId = dict["grafanaWorkspaceId"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("processName") && dict["processName"] != nil {
            self.processName = dict["processName"] as! String
        }
        if dict.keys.contains("processStatus") && dict["processStatus"] != nil {
            self.processStatus = dict["processStatus"] as! String
        }
        if dict.keys.contains("subType") && dict["subType"] != nil {
            self.subType = dict["subType"] as! String
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ext") && dict["ext"] != nil {
            self.ext = dict["ext"] as! String
        }
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! Int64
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! Int64
        }
        if dict.keys.contains("grafanaWorkspaceId") && dict["grafanaWorkspaceId"] != nil {
            self.grafanaWorkspaceId = dict["grafanaWorkspaceId"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("processName") && dict["processName"] != nil {
            self.processName = dict["processName"] as! String
        }
        if dict.keys.contains("processStatus") && dict["processStatus"] != nil {
            self.processStatus = dict["processStatus"] as! String
        }
        if dict.keys.contains("subType") && dict["subType"] != nil {
            self.subType = dict["subType"] as! String
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("defaultValue") && dict["defaultValue"] != nil {
            self.defaultValue = dict["defaultValue"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("example") && dict["example"] != nil {
            self.example = dict["example"] as! String
        }
        if dict.keys.contains("key") && dict["key"] != nil {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("secret") && dict["secret"] != nil {
            self.secret = dict["secret"] as! Bool
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("propertys") && dict["propertys"] != nil {
            var tmp : [GrafanaWorkspaceIniProperty] = []
            for v in dict["propertys"] as! [Any] {
                var model = GrafanaWorkspaceIniProperty()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.propertys = tmp
        }
        if dict.keys.contains("section") && dict["section"] != nil {
            self.section = dict["section"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("datasourceAmount") && dict["datasourceAmount"] != nil {
            self.datasourceAmount = dict["datasourceAmount"] as! Int64
        }
        if dict.keys.contains("integrationId") && dict["integrationId"] != nil {
            self.integrationId = dict["integrationId"] as! String
        }
        if dict.keys.contains("integrationName") && dict["integrationName"] != nil {
            self.integrationName = dict["integrationName"] as! String
        }
        if dict.keys.contains("previews") && dict["previews"] != nil {
            var tmp : [GrafanaWorkspaceIntegrationPreview] = []
            for v in dict["previews"] as! [Any] {
                var model = GrafanaWorkspaceIntegrationPreview()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.previews = tmp
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("supportRegions") && dict["supportRegions"] != nil {
            self.supportRegions = dict["supportRegions"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterType") && dict["clusterType"] != nil {
            self.clusterType = dict["clusterType"] as! String
        }
        if dict.keys.contains("datasourceId") && dict["datasourceId"] != nil {
            self.datasourceId = dict["datasourceId"] as! String
        }
        if dict.keys.contains("datasourceName") && dict["datasourceName"] != nil {
            self.datasourceName = dict["datasourceName"] as! String
        }
        if dict.keys.contains("datasourceUrl") && dict["datasourceUrl"] != nil {
            self.datasourceUrl = dict["datasourceUrl"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("exploreUrl") && dict["exploreUrl"] != nil {
            self.exploreUrl = dict["exploreUrl"] as! String
        }
        if dict.keys.contains("folderUrl") && dict["folderUrl"] != nil {
            self.folderUrl = dict["folderUrl"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dataSources") && dict["dataSources"] != nil {
            var tmp : [GrafanaWorkspaceIntegrationDataSource] = []
            for v in dict["dataSources"] as! [Any] {
                var model = GrafanaWorkspaceIntegrationDataSource()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataSources = tmp
        }
        if dict.keys.contains("integrationId") && dict["integrationId"] != nil {
            self.integrationId = dict["integrationId"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("image") && dict["image"] != nil {
            self.image = dict["image"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("thumbnail") && dict["thumbnail"] != nil {
            self.thumbnail = dict["thumbnail"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("date") && dict["date"] != nil {
            self.date = dict["date"] as! Int64
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("image") && dict["image"] != nil {
            self.image = dict["image"] as! String
        }
        if dict.keys.contains("link") && dict["link"] != nil {
            self.link = dict["link"] as! String
        }
        if dict.keys.contains("title") && dict["title"] != nil {
            self.title = dict["title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("date") && dict["date"] != nil {
            self.date = dict["date"] as! Double
        }
        if dict.keys.contains("detail") && dict["detail"] != nil {
            self.detail = dict["detail"] as! String
        }
        if dict.keys.contains("grafanaWorkspaceId") && dict["grafanaWorkspaceId"] != nil {
            self.grafanaWorkspaceId = dict["grafanaWorkspaceId"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("operatorId") && dict["operatorId"] != nil {
            self.operatorId = dict["operatorId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("apiUrl") && dict["apiUrl"] != nil {
            self.apiUrl = dict["apiUrl"] as! String
        }
        if dict.keys.contains("authType") && dict["authType"] != nil {
            self.authType = dict["authType"] as! String
        }
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! Double
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! Double
        }
        if dict.keys.contains("grafanaWorkspaceId") && dict["grafanaWorkspaceId"] != nil {
            self.grafanaWorkspaceId = dict["grafanaWorkspaceId"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("processStatus") && dict["processStatus"] != nil {
            self.processStatus = dict["processStatus"] as! String
        }
        if dict.keys.contains("transDetails") && dict["transDetails"] != nil {
            var tmp : [GrafanaWorkspaceTransDetail] = []
            for v in dict["transDetails"] as! [Any] {
                var model = GrafanaWorkspaceTransDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.transDetails = tmp
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dashboardAmount") && dict["dashboardAmount"] != nil {
            self.dashboardAmount = dict["dashboardAmount"] as! Int32
        }
        if dict.keys.contains("dataSourceAmount") && dict["dataSourceAmount"] != nil {
            self.dataSourceAmount = dict["dataSourceAmount"] as! Int32
        }
        if dict.keys.contains("original") && dict["original"] != nil {
            self.original = dict["original"] as! Int64
        }
        if dict.keys.contains("originalName") && dict["originalName"] != nil {
            self.originalName = dict["originalName"] as! String
        }
        if dict.keys.contains("target") && dict["target"] != nil {
            self.target = dict["target"] as! Int64
        }
        if dict.keys.contains("targetName") && dict["targetName"] != nil {
            self.targetName = dict["targetName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("orgId") && dict["orgId"] != nil {
            self.orgId = dict["orgId"] as! Int64
        }
        if dict.keys.contains("orgName") && dict["orgName"] != nil {
            self.orgName = dict["orgName"] as! String
        }
        if dict.keys.contains("role") && dict["role"] != nil {
            self.role = dict["role"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fcConfig") && dict["fcConfig"] != nil {
            self.fcConfig = dict["fcConfig"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("installMsg") && dict["installMsg"] != nil {
            self.installMsg = dict["installMsg"] as! String
        }
        if dict.keys.contains("installStatus") && dict["installStatus"] != nil {
            self.installStatus = dict["installStatus"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("securityGroupId") && dict["securityGroupId"] != nil {
            self.securityGroupId = dict["securityGroupId"] as! String
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! String
        }
        if dict.keys.contains("vSwitchId") && dict["vSwitchId"] != nil {
            self.vSwitchId = dict["vSwitchId"] as! String
        }
        if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
            self.vpcId = dict["vpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("regionName") && dict["regionName"] != nil {
            self.regionName = dict["regionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fcConfig") && dict["fcConfig"] != nil {
            self.fcConfig = dict["fcConfig"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("installStatus") && dict["installStatus"] != nil {
            self.installStatus = dict["installStatus"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("regionId") && dict["regionId"] != nil {
            self.regionId = dict["regionId"] as! String
        }
        if dict.keys.contains("securityGroupId") && dict["securityGroupId"] != nil {
            self.securityGroupId = dict["securityGroupId"] as! String
        }
        if dict.keys.contains("securityGroupIds") && dict["securityGroupIds"] != nil {
            self.securityGroupIds = dict["securityGroupIds"] as! [String]
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! String
        }
        if dict.keys.contains("vSwitchId") && dict["vSwitchId"] != nil {
            self.vSwitchId = dict["vSwitchId"] as! String
        }
        if dict.keys.contains("vSwitchIds") && dict["vSwitchIds"] != nil {
            self.vSwitchIds = dict["vSwitchIds"] as! [String]
        }
        if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
            self.vpcId = dict["vpcId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
            self.datasetId = dict["DatasetId"] as! Int64
        }
        if dict.keys.contains("DateStr") && dict["DateStr"] != nil {
            self.dateStr = dict["DateStr"] as! String
        }
        if dict.keys.contains("Dimensions") && dict["Dimensions"] != nil {
            var tmp : [ARMSQueryDataSetRequest.Dimensions] = []
            for v in dict["Dimensions"] as! [Any] {
                var model = ARMSQueryDataSetRequest.Dimensions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dimensions = tmp
        }
        if dict.keys.contains("HackerUserId") && dict["HackerUserId"] != nil {
            self.hackerUserId = dict["HackerUserId"] as! String
        }
        if dict.keys.contains("HungryMode") && dict["HungryMode"] != nil {
            self.hungryMode = dict["HungryMode"] as! Bool
        }
        if dict.keys.contains("IntervalInSec") && dict["IntervalInSec"] != nil {
            self.intervalInSec = dict["IntervalInSec"] as! Int32
        }
        if dict.keys.contains("IsDrillDown") && dict["IsDrillDown"] != nil {
            self.isDrillDown = dict["IsDrillDown"] as! Bool
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("MaxTime") && dict["MaxTime"] != nil {
            self.maxTime = dict["MaxTime"] as! Int64
        }
        if dict.keys.contains("Measures") && dict["Measures"] != nil {
            self.measures = dict["Measures"] as! [String]
        }
        if dict.keys.contains("MinTime") && dict["MinTime"] != nil {
            self.minTime = dict["MinTime"] as! Int64
        }
        if dict.keys.contains("OptionalDims") && dict["OptionalDims"] != nil {
            var tmp : [ARMSQueryDataSetRequest.OptionalDims] = []
            for v in dict["OptionalDims"] as! [Any] {
                var model = ARMSQueryDataSetRequest.OptionalDims()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.optionalDims = tmp
        }
        if dict.keys.contains("OrderByKey") && dict["OrderByKey"] != nil {
            self.orderByKey = dict["OrderByKey"] as! String
        }
        if dict.keys.contains("ReduceTail") && dict["ReduceTail"] != nil {
            self.reduceTail = dict["ReduceTail"] as! Bool
        }
        if dict.keys.contains("RequiredDims") && dict["RequiredDims"] != nil {
            var tmp : [ARMSQueryDataSetRequest.RequiredDims] = []
            for v in dict["RequiredDims"] as! [Any] {
                var model = ARMSQueryDataSetRequest.RequiredDims()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.requiredDims = tmp
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ARMSQueryDataSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimensions") && dict["Dimensions"] != nil {
            self.dimensions = dict["Dimensions"] as! [String]
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            var tmp : [MetricQueryRequest.Filters] = []
            for v in dict["Filters"] as! [Any] {
                var model = MetricQueryRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("HackerUserId") && dict["HackerUserId"] != nil {
            self.hackerUserId = dict["HackerUserId"] as! String
        }
        if dict.keys.contains("IintervalInSec") && dict["IintervalInSec"] != nil {
            self.iintervalInSec = dict["IintervalInSec"] as! Int32
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Measures") && dict["Measures"] != nil {
            self.measures = dict["Measures"] as! [String]
        }
        if dict.keys.contains("Metric") && dict["Metric"] != nil {
            self.metric = dict["Metric"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = MetricQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
