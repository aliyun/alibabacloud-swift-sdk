import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChangeRecoveryPointRequest : Tea.TeaModel {
    public var eipAddressId: String?

    public var recoveryCpu: Int32?

    public var recoveryEssdPerformanceLevel: String?

    public var recoveryInstanceName: String?

    public var recoveryInstanceType: String?

    public var recoveryIpAddress: String?

    public var recoveryMemory: Int64?

    public var recoveryNetwork: String?

    public var recoveryPointId: String?

    public var recoveryPointTime: Int64?

    public var recoveryPostScriptContent: String?

    public var recoveryPostScriptType: String?

    public var recoveryReserveIp: Bool?

    public var recoveryUseDhcp: Bool?

    public var recoveryUseEssd: Bool?

    public var recoveryUseSsd: Bool?

    public var securityToken: String?

    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eipAddressId != nil {
            map["EipAddressId"] = self.eipAddressId!
        }
        if self.recoveryCpu != nil {
            map["RecoveryCpu"] = self.recoveryCpu!
        }
        if self.recoveryEssdPerformanceLevel != nil {
            map["RecoveryEssdPerformanceLevel"] = self.recoveryEssdPerformanceLevel!
        }
        if self.recoveryInstanceName != nil {
            map["RecoveryInstanceName"] = self.recoveryInstanceName!
        }
        if self.recoveryInstanceType != nil {
            map["RecoveryInstanceType"] = self.recoveryInstanceType!
        }
        if self.recoveryIpAddress != nil {
            map["RecoveryIpAddress"] = self.recoveryIpAddress!
        }
        if self.recoveryMemory != nil {
            map["RecoveryMemory"] = self.recoveryMemory!
        }
        if self.recoveryNetwork != nil {
            map["RecoveryNetwork"] = self.recoveryNetwork!
        }
        if self.recoveryPointId != nil {
            map["RecoveryPointId"] = self.recoveryPointId!
        }
        if self.recoveryPointTime != nil {
            map["RecoveryPointTime"] = self.recoveryPointTime!
        }
        if self.recoveryPostScriptContent != nil {
            map["RecoveryPostScriptContent"] = self.recoveryPostScriptContent!
        }
        if self.recoveryPostScriptType != nil {
            map["RecoveryPostScriptType"] = self.recoveryPostScriptType!
        }
        if self.recoveryReserveIp != nil {
            map["RecoveryReserveIp"] = self.recoveryReserveIp!
        }
        if self.recoveryUseDhcp != nil {
            map["RecoveryUseDhcp"] = self.recoveryUseDhcp!
        }
        if self.recoveryUseEssd != nil {
            map["RecoveryUseEssd"] = self.recoveryUseEssd!
        }
        if self.recoveryUseSsd != nil {
            map["RecoveryUseSsd"] = self.recoveryUseSsd!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EipAddressId") && dict["EipAddressId"] != nil {
            self.eipAddressId = dict["EipAddressId"] as! String
        }
        if dict.keys.contains("RecoveryCpu") && dict["RecoveryCpu"] != nil {
            self.recoveryCpu = dict["RecoveryCpu"] as! Int32
        }
        if dict.keys.contains("RecoveryEssdPerformanceLevel") && dict["RecoveryEssdPerformanceLevel"] != nil {
            self.recoveryEssdPerformanceLevel = dict["RecoveryEssdPerformanceLevel"] as! String
        }
        if dict.keys.contains("RecoveryInstanceName") && dict["RecoveryInstanceName"] != nil {
            self.recoveryInstanceName = dict["RecoveryInstanceName"] as! String
        }
        if dict.keys.contains("RecoveryInstanceType") && dict["RecoveryInstanceType"] != nil {
            self.recoveryInstanceType = dict["RecoveryInstanceType"] as! String
        }
        if dict.keys.contains("RecoveryIpAddress") && dict["RecoveryIpAddress"] != nil {
            self.recoveryIpAddress = dict["RecoveryIpAddress"] as! String
        }
        if dict.keys.contains("RecoveryMemory") && dict["RecoveryMemory"] != nil {
            self.recoveryMemory = dict["RecoveryMemory"] as! Int64
        }
        if dict.keys.contains("RecoveryNetwork") && dict["RecoveryNetwork"] != nil {
            self.recoveryNetwork = dict["RecoveryNetwork"] as! String
        }
        if dict.keys.contains("RecoveryPointId") && dict["RecoveryPointId"] != nil {
            self.recoveryPointId = dict["RecoveryPointId"] as! String
        }
        if dict.keys.contains("RecoveryPointTime") && dict["RecoveryPointTime"] != nil {
            self.recoveryPointTime = dict["RecoveryPointTime"] as! Int64
        }
        if dict.keys.contains("RecoveryPostScriptContent") && dict["RecoveryPostScriptContent"] != nil {
            self.recoveryPostScriptContent = dict["RecoveryPostScriptContent"] as! String
        }
        if dict.keys.contains("RecoveryPostScriptType") && dict["RecoveryPostScriptType"] != nil {
            self.recoveryPostScriptType = dict["RecoveryPostScriptType"] as! String
        }
        if dict.keys.contains("RecoveryReserveIp") && dict["RecoveryReserveIp"] != nil {
            self.recoveryReserveIp = dict["RecoveryReserveIp"] as! Bool
        }
        if dict.keys.contains("RecoveryUseDhcp") && dict["RecoveryUseDhcp"] != nil {
            self.recoveryUseDhcp = dict["RecoveryUseDhcp"] as! Bool
        }
        if dict.keys.contains("RecoveryUseEssd") && dict["RecoveryUseEssd"] != nil {
            self.recoveryUseEssd = dict["RecoveryUseEssd"] as! Bool
        }
        if dict.keys.contains("RecoveryUseSsd") && dict["RecoveryUseSsd"] != nil {
            self.recoveryUseSsd = dict["RecoveryUseSsd"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class ChangeRecoveryPointResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ChangeRecoveryPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeRecoveryPointResponseBody?

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
            var model = ChangeRecoveryPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CommitFailoverRequest : Tea.TeaModel {
    public var securityToken: String?

    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class CommitFailoverResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CommitFailoverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CommitFailoverResponseBody?

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
            var model = CommitFailoverResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRecoveryPlanRequest : Tea.TeaModel {
    public var content: String?

    public var direction: String?

    public var name: String?

    public var sitePairId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
    }
}

public class CreateRecoveryPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateRecoveryPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRecoveryPlanResponseBody?

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
            var model = CreateRecoveryPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSitePairRequest : Tea.TeaModel {
    public var primarySiteName: String?

    public var primarySiteRegionId: String?

    public var primarySiteType: String?

    public var primarySiteVpcId: String?

    public var primarySiteZoneId: String?

    public var secondarySiteName: String?

    public var secondarySiteRegionId: String?

    public var secondarySiteType: String?

    public var secondarySiteVpcId: String?

    public var secondarySiteZoneId: String?

    public var securityToken: String?

    public var sitePairType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.primarySiteName != nil {
            map["PrimarySiteName"] = self.primarySiteName!
        }
        if self.primarySiteRegionId != nil {
            map["PrimarySiteRegionId"] = self.primarySiteRegionId!
        }
        if self.primarySiteType != nil {
            map["PrimarySiteType"] = self.primarySiteType!
        }
        if self.primarySiteVpcId != nil {
            map["PrimarySiteVpcId"] = self.primarySiteVpcId!
        }
        if self.primarySiteZoneId != nil {
            map["PrimarySiteZoneId"] = self.primarySiteZoneId!
        }
        if self.secondarySiteName != nil {
            map["SecondarySiteName"] = self.secondarySiteName!
        }
        if self.secondarySiteRegionId != nil {
            map["SecondarySiteRegionId"] = self.secondarySiteRegionId!
        }
        if self.secondarySiteType != nil {
            map["SecondarySiteType"] = self.secondarySiteType!
        }
        if self.secondarySiteVpcId != nil {
            map["SecondarySiteVpcId"] = self.secondarySiteVpcId!
        }
        if self.secondarySiteZoneId != nil {
            map["SecondarySiteZoneId"] = self.secondarySiteZoneId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sitePairType != nil {
            map["SitePairType"] = self.sitePairType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrimarySiteName") && dict["PrimarySiteName"] != nil {
            self.primarySiteName = dict["PrimarySiteName"] as! String
        }
        if dict.keys.contains("PrimarySiteRegionId") && dict["PrimarySiteRegionId"] != nil {
            self.primarySiteRegionId = dict["PrimarySiteRegionId"] as! String
        }
        if dict.keys.contains("PrimarySiteType") && dict["PrimarySiteType"] != nil {
            self.primarySiteType = dict["PrimarySiteType"] as! String
        }
        if dict.keys.contains("PrimarySiteVpcId") && dict["PrimarySiteVpcId"] != nil {
            self.primarySiteVpcId = dict["PrimarySiteVpcId"] as! String
        }
        if dict.keys.contains("PrimarySiteZoneId") && dict["PrimarySiteZoneId"] != nil {
            self.primarySiteZoneId = dict["PrimarySiteZoneId"] as! String
        }
        if dict.keys.contains("SecondarySiteName") && dict["SecondarySiteName"] != nil {
            self.secondarySiteName = dict["SecondarySiteName"] as! String
        }
        if dict.keys.contains("SecondarySiteRegionId") && dict["SecondarySiteRegionId"] != nil {
            self.secondarySiteRegionId = dict["SecondarySiteRegionId"] as! String
        }
        if dict.keys.contains("SecondarySiteType") && dict["SecondarySiteType"] != nil {
            self.secondarySiteType = dict["SecondarySiteType"] as! String
        }
        if dict.keys.contains("SecondarySiteVpcId") && dict["SecondarySiteVpcId"] != nil {
            self.secondarySiteVpcId = dict["SecondarySiteVpcId"] as! String
        }
        if dict.keys.contains("SecondarySiteZoneId") && dict["SecondarySiteZoneId"] != nil {
            self.secondarySiteZoneId = dict["SecondarySiteZoneId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SitePairType") && dict["SitePairType"] != nil {
            self.sitePairType = dict["SitePairType"] as! String
        }
    }
}

public class CreateSitePairResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var primarySiteId: String?

    public var requestId: String?

    public var secondarySiteId: String?

    public var sitePairId: String?

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
        if self.primarySiteId != nil {
            map["PrimarySiteId"] = self.primarySiteId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secondarySiteId != nil {
            map["SecondarySiteId"] = self.secondarySiteId!
        }
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
        }
        if self.success != nil {
            map["Success"] = self.success!
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
        if dict.keys.contains("PrimarySiteId") && dict["PrimarySiteId"] != nil {
            self.primarySiteId = dict["PrimarySiteId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecondarySiteId") && dict["SecondarySiteId"] != nil {
            self.secondarySiteId = dict["SecondarySiteId"] as! String
        }
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateSitePairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSitePairResponseBody?

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
            var model = CreateSitePairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRecoveryPlanRequest : Tea.TeaModel {
    public var recoveryPlanId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recoveryPlanId != nil {
            map["RecoveryPlanId"] = self.recoveryPlanId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecoveryPlanId") && dict["RecoveryPlanId"] != nil {
            self.recoveryPlanId = dict["RecoveryPlanId"] as! String
        }
    }
}

public class DeleteRecoveryPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteRecoveryPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRecoveryPlanResponseBody?

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
            var model = DeleteRecoveryPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSitePairRequest : Tea.TeaModel {
    public var securityToken: String?

    public var sitePairId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
    }
}

public class DeleteSitePairResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteSitePairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSitePairResponseBody?

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
            var model = DeleteSitePairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableInstanceTypesRequest : Tea.TeaModel {
    public var chargeType: String?

    public var diskType: String?

    public var filter: String?

    public var ioOptimized: Bool?

    public var network: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var region: String?

    public var securityToken: String?

    public var sortBy: String?

    public var userClient: Bool?

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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.ioOptimized != nil {
            map["IoOptimized"] = self.ioOptimized!
        }
        if self.network != nil {
            map["Network"] = self.network!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.userClient != nil {
            map["UserClient"] = self.userClient!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("IoOptimized") && dict["IoOptimized"] != nil {
            self.ioOptimized = dict["IoOptimized"] as! Bool
        }
        if dict.keys.contains("Network") && dict["Network"] != nil {
            self.network = dict["Network"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("UserClient") && dict["UserClient"] != nil {
            self.userClient = dict["UserClient"] as! Bool
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeAvailableInstanceTypesResponseBody : Tea.TeaModel {
    public class InstanceTypes : Tea.TeaModel {
        public var instanceType: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceType != nil {
                map["instanceType"] = self.instanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
                self.instanceType = dict["instanceType"] as! [String]
            }
        }
    }
    public var code: String?

    public var instanceTypes: DescribeAvailableInstanceTypesResponseBody.InstanceTypes?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceTypes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceTypes != nil {
            map["InstanceTypes"] = self.instanceTypes?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceTypes") && dict["InstanceTypes"] != nil {
            var model = DescribeAvailableInstanceTypesResponseBody.InstanceTypes()
            model.fromMap(dict["InstanceTypes"] as! [String: Any])
            self.instanceTypes = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAvailableInstanceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableInstanceTypesResponseBody?

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
            var model = DescribeAvailableInstanceTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInfrastructuresRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var siteId: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
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
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SiteId") && dict["SiteId"] != nil {
            self.siteId = dict["SiteId"] as! String
        }
    }
}

public class DescribeInfrastructuresResponseBody : Tea.TeaModel {
    public class Infrastructures : Tea.TeaModel {
        public class Infrastructure : Tea.TeaModel {
            public var errno: String?

            public var infrastructureId: String?

            public var ipAddress: String?

            public var name: String?

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
                if self.errno != nil {
                    map["Errno"] = self.errno!
                }
                if self.infrastructureId != nil {
                    map["InfrastructureId"] = self.infrastructureId!
                }
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Errno") && dict["Errno"] != nil {
                    self.errno = dict["Errno"] as! String
                }
                if dict.keys.contains("InfrastructureId") && dict["InfrastructureId"] != nil {
                    self.infrastructureId = dict["InfrastructureId"] as! String
                }
                if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
                    self.ipAddress = dict["IpAddress"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var infrastructure: [DescribeInfrastructuresResponseBody.Infrastructures.Infrastructure]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.infrastructure != nil {
                var tmp : [Any] = []
                for k in self.infrastructure! {
                    tmp.append(k.toMap())
                }
                map["infrastructure"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("infrastructure") && dict["infrastructure"] != nil {
                var tmp : [DescribeInfrastructuresResponseBody.Infrastructures.Infrastructure] = []
                for v in dict["infrastructure"] as! [Any] {
                    var model = DescribeInfrastructuresResponseBody.Infrastructures.Infrastructure()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.infrastructure = tmp
            }
        }
    }
    public var code: String?

    public var infrastructures: DescribeInfrastructuresResponseBody.Infrastructures?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.infrastructures?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.infrastructures != nil {
            map["Infrastructures"] = self.infrastructures?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Infrastructures") && dict["Infrastructures"] != nil {
            var model = DescribeInfrastructuresResponseBody.Infrastructures()
            model.fromMap(dict["Infrastructures"] as! [String: Any])
            self.infrastructures = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeInfrastructuresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInfrastructuresResponseBody?

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
            var model = DescribeInfrastructuresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRecoveryPlanRequest : Tea.TeaModel {
    public var recoveryPlanId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recoveryPlanId != nil {
            map["RecoveryPlanId"] = self.recoveryPlanId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecoveryPlanId") && dict["RecoveryPlanId"] != nil {
            self.recoveryPlanId = dict["RecoveryPlanId"] as! String
        }
    }
}

public class DescribeRecoveryPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var content: String?

    public var direction: String?

    public var message: String?

    public var name: String?

    public var recoveryPlanId: String?

    public var requestId: String?

    public var status: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.recoveryPlanId != nil {
            map["RecoveryPlanId"] = self.recoveryPlanId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RecoveryPlanId") && dict["RecoveryPlanId"] != nil {
            self.recoveryPlanId = dict["RecoveryPlanId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeRecoveryPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecoveryPlanResponseBody?

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
            var model = DescribeRecoveryPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRecoveryPlansRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sitePairId: String?

    public override init() {
        super.init()
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
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
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
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
    }
}

public class DescribeRecoveryPlansResponseBody : Tea.TeaModel {
    public class RecoveryPlans : Tea.TeaModel {
        public class RecoveryPlan : Tea.TeaModel {
            public var direction: String?

            public var name: String?

            public var recoveryPlanId: String?

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
                if self.direction != nil {
                    map["Direction"] = self.direction!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.recoveryPlanId != nil {
                    map["RecoveryPlanId"] = self.recoveryPlanId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Direction") && dict["Direction"] != nil {
                    self.direction = dict["Direction"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RecoveryPlanId") && dict["RecoveryPlanId"] != nil {
                    self.recoveryPlanId = dict["RecoveryPlanId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var recoveryPlan: [DescribeRecoveryPlansResponseBody.RecoveryPlans.RecoveryPlan]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.recoveryPlan != nil {
                var tmp : [Any] = []
                for k in self.recoveryPlan! {
                    tmp.append(k.toMap())
                }
                map["recoveryPlan"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("recoveryPlan") && dict["recoveryPlan"] != nil {
                var tmp : [DescribeRecoveryPlansResponseBody.RecoveryPlans.RecoveryPlan] = []
                for v in dict["recoveryPlan"] as! [Any] {
                    var model = DescribeRecoveryPlansResponseBody.RecoveryPlans.RecoveryPlan()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recoveryPlan = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var recoveryPlans: DescribeRecoveryPlansResponseBody.RecoveryPlans?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.recoveryPlans?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.recoveryPlans != nil {
            map["RecoveryPlans"] = self.recoveryPlans?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RecoveryPlans") && dict["RecoveryPlans"] != nil {
            var model = DescribeRecoveryPlansResponseBody.RecoveryPlans()
            model.fromMap(dict["RecoveryPlans"] as! [String: Any])
            self.recoveryPlans = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeRecoveryPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecoveryPlansResponseBody?

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
            var model = DescribeRecoveryPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRecoveryPointsRequest : Tea.TeaModel {
    public var securityToken: String?

    public var serverId: String?

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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeRecoveryPointsResponseBody : Tea.TeaModel {
    public class RecoveryPoints : Tea.TeaModel {
        public class RecoveryPoint : Tea.TeaModel {
            public var applicationConsistent: Bool?

            public var disableReason: String?

            public var disabled: Bool?

            public var recoveryPointId: String?

            public var recoveryPointTime: Int64?

            public var used: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationConsistent != nil {
                    map["ApplicationConsistent"] = self.applicationConsistent!
                }
                if self.disableReason != nil {
                    map["DisableReason"] = self.disableReason!
                }
                if self.disabled != nil {
                    map["Disabled"] = self.disabled!
                }
                if self.recoveryPointId != nil {
                    map["RecoveryPointId"] = self.recoveryPointId!
                }
                if self.recoveryPointTime != nil {
                    map["RecoveryPointTime"] = self.recoveryPointTime!
                }
                if self.used != nil {
                    map["Used"] = self.used!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationConsistent") && dict["ApplicationConsistent"] != nil {
                    self.applicationConsistent = dict["ApplicationConsistent"] as! Bool
                }
                if dict.keys.contains("DisableReason") && dict["DisableReason"] != nil {
                    self.disableReason = dict["DisableReason"] as! String
                }
                if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                    self.disabled = dict["Disabled"] as! Bool
                }
                if dict.keys.contains("RecoveryPointId") && dict["RecoveryPointId"] != nil {
                    self.recoveryPointId = dict["RecoveryPointId"] as! String
                }
                if dict.keys.contains("RecoveryPointTime") && dict["RecoveryPointTime"] != nil {
                    self.recoveryPointTime = dict["RecoveryPointTime"] as! Int64
                }
                if dict.keys.contains("Used") && dict["Used"] != nil {
                    self.used = dict["Used"] as! Bool
                }
            }
        }
        public var recoveryPoint: [DescribeRecoveryPointsResponseBody.RecoveryPoints.RecoveryPoint]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.recoveryPoint != nil {
                var tmp : [Any] = []
                for k in self.recoveryPoint! {
                    tmp.append(k.toMap())
                }
                map["recoveryPoint"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("recoveryPoint") && dict["recoveryPoint"] != nil {
                var tmp : [DescribeRecoveryPointsResponseBody.RecoveryPoints.RecoveryPoint] = []
                for v in dict["recoveryPoint"] as! [Any] {
                    var model = DescribeRecoveryPointsResponseBody.RecoveryPoints.RecoveryPoint()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recoveryPoint = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var recoveryPoints: DescribeRecoveryPointsResponseBody.RecoveryPoints?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.recoveryPoints?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.recoveryPoints != nil {
            map["RecoveryPoints"] = self.recoveryPoints?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RecoveryPoints") && dict["RecoveryPoints"] != nil {
            var model = DescribeRecoveryPointsResponseBody.RecoveryPoints()
            model.fromMap(dict["RecoveryPoints"] as! [String: Any])
            self.recoveryPoints = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeRecoveryPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecoveryPointsResponseBody?

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
            var model = DescribeRecoveryPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeServerRequest : Tea.TeaModel {
    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class DescribeServerResponseBody : Tea.TeaModel {
    public var agentPort: Int32?

    public var agentVersion: String?

    public var alias: String?

    public var code: String?

    public var connectionStatus: String?

    public var consistent: Bool?

    public var cpu: Int32?

    public var crashConsistentPointPolicy: String?

    public var disks: String?

    public var errno: String?

    public var fullSyncCurrentSize: Int64?

    public var fullSyncProgress: Int32?

    public var fullSyncStartTime: Int64?

    public var fullSyncTotalSize: Int64?

    public var hostname: String?

    public var incrementalSyncStartTime: Int64?

    public var ipAddress: String?

    public var latestRecoveryPointTime: String?

    public var memory: Int64?

    public var message: String?

    public var operations: String?

    public var originalInstanceId: String?

    public var osDetail: String?

    public var osType: String?

    public var primarySiteId: String?

    public var recoveredInstanceId: String?

    public var recoveredIpAddress: String?

    public var recoveryCpu: Int32?

    public var recoveryEssdPerformanceLevel: String?

    public var recoveryInstanceName: String?

    public var recoveryInstanceType: String?

    public var recoveryIpAddress: String?

    public var recoveryMemory: Int64?

    public var recoveryNetwork: String?

    public var recoveryPostScriptContent: String?

    public var recoveryPostScriptType: String?

    public var recoveryReserveIp: Bool?

    public var recoveryUseDhcp: Bool?

    public var recoveryUseEssd: Bool?

    public var recoveryUseSsd: Bool?

    public var replicationInfrastructureId: String?

    public var replicationInfrastructureType: String?

    public var replicationNetwork: String?

    public var replicationUseDhcp: Bool?

    public var replicationUseEssd: Bool?

    public var replicationUseOriginalInstance: Bool?

    public var replicationUseSsd: Bool?

    public var requestId: String?

    public var rpo: Int32?

    public var secondarySiteId: String?

    public var serverId: String?

    public var sourceGatewayVersion: String?

    public var status: String?

    public var success: Bool?

    public var targetGatewayVersion: String?

    public var taskId: String?

    public var testFailoverStatus: String?

    public var testRecoveredInstanceId: String?

    public var testRecoveredInstanceName: String?

    public var testRecoveredIpAddress: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentPort != nil {
            map["AgentPort"] = self.agentPort!
        }
        if self.agentVersion != nil {
            map["AgentVersion"] = self.agentVersion!
        }
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.connectionStatus != nil {
            map["ConnectionStatus"] = self.connectionStatus!
        }
        if self.consistent != nil {
            map["Consistent"] = self.consistent!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.crashConsistentPointPolicy != nil {
            map["CrashConsistentPointPolicy"] = self.crashConsistentPointPolicy!
        }
        if self.disks != nil {
            map["Disks"] = self.disks!
        }
        if self.errno != nil {
            map["Errno"] = self.errno!
        }
        if self.fullSyncCurrentSize != nil {
            map["FullSyncCurrentSize"] = self.fullSyncCurrentSize!
        }
        if self.fullSyncProgress != nil {
            map["FullSyncProgress"] = self.fullSyncProgress!
        }
        if self.fullSyncStartTime != nil {
            map["FullSyncStartTime"] = self.fullSyncStartTime!
        }
        if self.fullSyncTotalSize != nil {
            map["FullSyncTotalSize"] = self.fullSyncTotalSize!
        }
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.incrementalSyncStartTime != nil {
            map["IncrementalSyncStartTime"] = self.incrementalSyncStartTime!
        }
        if self.ipAddress != nil {
            map["IpAddress"] = self.ipAddress!
        }
        if self.latestRecoveryPointTime != nil {
            map["LatestRecoveryPointTime"] = self.latestRecoveryPointTime!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.operations != nil {
            map["Operations"] = self.operations!
        }
        if self.originalInstanceId != nil {
            map["OriginalInstanceId"] = self.originalInstanceId!
        }
        if self.osDetail != nil {
            map["OsDetail"] = self.osDetail!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.primarySiteId != nil {
            map["PrimarySiteId"] = self.primarySiteId!
        }
        if self.recoveredInstanceId != nil {
            map["RecoveredInstanceId"] = self.recoveredInstanceId!
        }
        if self.recoveredIpAddress != nil {
            map["RecoveredIpAddress"] = self.recoveredIpAddress!
        }
        if self.recoveryCpu != nil {
            map["RecoveryCpu"] = self.recoveryCpu!
        }
        if self.recoveryEssdPerformanceLevel != nil {
            map["RecoveryEssdPerformanceLevel"] = self.recoveryEssdPerformanceLevel!
        }
        if self.recoveryInstanceName != nil {
            map["RecoveryInstanceName"] = self.recoveryInstanceName!
        }
        if self.recoveryInstanceType != nil {
            map["RecoveryInstanceType"] = self.recoveryInstanceType!
        }
        if self.recoveryIpAddress != nil {
            map["RecoveryIpAddress"] = self.recoveryIpAddress!
        }
        if self.recoveryMemory != nil {
            map["RecoveryMemory"] = self.recoveryMemory!
        }
        if self.recoveryNetwork != nil {
            map["RecoveryNetwork"] = self.recoveryNetwork!
        }
        if self.recoveryPostScriptContent != nil {
            map["RecoveryPostScriptContent"] = self.recoveryPostScriptContent!
        }
        if self.recoveryPostScriptType != nil {
            map["RecoveryPostScriptType"] = self.recoveryPostScriptType!
        }
        if self.recoveryReserveIp != nil {
            map["RecoveryReserveIp"] = self.recoveryReserveIp!
        }
        if self.recoveryUseDhcp != nil {
            map["RecoveryUseDhcp"] = self.recoveryUseDhcp!
        }
        if self.recoveryUseEssd != nil {
            map["RecoveryUseEssd"] = self.recoveryUseEssd!
        }
        if self.recoveryUseSsd != nil {
            map["RecoveryUseSsd"] = self.recoveryUseSsd!
        }
        if self.replicationInfrastructureId != nil {
            map["ReplicationInfrastructureId"] = self.replicationInfrastructureId!
        }
        if self.replicationInfrastructureType != nil {
            map["ReplicationInfrastructureType"] = self.replicationInfrastructureType!
        }
        if self.replicationNetwork != nil {
            map["ReplicationNetwork"] = self.replicationNetwork!
        }
        if self.replicationUseDhcp != nil {
            map["ReplicationUseDhcp"] = self.replicationUseDhcp!
        }
        if self.replicationUseEssd != nil {
            map["ReplicationUseEssd"] = self.replicationUseEssd!
        }
        if self.replicationUseOriginalInstance != nil {
            map["ReplicationUseOriginalInstance"] = self.replicationUseOriginalInstance!
        }
        if self.replicationUseSsd != nil {
            map["ReplicationUseSsd"] = self.replicationUseSsd!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rpo != nil {
            map["Rpo"] = self.rpo!
        }
        if self.secondarySiteId != nil {
            map["SecondarySiteId"] = self.secondarySiteId!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        if self.sourceGatewayVersion != nil {
            map["SourceGatewayVersion"] = self.sourceGatewayVersion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.targetGatewayVersion != nil {
            map["TargetGatewayVersion"] = self.targetGatewayVersion!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.testFailoverStatus != nil {
            map["TestFailoverStatus"] = self.testFailoverStatus!
        }
        if self.testRecoveredInstanceId != nil {
            map["TestRecoveredInstanceId"] = self.testRecoveredInstanceId!
        }
        if self.testRecoveredInstanceName != nil {
            map["TestRecoveredInstanceName"] = self.testRecoveredInstanceName!
        }
        if self.testRecoveredIpAddress != nil {
            map["TestRecoveredIpAddress"] = self.testRecoveredIpAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentPort") && dict["AgentPort"] != nil {
            self.agentPort = dict["AgentPort"] as! Int32
        }
        if dict.keys.contains("AgentVersion") && dict["AgentVersion"] != nil {
            self.agentVersion = dict["AgentVersion"] as! String
        }
        if dict.keys.contains("Alias") && dict["Alias"] != nil {
            self.alias = dict["Alias"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
            self.connectionStatus = dict["ConnectionStatus"] as! String
        }
        if dict.keys.contains("Consistent") && dict["Consistent"] != nil {
            self.consistent = dict["Consistent"] as! Bool
        }
        if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("CrashConsistentPointPolicy") && dict["CrashConsistentPointPolicy"] != nil {
            self.crashConsistentPointPolicy = dict["CrashConsistentPointPolicy"] as! String
        }
        if dict.keys.contains("Disks") && dict["Disks"] != nil {
            self.disks = dict["Disks"] as! String
        }
        if dict.keys.contains("Errno") && dict["Errno"] != nil {
            self.errno = dict["Errno"] as! String
        }
        if dict.keys.contains("FullSyncCurrentSize") && dict["FullSyncCurrentSize"] != nil {
            self.fullSyncCurrentSize = dict["FullSyncCurrentSize"] as! Int64
        }
        if dict.keys.contains("FullSyncProgress") && dict["FullSyncProgress"] != nil {
            self.fullSyncProgress = dict["FullSyncProgress"] as! Int32
        }
        if dict.keys.contains("FullSyncStartTime") && dict["FullSyncStartTime"] != nil {
            self.fullSyncStartTime = dict["FullSyncStartTime"] as! Int64
        }
        if dict.keys.contains("FullSyncTotalSize") && dict["FullSyncTotalSize"] != nil {
            self.fullSyncTotalSize = dict["FullSyncTotalSize"] as! Int64
        }
        if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("IncrementalSyncStartTime") && dict["IncrementalSyncStartTime"] != nil {
            self.incrementalSyncStartTime = dict["IncrementalSyncStartTime"] as! Int64
        }
        if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
            self.ipAddress = dict["IpAddress"] as! String
        }
        if dict.keys.contains("LatestRecoveryPointTime") && dict["LatestRecoveryPointTime"] != nil {
            self.latestRecoveryPointTime = dict["LatestRecoveryPointTime"] as! String
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
            self.memory = dict["Memory"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Operations") && dict["Operations"] != nil {
            self.operations = dict["Operations"] as! String
        }
        if dict.keys.contains("OriginalInstanceId") && dict["OriginalInstanceId"] != nil {
            self.originalInstanceId = dict["OriginalInstanceId"] as! String
        }
        if dict.keys.contains("OsDetail") && dict["OsDetail"] != nil {
            self.osDetail = dict["OsDetail"] as! String
        }
        if dict.keys.contains("OsType") && dict["OsType"] != nil {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("PrimarySiteId") && dict["PrimarySiteId"] != nil {
            self.primarySiteId = dict["PrimarySiteId"] as! String
        }
        if dict.keys.contains("RecoveredInstanceId") && dict["RecoveredInstanceId"] != nil {
            self.recoveredInstanceId = dict["RecoveredInstanceId"] as! String
        }
        if dict.keys.contains("RecoveredIpAddress") && dict["RecoveredIpAddress"] != nil {
            self.recoveredIpAddress = dict["RecoveredIpAddress"] as! String
        }
        if dict.keys.contains("RecoveryCpu") && dict["RecoveryCpu"] != nil {
            self.recoveryCpu = dict["RecoveryCpu"] as! Int32
        }
        if dict.keys.contains("RecoveryEssdPerformanceLevel") && dict["RecoveryEssdPerformanceLevel"] != nil {
            self.recoveryEssdPerformanceLevel = dict["RecoveryEssdPerformanceLevel"] as! String
        }
        if dict.keys.contains("RecoveryInstanceName") && dict["RecoveryInstanceName"] != nil {
            self.recoveryInstanceName = dict["RecoveryInstanceName"] as! String
        }
        if dict.keys.contains("RecoveryInstanceType") && dict["RecoveryInstanceType"] != nil {
            self.recoveryInstanceType = dict["RecoveryInstanceType"] as! String
        }
        if dict.keys.contains("RecoveryIpAddress") && dict["RecoveryIpAddress"] != nil {
            self.recoveryIpAddress = dict["RecoveryIpAddress"] as! String
        }
        if dict.keys.contains("RecoveryMemory") && dict["RecoveryMemory"] != nil {
            self.recoveryMemory = dict["RecoveryMemory"] as! Int64
        }
        if dict.keys.contains("RecoveryNetwork") && dict["RecoveryNetwork"] != nil {
            self.recoveryNetwork = dict["RecoveryNetwork"] as! String
        }
        if dict.keys.contains("RecoveryPostScriptContent") && dict["RecoveryPostScriptContent"] != nil {
            self.recoveryPostScriptContent = dict["RecoveryPostScriptContent"] as! String
        }
        if dict.keys.contains("RecoveryPostScriptType") && dict["RecoveryPostScriptType"] != nil {
            self.recoveryPostScriptType = dict["RecoveryPostScriptType"] as! String
        }
        if dict.keys.contains("RecoveryReserveIp") && dict["RecoveryReserveIp"] != nil {
            self.recoveryReserveIp = dict["RecoveryReserveIp"] as! Bool
        }
        if dict.keys.contains("RecoveryUseDhcp") && dict["RecoveryUseDhcp"] != nil {
            self.recoveryUseDhcp = dict["RecoveryUseDhcp"] as! Bool
        }
        if dict.keys.contains("RecoveryUseEssd") && dict["RecoveryUseEssd"] != nil {
            self.recoveryUseEssd = dict["RecoveryUseEssd"] as! Bool
        }
        if dict.keys.contains("RecoveryUseSsd") && dict["RecoveryUseSsd"] != nil {
            self.recoveryUseSsd = dict["RecoveryUseSsd"] as! Bool
        }
        if dict.keys.contains("ReplicationInfrastructureId") && dict["ReplicationInfrastructureId"] != nil {
            self.replicationInfrastructureId = dict["ReplicationInfrastructureId"] as! String
        }
        if dict.keys.contains("ReplicationInfrastructureType") && dict["ReplicationInfrastructureType"] != nil {
            self.replicationInfrastructureType = dict["ReplicationInfrastructureType"] as! String
        }
        if dict.keys.contains("ReplicationNetwork") && dict["ReplicationNetwork"] != nil {
            self.replicationNetwork = dict["ReplicationNetwork"] as! String
        }
        if dict.keys.contains("ReplicationUseDhcp") && dict["ReplicationUseDhcp"] != nil {
            self.replicationUseDhcp = dict["ReplicationUseDhcp"] as! Bool
        }
        if dict.keys.contains("ReplicationUseEssd") && dict["ReplicationUseEssd"] != nil {
            self.replicationUseEssd = dict["ReplicationUseEssd"] as! Bool
        }
        if dict.keys.contains("ReplicationUseOriginalInstance") && dict["ReplicationUseOriginalInstance"] != nil {
            self.replicationUseOriginalInstance = dict["ReplicationUseOriginalInstance"] as! Bool
        }
        if dict.keys.contains("ReplicationUseSsd") && dict["ReplicationUseSsd"] != nil {
            self.replicationUseSsd = dict["ReplicationUseSsd"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rpo") && dict["Rpo"] != nil {
            self.rpo = dict["Rpo"] as! Int32
        }
        if dict.keys.contains("SecondarySiteId") && dict["SecondarySiteId"] != nil {
            self.secondarySiteId = dict["SecondarySiteId"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
        if dict.keys.contains("SourceGatewayVersion") && dict["SourceGatewayVersion"] != nil {
            self.sourceGatewayVersion = dict["SourceGatewayVersion"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TargetGatewayVersion") && dict["TargetGatewayVersion"] != nil {
            self.targetGatewayVersion = dict["TargetGatewayVersion"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TestFailoverStatus") && dict["TestFailoverStatus"] != nil {
            self.testFailoverStatus = dict["TestFailoverStatus"] as! String
        }
        if dict.keys.contains("TestRecoveredInstanceId") && dict["TestRecoveredInstanceId"] != nil {
            self.testRecoveredInstanceId = dict["TestRecoveredInstanceId"] as! String
        }
        if dict.keys.contains("TestRecoveredInstanceName") && dict["TestRecoveredInstanceName"] != nil {
            self.testRecoveredInstanceName = dict["TestRecoveredInstanceName"] as! String
        }
        if dict.keys.contains("TestRecoveredIpAddress") && dict["TestRecoveredIpAddress"] != nil {
            self.testRecoveredIpAddress = dict["TestRecoveredIpAddress"] as! String
        }
    }
}

public class DescribeServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServerResponseBody?

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
            var model = DescribeServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeServersRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var serverIds: String?

    public var sitePairId: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverIds != nil {
            map["ServerIds"] = self.serverIds!
        }
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
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
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerIds") && dict["ServerIds"] != nil {
            self.serverIds = dict["ServerIds"] as! String
        }
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
    }
}

public class DescribeServersResponseBody : Tea.TeaModel {
    public class Servers : Tea.TeaModel {
        public class Server : Tea.TeaModel {
            public var agentPort: Int32?

            public var agentVersion: String?

            public var alias: String?

            public var connectionStatus: String?

            public var consistent: Bool?

            public var cpu: Int32?

            public var crashConsistentPointPolicy: String?

            public var disks: String?

            public var errno: String?

            public var fullSyncCurrentSize: Int64?

            public var fullSyncProgress: Int32?

            public var fullSyncStartTime: Int64?

            public var fullSyncTotalSize: Int64?

            public var hostname: String?

            public var incrementalSyncStartTime: Int64?

            public var instanceId: String?

            public var ipAddress: String?

            public var latestRecoveryPointTime: Int64?

            public var memory: Int64?

            public var operations: String?

            public var originalInstanceId: String?

            public var osDetail: String?

            public var osType: String?

            public var primarySiteId: String?

            public var recoveredInstanceId: String?

            public var recoveredInstanceName: String?

            public var recoveredIpAddress: String?

            public var recoveryCpu: Int32?

            public var recoveryEssdPerformanceLevel: String?

            public var recoveryInstanceName: String?

            public var recoveryInstanceType: String?

            public var recoveryIpAddress: String?

            public var recoveryMemory: Int64?

            public var recoveryNetwork: String?

            public var recoveryPostScriptContent: String?

            public var recoveryPostScriptType: String?

            public var recoveryReserveIp: Bool?

            public var recoveryUseDhcp: Bool?

            public var recoveryUseEssd: Bool?

            public var recoveryUseSsd: Bool?

            public var replicationInfrastructureId: String?

            public var replicationInfrastructureType: String?

            public var replicationNetwork: String?

            public var replicationUseDhcp: Bool?

            public var replicationUseEssd: Bool?

            public var replicationUseOriginalInstance: Bool?

            public var replicationUseSsd: Bool?

            public var rpo: Int32?

            public var secondarySiteId: String?

            public var serverId: String?

            public var sourceGatewayVersion: String?

            public var status: String?

            public var targetGatewayVersion: String?

            public var taskId: String?

            public var testFailoverStatus: String?

            public var testRecoveredInstanceId: String?

            public var testRecoveredInstanceName: String?

            public var testRecoveredIpAddress: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentPort != nil {
                    map["AgentPort"] = self.agentPort!
                }
                if self.agentVersion != nil {
                    map["AgentVersion"] = self.agentVersion!
                }
                if self.alias != nil {
                    map["Alias"] = self.alias!
                }
                if self.connectionStatus != nil {
                    map["ConnectionStatus"] = self.connectionStatus!
                }
                if self.consistent != nil {
                    map["Consistent"] = self.consistent!
                }
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.crashConsistentPointPolicy != nil {
                    map["CrashConsistentPointPolicy"] = self.crashConsistentPointPolicy!
                }
                if self.disks != nil {
                    map["Disks"] = self.disks!
                }
                if self.errno != nil {
                    map["Errno"] = self.errno!
                }
                if self.fullSyncCurrentSize != nil {
                    map["FullSyncCurrentSize"] = self.fullSyncCurrentSize!
                }
                if self.fullSyncProgress != nil {
                    map["FullSyncProgress"] = self.fullSyncProgress!
                }
                if self.fullSyncStartTime != nil {
                    map["FullSyncStartTime"] = self.fullSyncStartTime!
                }
                if self.fullSyncTotalSize != nil {
                    map["FullSyncTotalSize"] = self.fullSyncTotalSize!
                }
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.incrementalSyncStartTime != nil {
                    map["IncrementalSyncStartTime"] = self.incrementalSyncStartTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.latestRecoveryPointTime != nil {
                    map["LatestRecoveryPointTime"] = self.latestRecoveryPointTime!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.operations != nil {
                    map["Operations"] = self.operations!
                }
                if self.originalInstanceId != nil {
                    map["OriginalInstanceId"] = self.originalInstanceId!
                }
                if self.osDetail != nil {
                    map["OsDetail"] = self.osDetail!
                }
                if self.osType != nil {
                    map["OsType"] = self.osType!
                }
                if self.primarySiteId != nil {
                    map["PrimarySiteId"] = self.primarySiteId!
                }
                if self.recoveredInstanceId != nil {
                    map["RecoveredInstanceId"] = self.recoveredInstanceId!
                }
                if self.recoveredInstanceName != nil {
                    map["RecoveredInstanceName"] = self.recoveredInstanceName!
                }
                if self.recoveredIpAddress != nil {
                    map["RecoveredIpAddress"] = self.recoveredIpAddress!
                }
                if self.recoveryCpu != nil {
                    map["RecoveryCpu"] = self.recoveryCpu!
                }
                if self.recoveryEssdPerformanceLevel != nil {
                    map["RecoveryEssdPerformanceLevel"] = self.recoveryEssdPerformanceLevel!
                }
                if self.recoveryInstanceName != nil {
                    map["RecoveryInstanceName"] = self.recoveryInstanceName!
                }
                if self.recoveryInstanceType != nil {
                    map["RecoveryInstanceType"] = self.recoveryInstanceType!
                }
                if self.recoveryIpAddress != nil {
                    map["RecoveryIpAddress"] = self.recoveryIpAddress!
                }
                if self.recoveryMemory != nil {
                    map["RecoveryMemory"] = self.recoveryMemory!
                }
                if self.recoveryNetwork != nil {
                    map["RecoveryNetwork"] = self.recoveryNetwork!
                }
                if self.recoveryPostScriptContent != nil {
                    map["RecoveryPostScriptContent"] = self.recoveryPostScriptContent!
                }
                if self.recoveryPostScriptType != nil {
                    map["RecoveryPostScriptType"] = self.recoveryPostScriptType!
                }
                if self.recoveryReserveIp != nil {
                    map["RecoveryReserveIp"] = self.recoveryReserveIp!
                }
                if self.recoveryUseDhcp != nil {
                    map["RecoveryUseDhcp"] = self.recoveryUseDhcp!
                }
                if self.recoveryUseEssd != nil {
                    map["RecoveryUseEssd"] = self.recoveryUseEssd!
                }
                if self.recoveryUseSsd != nil {
                    map["RecoveryUseSsd"] = self.recoveryUseSsd!
                }
                if self.replicationInfrastructureId != nil {
                    map["ReplicationInfrastructureId"] = self.replicationInfrastructureId!
                }
                if self.replicationInfrastructureType != nil {
                    map["ReplicationInfrastructureType"] = self.replicationInfrastructureType!
                }
                if self.replicationNetwork != nil {
                    map["ReplicationNetwork"] = self.replicationNetwork!
                }
                if self.replicationUseDhcp != nil {
                    map["ReplicationUseDhcp"] = self.replicationUseDhcp!
                }
                if self.replicationUseEssd != nil {
                    map["ReplicationUseEssd"] = self.replicationUseEssd!
                }
                if self.replicationUseOriginalInstance != nil {
                    map["ReplicationUseOriginalInstance"] = self.replicationUseOriginalInstance!
                }
                if self.replicationUseSsd != nil {
                    map["ReplicationUseSsd"] = self.replicationUseSsd!
                }
                if self.rpo != nil {
                    map["Rpo"] = self.rpo!
                }
                if self.secondarySiteId != nil {
                    map["SecondarySiteId"] = self.secondarySiteId!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.sourceGatewayVersion != nil {
                    map["SourceGatewayVersion"] = self.sourceGatewayVersion!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.targetGatewayVersion != nil {
                    map["TargetGatewayVersion"] = self.targetGatewayVersion!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.testFailoverStatus != nil {
                    map["TestFailoverStatus"] = self.testFailoverStatus!
                }
                if self.testRecoveredInstanceId != nil {
                    map["TestRecoveredInstanceId"] = self.testRecoveredInstanceId!
                }
                if self.testRecoveredInstanceName != nil {
                    map["TestRecoveredInstanceName"] = self.testRecoveredInstanceName!
                }
                if self.testRecoveredIpAddress != nil {
                    map["TestRecoveredIpAddress"] = self.testRecoveredIpAddress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentPort") && dict["AgentPort"] != nil {
                    self.agentPort = dict["AgentPort"] as! Int32
                }
                if dict.keys.contains("AgentVersion") && dict["AgentVersion"] != nil {
                    self.agentVersion = dict["AgentVersion"] as! String
                }
                if dict.keys.contains("Alias") && dict["Alias"] != nil {
                    self.alias = dict["Alias"] as! String
                }
                if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
                    self.connectionStatus = dict["ConnectionStatus"] as! String
                }
                if dict.keys.contains("Consistent") && dict["Consistent"] != nil {
                    self.consistent = dict["Consistent"] as! Bool
                }
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    self.cpu = dict["Cpu"] as! Int32
                }
                if dict.keys.contains("CrashConsistentPointPolicy") && dict["CrashConsistentPointPolicy"] != nil {
                    self.crashConsistentPointPolicy = dict["CrashConsistentPointPolicy"] as! String
                }
                if dict.keys.contains("Disks") && dict["Disks"] != nil {
                    self.disks = dict["Disks"] as! String
                }
                if dict.keys.contains("Errno") && dict["Errno"] != nil {
                    self.errno = dict["Errno"] as! String
                }
                if dict.keys.contains("FullSyncCurrentSize") && dict["FullSyncCurrentSize"] != nil {
                    self.fullSyncCurrentSize = dict["FullSyncCurrentSize"] as! Int64
                }
                if dict.keys.contains("FullSyncProgress") && dict["FullSyncProgress"] != nil {
                    self.fullSyncProgress = dict["FullSyncProgress"] as! Int32
                }
                if dict.keys.contains("FullSyncStartTime") && dict["FullSyncStartTime"] != nil {
                    self.fullSyncStartTime = dict["FullSyncStartTime"] as! Int64
                }
                if dict.keys.contains("FullSyncTotalSize") && dict["FullSyncTotalSize"] != nil {
                    self.fullSyncTotalSize = dict["FullSyncTotalSize"] as! Int64
                }
                if dict.keys.contains("Hostname") && dict["Hostname"] != nil {
                    self.hostname = dict["Hostname"] as! String
                }
                if dict.keys.contains("IncrementalSyncStartTime") && dict["IncrementalSyncStartTime"] != nil {
                    self.incrementalSyncStartTime = dict["IncrementalSyncStartTime"] as! Int64
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
                    self.ipAddress = dict["IpAddress"] as! String
                }
                if dict.keys.contains("LatestRecoveryPointTime") && dict["LatestRecoveryPointTime"] != nil {
                    self.latestRecoveryPointTime = dict["LatestRecoveryPointTime"] as! Int64
                }
                if dict.keys.contains("Memory") && dict["Memory"] != nil {
                    self.memory = dict["Memory"] as! Int64
                }
                if dict.keys.contains("Operations") && dict["Operations"] != nil {
                    self.operations = dict["Operations"] as! String
                }
                if dict.keys.contains("OriginalInstanceId") && dict["OriginalInstanceId"] != nil {
                    self.originalInstanceId = dict["OriginalInstanceId"] as! String
                }
                if dict.keys.contains("OsDetail") && dict["OsDetail"] != nil {
                    self.osDetail = dict["OsDetail"] as! String
                }
                if dict.keys.contains("OsType") && dict["OsType"] != nil {
                    self.osType = dict["OsType"] as! String
                }
                if dict.keys.contains("PrimarySiteId") && dict["PrimarySiteId"] != nil {
                    self.primarySiteId = dict["PrimarySiteId"] as! String
                }
                if dict.keys.contains("RecoveredInstanceId") && dict["RecoveredInstanceId"] != nil {
                    self.recoveredInstanceId = dict["RecoveredInstanceId"] as! String
                }
                if dict.keys.contains("RecoveredInstanceName") && dict["RecoveredInstanceName"] != nil {
                    self.recoveredInstanceName = dict["RecoveredInstanceName"] as! String
                }
                if dict.keys.contains("RecoveredIpAddress") && dict["RecoveredIpAddress"] != nil {
                    self.recoveredIpAddress = dict["RecoveredIpAddress"] as! String
                }
                if dict.keys.contains("RecoveryCpu") && dict["RecoveryCpu"] != nil {
                    self.recoveryCpu = dict["RecoveryCpu"] as! Int32
                }
                if dict.keys.contains("RecoveryEssdPerformanceLevel") && dict["RecoveryEssdPerformanceLevel"] != nil {
                    self.recoveryEssdPerformanceLevel = dict["RecoveryEssdPerformanceLevel"] as! String
                }
                if dict.keys.contains("RecoveryInstanceName") && dict["RecoveryInstanceName"] != nil {
                    self.recoveryInstanceName = dict["RecoveryInstanceName"] as! String
                }
                if dict.keys.contains("RecoveryInstanceType") && dict["RecoveryInstanceType"] != nil {
                    self.recoveryInstanceType = dict["RecoveryInstanceType"] as! String
                }
                if dict.keys.contains("RecoveryIpAddress") && dict["RecoveryIpAddress"] != nil {
                    self.recoveryIpAddress = dict["RecoveryIpAddress"] as! String
                }
                if dict.keys.contains("RecoveryMemory") && dict["RecoveryMemory"] != nil {
                    self.recoveryMemory = dict["RecoveryMemory"] as! Int64
                }
                if dict.keys.contains("RecoveryNetwork") && dict["RecoveryNetwork"] != nil {
                    self.recoveryNetwork = dict["RecoveryNetwork"] as! String
                }
                if dict.keys.contains("RecoveryPostScriptContent") && dict["RecoveryPostScriptContent"] != nil {
                    self.recoveryPostScriptContent = dict["RecoveryPostScriptContent"] as! String
                }
                if dict.keys.contains("RecoveryPostScriptType") && dict["RecoveryPostScriptType"] != nil {
                    self.recoveryPostScriptType = dict["RecoveryPostScriptType"] as! String
                }
                if dict.keys.contains("RecoveryReserveIp") && dict["RecoveryReserveIp"] != nil {
                    self.recoveryReserveIp = dict["RecoveryReserveIp"] as! Bool
                }
                if dict.keys.contains("RecoveryUseDhcp") && dict["RecoveryUseDhcp"] != nil {
                    self.recoveryUseDhcp = dict["RecoveryUseDhcp"] as! Bool
                }
                if dict.keys.contains("RecoveryUseEssd") && dict["RecoveryUseEssd"] != nil {
                    self.recoveryUseEssd = dict["RecoveryUseEssd"] as! Bool
                }
                if dict.keys.contains("RecoveryUseSsd") && dict["RecoveryUseSsd"] != nil {
                    self.recoveryUseSsd = dict["RecoveryUseSsd"] as! Bool
                }
                if dict.keys.contains("ReplicationInfrastructureId") && dict["ReplicationInfrastructureId"] != nil {
                    self.replicationInfrastructureId = dict["ReplicationInfrastructureId"] as! String
                }
                if dict.keys.contains("ReplicationInfrastructureType") && dict["ReplicationInfrastructureType"] != nil {
                    self.replicationInfrastructureType = dict["ReplicationInfrastructureType"] as! String
                }
                if dict.keys.contains("ReplicationNetwork") && dict["ReplicationNetwork"] != nil {
                    self.replicationNetwork = dict["ReplicationNetwork"] as! String
                }
                if dict.keys.contains("ReplicationUseDhcp") && dict["ReplicationUseDhcp"] != nil {
                    self.replicationUseDhcp = dict["ReplicationUseDhcp"] as! Bool
                }
                if dict.keys.contains("ReplicationUseEssd") && dict["ReplicationUseEssd"] != nil {
                    self.replicationUseEssd = dict["ReplicationUseEssd"] as! Bool
                }
                if dict.keys.contains("ReplicationUseOriginalInstance") && dict["ReplicationUseOriginalInstance"] != nil {
                    self.replicationUseOriginalInstance = dict["ReplicationUseOriginalInstance"] as! Bool
                }
                if dict.keys.contains("ReplicationUseSsd") && dict["ReplicationUseSsd"] != nil {
                    self.replicationUseSsd = dict["ReplicationUseSsd"] as! Bool
                }
                if dict.keys.contains("Rpo") && dict["Rpo"] != nil {
                    self.rpo = dict["Rpo"] as! Int32
                }
                if dict.keys.contains("SecondarySiteId") && dict["SecondarySiteId"] != nil {
                    self.secondarySiteId = dict["SecondarySiteId"] as! String
                }
                if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("SourceGatewayVersion") && dict["SourceGatewayVersion"] != nil {
                    self.sourceGatewayVersion = dict["SourceGatewayVersion"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TargetGatewayVersion") && dict["TargetGatewayVersion"] != nil {
                    self.targetGatewayVersion = dict["TargetGatewayVersion"] as! String
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TestFailoverStatus") && dict["TestFailoverStatus"] != nil {
                    self.testFailoverStatus = dict["TestFailoverStatus"] as! String
                }
                if dict.keys.contains("TestRecoveredInstanceId") && dict["TestRecoveredInstanceId"] != nil {
                    self.testRecoveredInstanceId = dict["TestRecoveredInstanceId"] as! String
                }
                if dict.keys.contains("TestRecoveredInstanceName") && dict["TestRecoveredInstanceName"] != nil {
                    self.testRecoveredInstanceName = dict["TestRecoveredInstanceName"] as! String
                }
                if dict.keys.contains("TestRecoveredIpAddress") && dict["TestRecoveredIpAddress"] != nil {
                    self.testRecoveredIpAddress = dict["TestRecoveredIpAddress"] as! String
                }
            }
        }
        public var server: [DescribeServersResponseBody.Servers.Server]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.server != nil {
                var tmp : [Any] = []
                for k in self.server! {
                    tmp.append(k.toMap())
                }
                map["server"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("server") && dict["server"] != nil {
                var tmp : [DescribeServersResponseBody.Servers.Server] = []
                for v in dict["server"] as! [Any] {
                    var model = DescribeServersResponseBody.Servers.Server()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.server = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var servers: DescribeServersResponseBody.Servers?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.servers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.servers != nil {
            map["Servers"] = self.servers?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Servers") && dict["Servers"] != nil {
            var model = DescribeServersResponseBody.Servers()
            model.fromMap(dict["Servers"] as! [String: Any])
            self.servers = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServersResponseBody?

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
            var model = DescribeServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSiteRequest : Tea.TeaModel {
    public var siteId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SiteId") && dict["SiteId"] != nil {
            self.siteId = dict["SiteId"] as! String
        }
    }
}

public class DescribeSiteResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var name: String?

    public var regionId: String?

    public var requestId: String?

    public var siteId: String?

    public var success: Bool?

    public var type: String?

    public var userSecurityGroupId: String?

    public var vpcId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.siteId != nil {
            map["SiteId"] = self.siteId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userSecurityGroupId != nil {
            map["UserSecurityGroupId"] = self.userSecurityGroupId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
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
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SiteId") && dict["SiteId"] != nil {
            self.siteId = dict["SiteId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UserSecurityGroupId") && dict["UserSecurityGroupId"] != nil {
            self.userSecurityGroupId = dict["UserSecurityGroupId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeSiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSiteResponseBody?

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
            var model = DescribeSiteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSitePairRequest : Tea.TeaModel {
    public var securityToken: String?

    public var sitePairId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
    }
}

public class DescribeSitePairResponseBody : Tea.TeaModel {
    public var code: String?

    public var createdTime: Int64?

    public var message: String?

    public var primarySiteId: String?

    public var primarySiteName: String?

    public var requestId: String?

    public var secondarySiteId: String?

    public var secondarySiteName: String?

    public var sitePairId: String?

    public var sitePairType: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.primarySiteId != nil {
            map["PrimarySiteId"] = self.primarySiteId!
        }
        if self.primarySiteName != nil {
            map["PrimarySiteName"] = self.primarySiteName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secondarySiteId != nil {
            map["SecondarySiteId"] = self.secondarySiteId!
        }
        if self.secondarySiteName != nil {
            map["SecondarySiteName"] = self.secondarySiteName!
        }
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
        }
        if self.sitePairType != nil {
            map["SitePairType"] = self.sitePairType!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PrimarySiteId") && dict["PrimarySiteId"] != nil {
            self.primarySiteId = dict["PrimarySiteId"] as! String
        }
        if dict.keys.contains("PrimarySiteName") && dict["PrimarySiteName"] != nil {
            self.primarySiteName = dict["PrimarySiteName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecondarySiteId") && dict["SecondarySiteId"] != nil {
            self.secondarySiteId = dict["SecondarySiteId"] as! String
        }
        if dict.keys.contains("SecondarySiteName") && dict["SecondarySiteName"] != nil {
            self.secondarySiteName = dict["SecondarySiteName"] as! String
        }
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
        if dict.keys.contains("SitePairType") && dict["SitePairType"] != nil {
            self.sitePairType = dict["SitePairType"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            self.version = dict["Version"] as! String
        }
    }
}

public class DescribeSitePairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSitePairResponseBody?

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
            var model = DescribeSitePairResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSitePairStatisticsRequest : Tea.TeaModel {
    public var securityToken: String?

    public var sitePairId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
    }
}

public class DescribeSitePairStatisticsResponseBody : Tea.TeaModel {
    public class PrimarySiteGatewayInfo : Tea.TeaModel {
        public var gatewayId: String?

        public var heartbeatedTime: Int64?

        public var status: String?

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
            if self.gatewayId != nil {
                map["GatewayId"] = self.gatewayId!
            }
            if self.heartbeatedTime != nil {
                map["HeartbeatedTime"] = self.heartbeatedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
                self.gatewayId = dict["GatewayId"] as! String
            }
            if dict.keys.contains("HeartbeatedTime") && dict["HeartbeatedTime"] != nil {
                self.heartbeatedTime = dict["HeartbeatedTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class PrimarySiteServers : Tea.TeaModel {
        public class Server : Tea.TeaModel {
            public var agentVersion: String?

            public var connectionStatus: String?

            public var ipAddress: String?

            public var serverId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentVersion != nil {
                    map["AgentVersion"] = self.agentVersion!
                }
                if self.connectionStatus != nil {
                    map["ConnectionStatus"] = self.connectionStatus!
                }
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentVersion") && dict["AgentVersion"] != nil {
                    self.agentVersion = dict["AgentVersion"] as! String
                }
                if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
                    self.connectionStatus = dict["ConnectionStatus"] as! String
                }
                if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
                    self.ipAddress = dict["IpAddress"] as! String
                }
                if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                    self.serverId = dict["ServerId"] as! String
                }
            }
        }
        public var server: [DescribeSitePairStatisticsResponseBody.PrimarySiteServers.Server]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.server != nil {
                var tmp : [Any] = []
                for k in self.server! {
                    tmp.append(k.toMap())
                }
                map["server"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("server") && dict["server"] != nil {
                var tmp : [DescribeSitePairStatisticsResponseBody.PrimarySiteServers.Server] = []
                for v in dict["server"] as! [Any] {
                    var model = DescribeSitePairStatisticsResponseBody.PrimarySiteServers.Server()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.server = tmp
            }
        }
    }
    public class SecondarySiteGatewayInfo : Tea.TeaModel {
        public var gatewayId: String?

        public var heartbeatedTime: Int64?

        public var status: String?

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
            if self.gatewayId != nil {
                map["GatewayId"] = self.gatewayId!
            }
            if self.heartbeatedTime != nil {
                map["HeartbeatedTime"] = self.heartbeatedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GatewayId") && dict["GatewayId"] != nil {
                self.gatewayId = dict["GatewayId"] as! String
            }
            if dict.keys.contains("HeartbeatedTime") && dict["HeartbeatedTime"] != nil {
                self.heartbeatedTime = dict["HeartbeatedTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class SecondarySiteServers : Tea.TeaModel {
        public class Server : Tea.TeaModel {
            public var agentVersion: String?

            public var connectionStatus: String?

            public var ipAddress: String?

            public var serverId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentVersion != nil {
                    map["AgentVersion"] = self.agentVersion!
                }
                if self.connectionStatus != nil {
                    map["ConnectionStatus"] = self.connectionStatus!
                }
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentVersion") && dict["AgentVersion"] != nil {
                    self.agentVersion = dict["AgentVersion"] as! String
                }
                if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
                    self.connectionStatus = dict["ConnectionStatus"] as! String
                }
                if dict.keys.contains("IpAddress") && dict["IpAddress"] != nil {
                    self.ipAddress = dict["IpAddress"] as! String
                }
                if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                    self.serverId = dict["ServerId"] as! String
                }
            }
        }
        public var server: [DescribeSitePairStatisticsResponseBody.SecondarySiteServers.Server]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.server != nil {
                var tmp : [Any] = []
                for k in self.server! {
                    tmp.append(k.toMap())
                }
                map["server"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("server") && dict["server"] != nil {
                var tmp : [DescribeSitePairStatisticsResponseBody.SecondarySiteServers.Server] = []
                for v in dict["server"] as! [Any] {
                    var model = DescribeSitePairStatisticsResponseBody.SecondarySiteServers.Server()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.server = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var primarySiteGatewayInfo: DescribeSitePairStatisticsResponseBody.PrimarySiteGatewayInfo?

    public var primarySiteServers: DescribeSitePairStatisticsResponseBody.PrimarySiteServers?

    public var requestId: String?

    public var secondarySiteGatewayInfo: DescribeSitePairStatisticsResponseBody.SecondarySiteGatewayInfo?

    public var secondarySiteServers: DescribeSitePairStatisticsResponseBody.SecondarySiteServers?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.primarySiteGatewayInfo?.validate()
        try self.primarySiteServers?.validate()
        try self.secondarySiteGatewayInfo?.validate()
        try self.secondarySiteServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.primarySiteGatewayInfo != nil {
            map["PrimarySiteGatewayInfo"] = self.primarySiteGatewayInfo?.toMap()
        }
        if self.primarySiteServers != nil {
            map["PrimarySiteServers"] = self.primarySiteServers?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secondarySiteGatewayInfo != nil {
            map["SecondarySiteGatewayInfo"] = self.secondarySiteGatewayInfo?.toMap()
        }
        if self.secondarySiteServers != nil {
            map["SecondarySiteServers"] = self.secondarySiteServers?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
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
        if dict.keys.contains("PrimarySiteGatewayInfo") && dict["PrimarySiteGatewayInfo"] != nil {
            var model = DescribeSitePairStatisticsResponseBody.PrimarySiteGatewayInfo()
            model.fromMap(dict["PrimarySiteGatewayInfo"] as! [String: Any])
            self.primarySiteGatewayInfo = model
        }
        if dict.keys.contains("PrimarySiteServers") && dict["PrimarySiteServers"] != nil {
            var model = DescribeSitePairStatisticsResponseBody.PrimarySiteServers()
            model.fromMap(dict["PrimarySiteServers"] as! [String: Any])
            self.primarySiteServers = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecondarySiteGatewayInfo") && dict["SecondarySiteGatewayInfo"] != nil {
            var model = DescribeSitePairStatisticsResponseBody.SecondarySiteGatewayInfo()
            model.fromMap(dict["SecondarySiteGatewayInfo"] as! [String: Any])
            self.secondarySiteGatewayInfo = model
        }
        if dict.keys.contains("SecondarySiteServers") && dict["SecondarySiteServers"] != nil {
            var model = DescribeSitePairStatisticsResponseBody.SecondarySiteServers()
            model.fromMap(dict["SecondarySiteServers"] as! [String: Any])
            self.secondarySiteServers = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeSitePairStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSitePairStatisticsResponseBody?

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
            var model = DescribeSitePairStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSitePairsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sitePairType: String?

    public override init() {
        super.init()
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
        if self.sitePairType != nil {
            map["SitePairType"] = self.sitePairType!
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
        if dict.keys.contains("SitePairType") && dict["SitePairType"] != nil {
            self.sitePairType = dict["SitePairType"] as! String
        }
    }
}

public class DescribeSitePairsResponseBody : Tea.TeaModel {
    public class SitePairs : Tea.TeaModel {
        public class SitePair : Tea.TeaModel {
            public class ReplicationStatistics : Tea.TeaModel {
                public var critical: Int64?

                public var healthy: Int64?

                public var notApplicable: Int64?

                public var warning: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.critical != nil {
                        map["Critical"] = self.critical!
                    }
                    if self.healthy != nil {
                        map["Healthy"] = self.healthy!
                    }
                    if self.notApplicable != nil {
                        map["NotApplicable"] = self.notApplicable!
                    }
                    if self.warning != nil {
                        map["Warning"] = self.warning!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Critical") && dict["Critical"] != nil {
                        self.critical = dict["Critical"] as! Int64
                    }
                    if dict.keys.contains("Healthy") && dict["Healthy"] != nil {
                        self.healthy = dict["Healthy"] as! Int64
                    }
                    if dict.keys.contains("NotApplicable") && dict["NotApplicable"] != nil {
                        self.notApplicable = dict["NotApplicable"] as! Int64
                    }
                    if dict.keys.contains("Warning") && dict["Warning"] != nil {
                        self.warning = dict["Warning"] as! Int64
                    }
                }
            }
            public var cloudSiteName: String?

            public var createdTime: Int64?

            public var localSiteName: String?

            public var primarySiteId: String?

            public var primarySiteName: String?

            public var replicationStatistics: DescribeSitePairsResponseBody.SitePairs.SitePair.ReplicationStatistics?

            public var secondarySiteId: String?

            public var secondarySiteName: String?

            public var serverCount: Int32?

            public var sitePairId: String?

            public var sitePairType: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.replicationStatistics?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cloudSiteName != nil {
                    map["CloudSiteName"] = self.cloudSiteName!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.localSiteName != nil {
                    map["LocalSiteName"] = self.localSiteName!
                }
                if self.primarySiteId != nil {
                    map["PrimarySiteId"] = self.primarySiteId!
                }
                if self.primarySiteName != nil {
                    map["PrimarySiteName"] = self.primarySiteName!
                }
                if self.replicationStatistics != nil {
                    map["ReplicationStatistics"] = self.replicationStatistics?.toMap()
                }
                if self.secondarySiteId != nil {
                    map["SecondarySiteId"] = self.secondarySiteId!
                }
                if self.secondarySiteName != nil {
                    map["SecondarySiteName"] = self.secondarySiteName!
                }
                if self.serverCount != nil {
                    map["ServerCount"] = self.serverCount!
                }
                if self.sitePairId != nil {
                    map["SitePairId"] = self.sitePairId!
                }
                if self.sitePairType != nil {
                    map["SitePairType"] = self.sitePairType!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CloudSiteName") && dict["CloudSiteName"] != nil {
                    self.cloudSiteName = dict["CloudSiteName"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("LocalSiteName") && dict["LocalSiteName"] != nil {
                    self.localSiteName = dict["LocalSiteName"] as! String
                }
                if dict.keys.contains("PrimarySiteId") && dict["PrimarySiteId"] != nil {
                    self.primarySiteId = dict["PrimarySiteId"] as! String
                }
                if dict.keys.contains("PrimarySiteName") && dict["PrimarySiteName"] != nil {
                    self.primarySiteName = dict["PrimarySiteName"] as! String
                }
                if dict.keys.contains("ReplicationStatistics") && dict["ReplicationStatistics"] != nil {
                    var model = DescribeSitePairsResponseBody.SitePairs.SitePair.ReplicationStatistics()
                    model.fromMap(dict["ReplicationStatistics"] as! [String: Any])
                    self.replicationStatistics = model
                }
                if dict.keys.contains("SecondarySiteId") && dict["SecondarySiteId"] != nil {
                    self.secondarySiteId = dict["SecondarySiteId"] as! String
                }
                if dict.keys.contains("SecondarySiteName") && dict["SecondarySiteName"] != nil {
                    self.secondarySiteName = dict["SecondarySiteName"] as! String
                }
                if dict.keys.contains("ServerCount") && dict["ServerCount"] != nil {
                    self.serverCount = dict["ServerCount"] as! Int32
                }
                if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
                    self.sitePairId = dict["SitePairId"] as! String
                }
                if dict.keys.contains("SitePairType") && dict["SitePairType"] != nil {
                    self.sitePairType = dict["SitePairType"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var sitePair: [DescribeSitePairsResponseBody.SitePairs.SitePair]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sitePair != nil {
                var tmp : [Any] = []
                for k in self.sitePair! {
                    tmp.append(k.toMap())
                }
                map["sitePair"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("sitePair") && dict["sitePair"] != nil {
                var tmp : [DescribeSitePairsResponseBody.SitePairs.SitePair] = []
                for v in dict["sitePair"] as! [Any] {
                    var model = DescribeSitePairsResponseBody.SitePairs.SitePair()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sitePair = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var sitePairs: DescribeSitePairsResponseBody.SitePairs?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sitePairs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.sitePairs != nil {
            map["SitePairs"] = self.sitePairs?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SitePairs") && dict["SitePairs"] != nil {
            var model = DescribeSitePairsResponseBody.SitePairs()
            model.fromMap(dict["SitePairs"] as! [String: Any])
            self.sitePairs = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSitePairsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSitePairsResponseBody?

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
            var model = DescribeSitePairsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSummaryRequest : Tea.TeaModel {
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeSummaryResponseBody : Tea.TeaModel {
    public class ReplicationDetails : Tea.TeaModel {
        public class CriticalServers : Tea.TeaModel {
            public class CriticalServer : Tea.TeaModel {
                public var connectionStatus: String?

                public var instanceId: String?

                public var rpo: Int64?

                public var serverId: String?

                public var sitePairId: String?

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
                    if self.connectionStatus != nil {
                        map["ConnectionStatus"] = self.connectionStatus!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.rpo != nil {
                        map["Rpo"] = self.rpo!
                    }
                    if self.serverId != nil {
                        map["ServerId"] = self.serverId!
                    }
                    if self.sitePairId != nil {
                        map["SitePairId"] = self.sitePairId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
                        self.connectionStatus = dict["ConnectionStatus"] as! String
                    }
                    if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("Rpo") && dict["Rpo"] != nil {
                        self.rpo = dict["Rpo"] as! Int64
                    }
                    if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                        self.serverId = dict["ServerId"] as! String
                    }
                    if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
                        self.sitePairId = dict["SitePairId"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                }
            }
            public var criticalServer: [DescribeSummaryResponseBody.ReplicationDetails.CriticalServers.CriticalServer]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.criticalServer != nil {
                    var tmp : [Any] = []
                    for k in self.criticalServer! {
                        tmp.append(k.toMap())
                    }
                    map["criticalServer"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("criticalServer") && dict["criticalServer"] != nil {
                    var tmp : [DescribeSummaryResponseBody.ReplicationDetails.CriticalServers.CriticalServer] = []
                    for v in dict["criticalServer"] as! [Any] {
                        var model = DescribeSummaryResponseBody.ReplicationDetails.CriticalServers.CriticalServer()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.criticalServer = tmp
                }
            }
        }
        public class NotApplicableServers : Tea.TeaModel {
            public class NotApplicableServer : Tea.TeaModel {
                public var connectionStatus: String?

                public var instanceId: String?

                public var rpo: Int64?

                public var serverId: String?

                public var sitePairId: String?

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
                    if self.connectionStatus != nil {
                        map["ConnectionStatus"] = self.connectionStatus!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.rpo != nil {
                        map["Rpo"] = self.rpo!
                    }
                    if self.serverId != nil {
                        map["ServerId"] = self.serverId!
                    }
                    if self.sitePairId != nil {
                        map["SitePairId"] = self.sitePairId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
                        self.connectionStatus = dict["ConnectionStatus"] as! String
                    }
                    if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("Rpo") && dict["Rpo"] != nil {
                        self.rpo = dict["Rpo"] as! Int64
                    }
                    if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                        self.serverId = dict["ServerId"] as! String
                    }
                    if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
                        self.sitePairId = dict["SitePairId"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                }
            }
            public var notApplicableServer: [DescribeSummaryResponseBody.ReplicationDetails.NotApplicableServers.NotApplicableServer]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.notApplicableServer != nil {
                    var tmp : [Any] = []
                    for k in self.notApplicableServer! {
                        tmp.append(k.toMap())
                    }
                    map["notApplicableServer"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("notApplicableServer") && dict["notApplicableServer"] != nil {
                    var tmp : [DescribeSummaryResponseBody.ReplicationDetails.NotApplicableServers.NotApplicableServer] = []
                    for v in dict["notApplicableServer"] as! [Any] {
                        var model = DescribeSummaryResponseBody.ReplicationDetails.NotApplicableServers.NotApplicableServer()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.notApplicableServer = tmp
                }
            }
        }
        public class WarningServers : Tea.TeaModel {
            public class WarningServer : Tea.TeaModel {
                public var connectionStatus: String?

                public var instanceId: String?

                public var rpo: Int64?

                public var serverId: String?

                public var sitePairId: String?

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
                    if self.connectionStatus != nil {
                        map["ConnectionStatus"] = self.connectionStatus!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.rpo != nil {
                        map["Rpo"] = self.rpo!
                    }
                    if self.serverId != nil {
                        map["ServerId"] = self.serverId!
                    }
                    if self.sitePairId != nil {
                        map["SitePairId"] = self.sitePairId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnectionStatus") && dict["ConnectionStatus"] != nil {
                        self.connectionStatus = dict["ConnectionStatus"] as! String
                    }
                    if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                        self.instanceId = dict["InstanceId"] as! String
                    }
                    if dict.keys.contains("Rpo") && dict["Rpo"] != nil {
                        self.rpo = dict["Rpo"] as! Int64
                    }
                    if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
                        self.serverId = dict["ServerId"] as! String
                    }
                    if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
                        self.sitePairId = dict["SitePairId"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                }
            }
            public var warningServer: [DescribeSummaryResponseBody.ReplicationDetails.WarningServers.WarningServer]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.warningServer != nil {
                    var tmp : [Any] = []
                    for k in self.warningServer! {
                        tmp.append(k.toMap())
                    }
                    map["warningServer"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("warningServer") && dict["warningServer"] != nil {
                    var tmp : [DescribeSummaryResponseBody.ReplicationDetails.WarningServers.WarningServer] = []
                    for v in dict["warningServer"] as! [Any] {
                        var model = DescribeSummaryResponseBody.ReplicationDetails.WarningServers.WarningServer()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.warningServer = tmp
                }
            }
        }
        public var criticalServers: DescribeSummaryResponseBody.ReplicationDetails.CriticalServers?

        public var notApplicableServers: DescribeSummaryResponseBody.ReplicationDetails.NotApplicableServers?

        public var warningServers: DescribeSummaryResponseBody.ReplicationDetails.WarningServers?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.criticalServers?.validate()
            try self.notApplicableServers?.validate()
            try self.warningServers?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.criticalServers != nil {
                map["CriticalServers"] = self.criticalServers?.toMap()
            }
            if self.notApplicableServers != nil {
                map["NotApplicableServers"] = self.notApplicableServers?.toMap()
            }
            if self.warningServers != nil {
                map["WarningServers"] = self.warningServers?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CriticalServers") && dict["CriticalServers"] != nil {
                var model = DescribeSummaryResponseBody.ReplicationDetails.CriticalServers()
                model.fromMap(dict["CriticalServers"] as! [String: Any])
                self.criticalServers = model
            }
            if dict.keys.contains("NotApplicableServers") && dict["NotApplicableServers"] != nil {
                var model = DescribeSummaryResponseBody.ReplicationDetails.NotApplicableServers()
                model.fromMap(dict["NotApplicableServers"] as! [String: Any])
                self.notApplicableServers = model
            }
            if dict.keys.contains("WarningServers") && dict["WarningServers"] != nil {
                var model = DescribeSummaryResponseBody.ReplicationDetails.WarningServers()
                model.fromMap(dict["WarningServers"] as! [String: Any])
                self.warningServers = model
            }
        }
    }
    public var code: String?

    public var dbServerCount: Int64?

    public var message: String?

    public var replicationDetails: DescribeSummaryResponseBody.ReplicationDetails?

    public var requestId: String?

    public var serverCount: Int64?

    public var siteCount: Int64?

    public var success: Bool?

    public var totalSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.replicationDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dbServerCount != nil {
            map["DbServerCount"] = self.dbServerCount!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.replicationDetails != nil {
            map["ReplicationDetails"] = self.replicationDetails?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverCount != nil {
            map["ServerCount"] = self.serverCount!
        }
        if self.siteCount != nil {
            map["SiteCount"] = self.siteCount!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalSize != nil {
            map["TotalSize"] = self.totalSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DbServerCount") && dict["DbServerCount"] != nil {
            self.dbServerCount = dict["DbServerCount"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ReplicationDetails") && dict["ReplicationDetails"] != nil {
            var model = DescribeSummaryResponseBody.ReplicationDetails()
            model.fromMap(dict["ReplicationDetails"] as! [String: Any])
            self.replicationDetails = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerCount") && dict["ServerCount"] != nil {
            self.serverCount = dict["ServerCount"] as! Int64
        }
        if dict.keys.contains("SiteCount") && dict["SiteCount"] != nil {
            self.siteCount = dict["SiteCount"] as! Int64
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalSize") && dict["TotalSize"] != nil {
            self.totalSize = dict["TotalSize"] as! Int64
        }
    }
}

public class DescribeSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSummaryResponseBody?

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
            var model = DescribeSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTaskRequest : Tea.TeaModel {
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

public class DescribeTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var content: String?

    public var createdTime: Int64?

    public var message: String?

    public var name: String?

    public var progress: Int32?

    public var requestId: String?

    public var statusCode: String?

    public var success: Bool?

    public var taskId: String?

    public var updatedTime: Int64?

    public override init() {
        super.init()
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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statusCode != nil {
            map["StatusCode"] = self.statusCode!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.updatedTime != nil {
            map["UpdatedTime"] = self.updatedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Progress") && dict["Progress"] != nil {
            self.progress = dict["Progress"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StatusCode") && dict["StatusCode"] != nil {
            self.statusCode = dict["StatusCode"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
            self.updatedTime = dict["UpdatedTime"] as! Int64
        }
    }
}

public class DescribeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTaskResponseBody?

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
            var model = DescribeTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTasksRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var securityToken: String?

    public var sitePairId: String?

    public var sortBy: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
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
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class DescribeTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public class Task : Tea.TeaModel {
            public var createdTime: Int64?

            public var name: String?

            public var progress: Int32?

            public var statusCode: String?

            public var targetName: String?

            public var taskId: String?

            public var updatedTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode!
                }
                if self.targetName != nil {
                    map["TargetName"] = self.targetName!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("StatusCode") && dict["StatusCode"] != nil {
                    self.statusCode = dict["StatusCode"] as! String
                }
                if dict.keys.contains("TargetName") && dict["TargetName"] != nil {
                    self.targetName = dict["TargetName"] as! String
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                    self.updatedTime = dict["UpdatedTime"] as! Int64
                }
            }
        }
        public var task: [DescribeTasksResponseBody.Tasks.Task]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.task != nil {
                var tmp : [Any] = []
                for k in self.task! {
                    tmp.append(k.toMap())
                }
                map["task"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("task") && dict["task"] != nil {
                var tmp : [DescribeTasksResponseBody.Tasks.Task] = []
                for v in dict["task"] as! [Any] {
                    var model = DescribeTasksResponseBody.Tasks.Task()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.task = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var tasks: DescribeTasksResponseBody.Tasks?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tasks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.tasks != nil {
            map["Tasks"] = self.tasks?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
            var model = DescribeTasksResponseBody.Tasks()
            model.fromMap(dict["Tasks"] as! [String: Any])
            self.tasks = model
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTasksResponseBody?

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
            var model = DescribeTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableReplicationRequest : Tea.TeaModel {
    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class DisableReplicationResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DisableReplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableReplicationResponseBody?

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
            var model = DisableReplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableReplicationRequest : Tea.TeaModel {
    public var crashConsistentPointPolicy: String?

    public var recoveryNetwork: String?

    public var replicationNetwork: String?

    public var replicationUseEssd: Bool?

    public var replicationUseSsd: Bool?

    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.crashConsistentPointPolicy != nil {
            map["CrashConsistentPointPolicy"] = self.crashConsistentPointPolicy!
        }
        if self.recoveryNetwork != nil {
            map["RecoveryNetwork"] = self.recoveryNetwork!
        }
        if self.replicationNetwork != nil {
            map["ReplicationNetwork"] = self.replicationNetwork!
        }
        if self.replicationUseEssd != nil {
            map["ReplicationUseEssd"] = self.replicationUseEssd!
        }
        if self.replicationUseSsd != nil {
            map["ReplicationUseSsd"] = self.replicationUseSsd!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CrashConsistentPointPolicy") && dict["CrashConsistentPointPolicy"] != nil {
            self.crashConsistentPointPolicy = dict["CrashConsistentPointPolicy"] as! String
        }
        if dict.keys.contains("RecoveryNetwork") && dict["RecoveryNetwork"] != nil {
            self.recoveryNetwork = dict["RecoveryNetwork"] as! String
        }
        if dict.keys.contains("ReplicationNetwork") && dict["ReplicationNetwork"] != nil {
            self.replicationNetwork = dict["ReplicationNetwork"] as! String
        }
        if dict.keys.contains("ReplicationUseEssd") && dict["ReplicationUseEssd"] != nil {
            self.replicationUseEssd = dict["ReplicationUseEssd"] as! Bool
        }
        if dict.keys.contains("ReplicationUseSsd") && dict["ReplicationUseSsd"] != nil {
            self.replicationUseSsd = dict["ReplicationUseSsd"] as! Bool
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class EnableReplicationResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class EnableReplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableReplicationResponseBody?

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
            var model = EnableReplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FailbackRequest : Tea.TeaModel {
    public var recoveryCpu: Int32?

    public var recoveryInfrastructureId: String?

    public var recoveryInstanceName: String?

    public var recoveryInstanceType: String?

    public var recoveryIpAddress: String?

    public var recoveryMemory: Int64?

    public var recoveryNetwork: String?

    public var recoveryPointId: String?

    public var recoveryPostScriptContent: String?

    public var recoveryPostScriptType: String?

    public var recoveryReserveIp: Bool?

    public var recoveryUseDhcp: Bool?

    public var securityToken: String?

    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recoveryCpu != nil {
            map["RecoveryCpu"] = self.recoveryCpu!
        }
        if self.recoveryInfrastructureId != nil {
            map["RecoveryInfrastructureId"] = self.recoveryInfrastructureId!
        }
        if self.recoveryInstanceName != nil {
            map["RecoveryInstanceName"] = self.recoveryInstanceName!
        }
        if self.recoveryInstanceType != nil {
            map["RecoveryInstanceType"] = self.recoveryInstanceType!
        }
        if self.recoveryIpAddress != nil {
            map["RecoveryIpAddress"] = self.recoveryIpAddress!
        }
        if self.recoveryMemory != nil {
            map["RecoveryMemory"] = self.recoveryMemory!
        }
        if self.recoveryNetwork != nil {
            map["RecoveryNetwork"] = self.recoveryNetwork!
        }
        if self.recoveryPointId != nil {
            map["RecoveryPointId"] = self.recoveryPointId!
        }
        if self.recoveryPostScriptContent != nil {
            map["RecoveryPostScriptContent"] = self.recoveryPostScriptContent!
        }
        if self.recoveryPostScriptType != nil {
            map["RecoveryPostScriptType"] = self.recoveryPostScriptType!
        }
        if self.recoveryReserveIp != nil {
            map["RecoveryReserveIp"] = self.recoveryReserveIp!
        }
        if self.recoveryUseDhcp != nil {
            map["RecoveryUseDhcp"] = self.recoveryUseDhcp!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecoveryCpu") && dict["RecoveryCpu"] != nil {
            self.recoveryCpu = dict["RecoveryCpu"] as! Int32
        }
        if dict.keys.contains("RecoveryInfrastructureId") && dict["RecoveryInfrastructureId"] != nil {
            self.recoveryInfrastructureId = dict["RecoveryInfrastructureId"] as! String
        }
        if dict.keys.contains("RecoveryInstanceName") && dict["RecoveryInstanceName"] != nil {
            self.recoveryInstanceName = dict["RecoveryInstanceName"] as! String
        }
        if dict.keys.contains("RecoveryInstanceType") && dict["RecoveryInstanceType"] != nil {
            self.recoveryInstanceType = dict["RecoveryInstanceType"] as! String
        }
        if dict.keys.contains("RecoveryIpAddress") && dict["RecoveryIpAddress"] != nil {
            self.recoveryIpAddress = dict["RecoveryIpAddress"] as! String
        }
        if dict.keys.contains("RecoveryMemory") && dict["RecoveryMemory"] != nil {
            self.recoveryMemory = dict["RecoveryMemory"] as! Int64
        }
        if dict.keys.contains("RecoveryNetwork") && dict["RecoveryNetwork"] != nil {
            self.recoveryNetwork = dict["RecoveryNetwork"] as! String
        }
        if dict.keys.contains("RecoveryPointId") && dict["RecoveryPointId"] != nil {
            self.recoveryPointId = dict["RecoveryPointId"] as! String
        }
        if dict.keys.contains("RecoveryPostScriptContent") && dict["RecoveryPostScriptContent"] != nil {
            self.recoveryPostScriptContent = dict["RecoveryPostScriptContent"] as! String
        }
        if dict.keys.contains("RecoveryPostScriptType") && dict["RecoveryPostScriptType"] != nil {
            self.recoveryPostScriptType = dict["RecoveryPostScriptType"] as! String
        }
        if dict.keys.contains("RecoveryReserveIp") && dict["RecoveryReserveIp"] != nil {
            self.recoveryReserveIp = dict["RecoveryReserveIp"] as! Bool
        }
        if dict.keys.contains("RecoveryUseDhcp") && dict["RecoveryUseDhcp"] != nil {
            self.recoveryUseDhcp = dict["RecoveryUseDhcp"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class FailbackResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class FailbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FailbackResponseBody?

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
            var model = FailbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ForcedFailoverRequest : Tea.TeaModel {
    public var eipAddressId: String?

    public var recoveryCpu: Int32?

    public var recoveryEssdPerformanceLevel: String?

    public var recoveryInstanceName: String?

    public var recoveryInstanceType: String?

    public var recoveryIpAddress: String?

    public var recoveryMemory: Int64?

    public var recoveryNetwork: String?

    public var recoveryPointId: String?

    public var recoveryPointTime: Int64?

    public var recoveryPostScriptContent: String?

    public var recoveryPostScriptType: String?

    public var recoveryReserveIp: Bool?

    public var recoveryUseDhcp: Bool?

    public var recoveryUseEssd: Bool?

    public var recoveryUseSsd: Bool?

    public var securityToken: String?

    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eipAddressId != nil {
            map["EipAddressId"] = self.eipAddressId!
        }
        if self.recoveryCpu != nil {
            map["RecoveryCpu"] = self.recoveryCpu!
        }
        if self.recoveryEssdPerformanceLevel != nil {
            map["RecoveryEssdPerformanceLevel"] = self.recoveryEssdPerformanceLevel!
        }
        if self.recoveryInstanceName != nil {
            map["RecoveryInstanceName"] = self.recoveryInstanceName!
        }
        if self.recoveryInstanceType != nil {
            map["RecoveryInstanceType"] = self.recoveryInstanceType!
        }
        if self.recoveryIpAddress != nil {
            map["RecoveryIpAddress"] = self.recoveryIpAddress!
        }
        if self.recoveryMemory != nil {
            map["RecoveryMemory"] = self.recoveryMemory!
        }
        if self.recoveryNetwork != nil {
            map["RecoveryNetwork"] = self.recoveryNetwork!
        }
        if self.recoveryPointId != nil {
            map["RecoveryPointId"] = self.recoveryPointId!
        }
        if self.recoveryPointTime != nil {
            map["RecoveryPointTime"] = self.recoveryPointTime!
        }
        if self.recoveryPostScriptContent != nil {
            map["RecoveryPostScriptContent"] = self.recoveryPostScriptContent!
        }
        if self.recoveryPostScriptType != nil {
            map["RecoveryPostScriptType"] = self.recoveryPostScriptType!
        }
        if self.recoveryReserveIp != nil {
            map["RecoveryReserveIp"] = self.recoveryReserveIp!
        }
        if self.recoveryUseDhcp != nil {
            map["RecoveryUseDhcp"] = self.recoveryUseDhcp!
        }
        if self.recoveryUseEssd != nil {
            map["RecoveryUseEssd"] = self.recoveryUseEssd!
        }
        if self.recoveryUseSsd != nil {
            map["RecoveryUseSsd"] = self.recoveryUseSsd!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EipAddressId") && dict["EipAddressId"] != nil {
            self.eipAddressId = dict["EipAddressId"] as! String
        }
        if dict.keys.contains("RecoveryCpu") && dict["RecoveryCpu"] != nil {
            self.recoveryCpu = dict["RecoveryCpu"] as! Int32
        }
        if dict.keys.contains("RecoveryEssdPerformanceLevel") && dict["RecoveryEssdPerformanceLevel"] != nil {
            self.recoveryEssdPerformanceLevel = dict["RecoveryEssdPerformanceLevel"] as! String
        }
        if dict.keys.contains("RecoveryInstanceName") && dict["RecoveryInstanceName"] != nil {
            self.recoveryInstanceName = dict["RecoveryInstanceName"] as! String
        }
        if dict.keys.contains("RecoveryInstanceType") && dict["RecoveryInstanceType"] != nil {
            self.recoveryInstanceType = dict["RecoveryInstanceType"] as! String
        }
        if dict.keys.contains("RecoveryIpAddress") && dict["RecoveryIpAddress"] != nil {
            self.recoveryIpAddress = dict["RecoveryIpAddress"] as! String
        }
        if dict.keys.contains("RecoveryMemory") && dict["RecoveryMemory"] != nil {
            self.recoveryMemory = dict["RecoveryMemory"] as! Int64
        }
        if dict.keys.contains("RecoveryNetwork") && dict["RecoveryNetwork"] != nil {
            self.recoveryNetwork = dict["RecoveryNetwork"] as! String
        }
        if dict.keys.contains("RecoveryPointId") && dict["RecoveryPointId"] != nil {
            self.recoveryPointId = dict["RecoveryPointId"] as! String
        }
        if dict.keys.contains("RecoveryPointTime") && dict["RecoveryPointTime"] != nil {
            self.recoveryPointTime = dict["RecoveryPointTime"] as! Int64
        }
        if dict.keys.contains("RecoveryPostScriptContent") && dict["RecoveryPostScriptContent"] != nil {
            self.recoveryPostScriptContent = dict["RecoveryPostScriptContent"] as! String
        }
        if dict.keys.contains("RecoveryPostScriptType") && dict["RecoveryPostScriptType"] != nil {
            self.recoveryPostScriptType = dict["RecoveryPostScriptType"] as! String
        }
        if dict.keys.contains("RecoveryReserveIp") && dict["RecoveryReserveIp"] != nil {
            self.recoveryReserveIp = dict["RecoveryReserveIp"] as! Bool
        }
        if dict.keys.contains("RecoveryUseDhcp") && dict["RecoveryUseDhcp"] != nil {
            self.recoveryUseDhcp = dict["RecoveryUseDhcp"] as! Bool
        }
        if dict.keys.contains("RecoveryUseEssd") && dict["RecoveryUseEssd"] != nil {
            self.recoveryUseEssd = dict["RecoveryUseEssd"] as! Bool
        }
        if dict.keys.contains("RecoveryUseSsd") && dict["RecoveryUseSsd"] != nil {
            self.recoveryUseSsd = dict["RecoveryUseSsd"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class ForcedFailoverResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ForcedFailoverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ForcedFailoverResponseBody?

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
            var model = ForcedFailoverResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterServersRequest : Tea.TeaModel {
    public var agentPort: Int32?

    public var serverInstancesInfo: String?

    public var sitePairId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentPort != nil {
            map["AgentPort"] = self.agentPort!
        }
        if self.serverInstancesInfo != nil {
            map["ServerInstancesInfo"] = self.serverInstancesInfo!
        }
        if self.sitePairId != nil {
            map["SitePairId"] = self.sitePairId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentPort") && dict["AgentPort"] != nil {
            self.agentPort = dict["AgentPort"] as! Int32
        }
        if dict.keys.contains("ServerInstancesInfo") && dict["ServerInstancesInfo"] != nil {
            self.serverInstancesInfo = dict["ServerInstancesInfo"] as! String
        }
        if dict.keys.contains("SitePairId") && dict["SitePairId"] != nil {
            self.sitePairId = dict["SitePairId"] as! String
        }
    }
}

public class RegisterServersResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class RegisterServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterServersResponseBody?

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
            var model = RegisterServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReversedDisableReplicationRequest : Tea.TeaModel {
    public var securityToken: String?

    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class ReversedDisableReplicationResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReversedDisableReplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReversedDisableReplicationResponseBody?

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
            var model = ReversedDisableReplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReversedEnableReplicationRequest : Tea.TeaModel {
    public var appConsistentPointPolicy: String?

    public var crashConsistentPointPolicy: String?

    public var recoveryNetwork: String?

    public var replicationComputeResource: String?

    public var replicationDatastore: String?

    public var replicationDns: String?

    public var replicationGateway: String?

    public var replicationInfrastructureId: String?

    public var replicationIpAddress: String?

    public var replicationLocation: String?

    public var replicationNetMask: String?

    public var replicationNetwork: String?

    public var replicationUseDhcp: Bool?

    public var replicationUseOriginalInstance: Bool?

    public var securityToken: String?

    public var serverId: String?

    public var shadowInstanceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appConsistentPointPolicy != nil {
            map["AppConsistentPointPolicy"] = self.appConsistentPointPolicy!
        }
        if self.crashConsistentPointPolicy != nil {
            map["CrashConsistentPointPolicy"] = self.crashConsistentPointPolicy!
        }
        if self.recoveryNetwork != nil {
            map["RecoveryNetwork"] = self.recoveryNetwork!
        }
        if self.replicationComputeResource != nil {
            map["ReplicationComputeResource"] = self.replicationComputeResource!
        }
        if self.replicationDatastore != nil {
            map["ReplicationDatastore"] = self.replicationDatastore!
        }
        if self.replicationDns != nil {
            map["ReplicationDns"] = self.replicationDns!
        }
        if self.replicationGateway != nil {
            map["ReplicationGateway"] = self.replicationGateway!
        }
        if self.replicationInfrastructureId != nil {
            map["ReplicationInfrastructureId"] = self.replicationInfrastructureId!
        }
        if self.replicationIpAddress != nil {
            map["ReplicationIpAddress"] = self.replicationIpAddress!
        }
        if self.replicationLocation != nil {
            map["ReplicationLocation"] = self.replicationLocation!
        }
        if self.replicationNetMask != nil {
            map["ReplicationNetMask"] = self.replicationNetMask!
        }
        if self.replicationNetwork != nil {
            map["ReplicationNetwork"] = self.replicationNetwork!
        }
        if self.replicationUseDhcp != nil {
            map["ReplicationUseDhcp"] = self.replicationUseDhcp!
        }
        if self.replicationUseOriginalInstance != nil {
            map["ReplicationUseOriginalInstance"] = self.replicationUseOriginalInstance!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        if self.shadowInstanceType != nil {
            map["ShadowInstanceType"] = self.shadowInstanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppConsistentPointPolicy") && dict["AppConsistentPointPolicy"] != nil {
            self.appConsistentPointPolicy = dict["AppConsistentPointPolicy"] as! String
        }
        if dict.keys.contains("CrashConsistentPointPolicy") && dict["CrashConsistentPointPolicy"] != nil {
            self.crashConsistentPointPolicy = dict["CrashConsistentPointPolicy"] as! String
        }
        if dict.keys.contains("RecoveryNetwork") && dict["RecoveryNetwork"] != nil {
            self.recoveryNetwork = dict["RecoveryNetwork"] as! String
        }
        if dict.keys.contains("ReplicationComputeResource") && dict["ReplicationComputeResource"] != nil {
            self.replicationComputeResource = dict["ReplicationComputeResource"] as! String
        }
        if dict.keys.contains("ReplicationDatastore") && dict["ReplicationDatastore"] != nil {
            self.replicationDatastore = dict["ReplicationDatastore"] as! String
        }
        if dict.keys.contains("ReplicationDns") && dict["ReplicationDns"] != nil {
            self.replicationDns = dict["ReplicationDns"] as! String
        }
        if dict.keys.contains("ReplicationGateway") && dict["ReplicationGateway"] != nil {
            self.replicationGateway = dict["ReplicationGateway"] as! String
        }
        if dict.keys.contains("ReplicationInfrastructureId") && dict["ReplicationInfrastructureId"] != nil {
            self.replicationInfrastructureId = dict["ReplicationInfrastructureId"] as! String
        }
        if dict.keys.contains("ReplicationIpAddress") && dict["ReplicationIpAddress"] != nil {
            self.replicationIpAddress = dict["ReplicationIpAddress"] as! String
        }
        if dict.keys.contains("ReplicationLocation") && dict["ReplicationLocation"] != nil {
            self.replicationLocation = dict["ReplicationLocation"] as! String
        }
        if dict.keys.contains("ReplicationNetMask") && dict["ReplicationNetMask"] != nil {
            self.replicationNetMask = dict["ReplicationNetMask"] as! String
        }
        if dict.keys.contains("ReplicationNetwork") && dict["ReplicationNetwork"] != nil {
            self.replicationNetwork = dict["ReplicationNetwork"] as! String
        }
        if dict.keys.contains("ReplicationUseDhcp") && dict["ReplicationUseDhcp"] != nil {
            self.replicationUseDhcp = dict["ReplicationUseDhcp"] as! Bool
        }
        if dict.keys.contains("ReplicationUseOriginalInstance") && dict["ReplicationUseOriginalInstance"] != nil {
            self.replicationUseOriginalInstance = dict["ReplicationUseOriginalInstance"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
        if dict.keys.contains("ShadowInstanceType") && dict["ShadowInstanceType"] != nil {
            self.shadowInstanceType = dict["ShadowInstanceType"] as! String
        }
    }
}

public class ReversedEnableReplicationResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ReversedEnableReplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReversedEnableReplicationResponseBody?

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
            var model = ReversedEnableReplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TestCleanupRequest : Tea.TeaModel {
    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class TestCleanupResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class TestCleanupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestCleanupResponseBody?

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
            var model = TestCleanupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TestFailoverRequest : Tea.TeaModel {
    public var eipAddressId: String?

    public var recoveryCpu: Int32?

    public var recoveryEssdPerformanceLevel: String?

    public var recoveryInstanceName: String?

    public var recoveryInstanceType: String?

    public var recoveryIpAddress: String?

    public var recoveryMemory: Int64?

    public var recoveryNetwork: String?

    public var recoveryPointId: String?

    public var recoveryPointTime: Int64?

    public var recoveryPostScriptContent: String?

    public var recoveryPostScriptType: String?

    public var recoveryReserveIp: Bool?

    public var recoveryUseDhcp: Bool?

    public var recoveryUseEssd: Bool?

    public var recoveryUseSsd: Bool?

    public var securityToken: String?

    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eipAddressId != nil {
            map["EipAddressId"] = self.eipAddressId!
        }
        if self.recoveryCpu != nil {
            map["RecoveryCpu"] = self.recoveryCpu!
        }
        if self.recoveryEssdPerformanceLevel != nil {
            map["RecoveryEssdPerformanceLevel"] = self.recoveryEssdPerformanceLevel!
        }
        if self.recoveryInstanceName != nil {
            map["RecoveryInstanceName"] = self.recoveryInstanceName!
        }
        if self.recoveryInstanceType != nil {
            map["RecoveryInstanceType"] = self.recoveryInstanceType!
        }
        if self.recoveryIpAddress != nil {
            map["RecoveryIpAddress"] = self.recoveryIpAddress!
        }
        if self.recoveryMemory != nil {
            map["RecoveryMemory"] = self.recoveryMemory!
        }
        if self.recoveryNetwork != nil {
            map["RecoveryNetwork"] = self.recoveryNetwork!
        }
        if self.recoveryPointId != nil {
            map["RecoveryPointId"] = self.recoveryPointId!
        }
        if self.recoveryPointTime != nil {
            map["RecoveryPointTime"] = self.recoveryPointTime!
        }
        if self.recoveryPostScriptContent != nil {
            map["RecoveryPostScriptContent"] = self.recoveryPostScriptContent!
        }
        if self.recoveryPostScriptType != nil {
            map["RecoveryPostScriptType"] = self.recoveryPostScriptType!
        }
        if self.recoveryReserveIp != nil {
            map["RecoveryReserveIp"] = self.recoveryReserveIp!
        }
        if self.recoveryUseDhcp != nil {
            map["RecoveryUseDhcp"] = self.recoveryUseDhcp!
        }
        if self.recoveryUseEssd != nil {
            map["RecoveryUseEssd"] = self.recoveryUseEssd!
        }
        if self.recoveryUseSsd != nil {
            map["RecoveryUseSsd"] = self.recoveryUseSsd!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EipAddressId") && dict["EipAddressId"] != nil {
            self.eipAddressId = dict["EipAddressId"] as! String
        }
        if dict.keys.contains("RecoveryCpu") && dict["RecoveryCpu"] != nil {
            self.recoveryCpu = dict["RecoveryCpu"] as! Int32
        }
        if dict.keys.contains("RecoveryEssdPerformanceLevel") && dict["RecoveryEssdPerformanceLevel"] != nil {
            self.recoveryEssdPerformanceLevel = dict["RecoveryEssdPerformanceLevel"] as! String
        }
        if dict.keys.contains("RecoveryInstanceName") && dict["RecoveryInstanceName"] != nil {
            self.recoveryInstanceName = dict["RecoveryInstanceName"] as! String
        }
        if dict.keys.contains("RecoveryInstanceType") && dict["RecoveryInstanceType"] != nil {
            self.recoveryInstanceType = dict["RecoveryInstanceType"] as! String
        }
        if dict.keys.contains("RecoveryIpAddress") && dict["RecoveryIpAddress"] != nil {
            self.recoveryIpAddress = dict["RecoveryIpAddress"] as! String
        }
        if dict.keys.contains("RecoveryMemory") && dict["RecoveryMemory"] != nil {
            self.recoveryMemory = dict["RecoveryMemory"] as! Int64
        }
        if dict.keys.contains("RecoveryNetwork") && dict["RecoveryNetwork"] != nil {
            self.recoveryNetwork = dict["RecoveryNetwork"] as! String
        }
        if dict.keys.contains("RecoveryPointId") && dict["RecoveryPointId"] != nil {
            self.recoveryPointId = dict["RecoveryPointId"] as! String
        }
        if dict.keys.contains("RecoveryPointTime") && dict["RecoveryPointTime"] != nil {
            self.recoveryPointTime = dict["RecoveryPointTime"] as! Int64
        }
        if dict.keys.contains("RecoveryPostScriptContent") && dict["RecoveryPostScriptContent"] != nil {
            self.recoveryPostScriptContent = dict["RecoveryPostScriptContent"] as! String
        }
        if dict.keys.contains("RecoveryPostScriptType") && dict["RecoveryPostScriptType"] != nil {
            self.recoveryPostScriptType = dict["RecoveryPostScriptType"] as! String
        }
        if dict.keys.contains("RecoveryReserveIp") && dict["RecoveryReserveIp"] != nil {
            self.recoveryReserveIp = dict["RecoveryReserveIp"] as! Bool
        }
        if dict.keys.contains("RecoveryUseDhcp") && dict["RecoveryUseDhcp"] != nil {
            self.recoveryUseDhcp = dict["RecoveryUseDhcp"] as! Bool
        }
        if dict.keys.contains("RecoveryUseEssd") && dict["RecoveryUseEssd"] != nil {
            self.recoveryUseEssd = dict["RecoveryUseEssd"] as! Bool
        }
        if dict.keys.contains("RecoveryUseSsd") && dict["RecoveryUseSsd"] != nil {
            self.recoveryUseSsd = dict["RecoveryUseSsd"] as! Bool
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class TestFailoverResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class TestFailoverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestFailoverResponseBody?

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
            var model = TestFailoverResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerReversedRegisterRequest : Tea.TeaModel {
    public var securityToken: String?

    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class TriggerReversedRegisterResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class TriggerReversedRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerReversedRegisterResponseBody?

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
            var model = TriggerReversedRegisterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnregisterServerRequest : Tea.TeaModel {
    public var securityToken: String?

    public var serverId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("ServerId") && dict["ServerId"] != nil {
            self.serverId = dict["ServerId"] as! String
        }
    }
}

public class UnregisterServerResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnregisterServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnregisterServerResponseBody?

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
            var model = UnregisterServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRecoveryPlanRequest : Tea.TeaModel {
    public var content: String?

    public var name: String?

    public var recoveryPlanId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.recoveryPlanId != nil {
            map["RecoveryPlanId"] = self.recoveryPlanId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RecoveryPlanId") && dict["RecoveryPlanId"] != nil {
            self.recoveryPlanId = dict["RecoveryPlanId"] as! String
        }
    }
}

public class UpdateRecoveryPlanResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpdateRecoveryPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRecoveryPlanResponseBody?

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
            var model = UpdateRecoveryPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
